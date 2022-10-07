/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lk.phoenixairline.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import lk.phoenixairline.model.FlightBooking;
import lk.phoenixairline.model.Payment;


public class PaymentDao {

     private String jdbcURL = "jdbc:mysql://localhost:3306/airline?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "1234";

	private static final String INSERT_USERS_SQL = "INSERT INTO payment(bookingId, fullName, email,passportNumber,city,states,zipcode,nameOnCard,creditCardNumber,expMonth,expYear,cvv) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
	private static final String SELECT_FLIGHT_BY_ID = "select bookingId from flightbooking where passportNumber =? limit 1";
	private static final String SELECT_ALL_USERS = "select * from users";
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

    
    public void insert(Payment payment) {
        int bookingNumber=selectBooking(payment.getPassportNumber());
        
        try (Connection connection = getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            		preparedStatement.setInt(1, bookingNumber);
			preparedStatement.setString(2, payment.getFullName());
			preparedStatement.setString(3, payment.getEmail());
			preparedStatement.setInt(4, payment.getPassportNumber());
			preparedStatement.setString(5, payment.getCity());
			preparedStatement.setString(6, payment.getStates());
			preparedStatement.setString(7, payment.getZipcode());
			preparedStatement.setString(8, payment.getNameOnCard());
			preparedStatement.setInt(9, payment.getCreditCardNumber());
			preparedStatement.setString(10, payment.getExpMonth());
			preparedStatement.setString(11, payment.getExpYear());
			preparedStatement.setString(12, payment.getCvv());
                        
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
                    printSQLException(e);
		}
    }
    
    public int selectBooking(int passportNumber) {
		FlightBooking user = null;
                int bookingNumber=0;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_FLIGHT_BY_ID)) {
			preparedStatement.setInt(1, passportNumber);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();
                
			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				 bookingNumber = rs.getInt("bookingId");
				
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
         
		return bookingNumber;
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
}
