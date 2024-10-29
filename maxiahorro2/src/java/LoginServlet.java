import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombreUsuario = request.getParameter("nombre_usuario");
        String contraseña = request.getParameter("contraseña");

        String url = "jdbc:mysql://localhost:3306/sistema_registro";
        String user = "root";
        String password = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, user, password);

            String sql = "SELECT * FROM usuarios_activos WHERE usuario = ? AND contraseña = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, nombreUsuario);
            statement.setString(2, contraseña);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // Redirigir a index.jsp si las credenciales son válidas
                response.sendRedirect("index.jsp");
            } else {
                // Manejar el caso de credenciales inválidas (opcional)
                response.getWriter().println("Credenciales inválidas. Intenta nuevamente.");
            }

            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error en la conexión: " + e.getMessage());
        }
    }
}
