import com.mysql.cj.jdbc.Driver;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class JDBCTest {

    private static List<String> getEmployeeFirstName(int numberOfNames){
        List<String> names = new ArrayList<>();
        try{
            DriverManager.registerDriver(new Driver());
            Connection conn  = DriverManager.getConnection(
                    "jdbc:mysql://localhost/codeup_test_db?serverTimezone=UTC&useSSL=false",
                    "root",
                    "codeup"

            );
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery
                    ("SELECT * FROM employees.employees LIMIT 10");
            while (rs.next()) {
                names.add(rs.getString(1));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return names;
    }
}
