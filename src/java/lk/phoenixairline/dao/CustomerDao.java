package lk.phoenixairline.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import lk.phoenixairline.model.Customer;


public class CustomerDao {

    private String jdbcURL = "jdbc:mysql://localhost:3306/airline?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "1234";

	private static final String INSERT_USERS_SQL = "INSERT INTO customer(customerName, email, passportNumber,address,gender,mobile,password,userRole) VALUES (?, ?, ?,?,?,?,?,?)";
	private static final String SELECT_USER_BY_ID = "select id,name,email,country from users where id =?";
	private static final String SELECT_ALL_CUSTOMER = "select * from customer where userRole=?";
	private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
	private static final String UPDATE_USERS_SQL = "update users set name = ?,email= ?, country =? where id = ?;";

	public CustomerDao() {
	}

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
        
        public List<Customer> selectAllUsers(String role) {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Customer> users = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);) {
			preparedStatement.setString(1, role);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				
				String customerName = rs.getString("customerName");
				String email = rs.getString("email");
				String passportNumber = rs.getString("passportNumber");
				String address = rs.getString("address");
				String gender = rs.getString("gender");
				String mobile = rs.getString("mobile");
				
				users.add(new Customer(0, customerName, email, passportNumber, address, gender, Integer.parseInt(mobile), "", ""));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return users;
	}
    
    public void registerCustomer(Customer customer) {
        try (Connection connection = getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, customer.getCustomerName());
			preparedStatement.setString(2, customer.getEmail());
			preparedStatement.setInt(3, Integer.parseInt(customer.getPassportNumber()));
			preparedStatement.setString(4, customer.getAddress());
			preparedStatement.setString(5, customer.getGender());
			preparedStatement.setInt(6, customer.getMobile());
			preparedStatement.setString(7, customer.getPassword());
			preparedStatement.setString(8, customer.getRole());
			System.out.println(preparedStatement);
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

    public void getAllClient() {
        
    }
   
}
