import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Configura la respuesta
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Obtiene los parámetros del formulario
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        String usuario = request.getParameter("usuario");
        String contraseña = request.getParameter("contraseña");

        // Conectar a la base de datos
        String jdbcURL = "jdbc:mysql://localhost:3306/sistema_registro"; // Cambia la URL si es necesario
        String dbUser = "root"; // Cambia el usuario si es necesario
        String dbPassword = ""; // Cambia la contraseña si es necesario

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
            String sql = "INSERT INTO usuarios_activos (nombre, apellido, email, telefono, usuario, contraseña) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, nombre);
            statement.setString(2, apellido);
            statement.setString(3, email);
            statement.setString(4, telefono);
            statement.setString(5, usuario);
            statement.setString(6, contraseña);

            // Ejecutar la consulta
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                out.println("<h2>Registro exitoso</h2>");
                out.println("<a href='login.jsp'>Iniciar sesión</a>");
            } else {
                out.println("<h2>Error en el registro</h2>");
            }

            // Cerrar la conexión
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h2>Error en la conexión: " + e.getMessage() + "</h2>");
        } finally {
            out.close();
        }
    }
}