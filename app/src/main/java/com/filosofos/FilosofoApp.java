import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class FilosofoApp {
    public static void main(String[] args) {
        // Cargar las variables de entorno
        String dbHost = System.getenv("DB_HOST");
        String dbPort = System.getenv("DB_PORT");
        String dbName = System.getenv("MYSQL_DATABASE");
        String dbUser = System.getenv("MYSQL_USER");
        String dbPassword = System.getenv("MYSQL_PASSWORD");

        // Construir la URL de conexión a la base de datos
        String dbUrl = "jdbc:mysql://" + dbHost + ":" + dbPort + "/" + dbName;

        // Intentar establecer la conexión a la base de datos
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
            // Consulta SQL para seleccionar los nombres de los filósofos
            String sqlQuery = "SELECT DISTINCT nombre FROM filosofos_citas";

            // Preparar la consulta
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);

            // Ejecutar la consulta para obtener la lista de filósofos
            ResultSet resultSet = preparedStatement.executeQuery();

            // Mostrar la lista de filósofos disponibles
            System.out.println("Lista de filósofos disponibles:");
            while (resultSet.next()) {
                String nombreFilosofo = resultSet.getString("nombre");
                System.out.println(nombreFilosofo);
            }

            // Solicitar al usuario que introduzca el nombre de un filósofo
            Scanner scanner = new Scanner(System.in);
            System.out.print("Elija un filósofo de la lista escribiendo su nombre: ");
            String filosofoElegido = scanner.nextLine();

            // Consulta SQL para seleccionar una cita aleatoria del filósofo elegido
            String sqlCitaAleatoria = "SELECT cita FROM filosofos_citas WHERE nombre = ? ORDER BY RAND() LIMIT 1";

            // Preparar la consulta
            PreparedStatement preparedStatementCita = connection.prepareStatement(sqlCitaAleatoria);
            preparedStatementCita.setString(1, filosofoElegido);

            // Ejecutar la consulta para obtener una cita aleatoria
            ResultSet resultSetCita = preparedStatementCita.executeQuery();

            // Mostrar la cita aleatoria del filósofo elegido
            if (resultSetCita.next()) {
                String citaAleatoria = resultSetCita.getString("cita");
                System.out.println("\nCita de " + filosofoElegido + ":");
                System.out.println(citaAleatoria);
            } else {
                System.out.println("\nNo se encontraron citas para " + filosofoElegido);
            }

            // Cerrar recursos
            resultSetCita.close();
            preparedStatementCita.close();
            preparedStatement.close();
            connection.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

