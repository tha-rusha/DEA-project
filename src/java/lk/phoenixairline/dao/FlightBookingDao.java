
package lk.phoenixairline.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import lk.phoenixairline.model.Customer;
import lk.phoenixairline.model.FlightBooking;


public class FlightBookingDao {
    
     private String jdbcURL = "jdbc:mysql://localhost:3306/airline?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "1234";

	private static final String INSERT_USERS_SQL = "INSERT INTO flightbooking(from_s, to_s, start_s,return_s,adults,child,passportNumber) VALUES (?, ?, ?,?,?,?,?)";
	private static final String SELECT_USER_BY_ID = "select id,name,email,country from users where id =?";
	private static final String SELECT_ALL_FLIGHT = "select * from flightbooking";
	private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
	private static final String UPDATE_USERS_SQL = "update users set name = ?,email= ?, country =? where id = ?;";

        protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

    public void insertBooking(FlightBooking flightBooking) {
         try (Connection connection = getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, flightBooking.getFrom_s());
			preparedStatement.setString(2, flightBooking.getTo_s());
			preparedStatement.setString(3, flightBooking.getStart_s());
			preparedStatement.setString(4, flightBooking.getReturn_s());
			preparedStatement.setInt(5, flightBooking.getAdults());
			preparedStatement.setInt(6, flightBooking.getChild());
			preparedStatement.setInt(7, flightBooking.getPassportNumber());
                        
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
                    printSQLException(e);
		}
    }
    
    private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

    public List<FlightBooking> getFlightDetails() {
        // using try-with-resources to avoid closing resources (boiler plate code)
		List<FlightBooking> flights_list = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_FLIGHT);) {
			
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				
				int bookingId = rs.getInt("bookingId");
				String from_s = rs.getString("from_s");
				String to_s = rs.getString("to_s");
				String start_s = rs.getString("start_s");
				String return_s = rs.getString("return_s");
				int adults = rs.getInt("adults");
				int child = rs.getInt("child");
				int passportNumber = rs.getInt("passportNumber");
				
				flights_list.add(new FlightBooking(bookingId, from_s, to_s, start_s, return_s, adults, child, passportNumber));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return flights_list;
    }
    
    
    
}
