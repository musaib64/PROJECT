
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBC_connectivity {
     
    public static void main(String[] args) throws Exception
    {
    String url = "jdbc:mysql://127.0.0.1:3306/mangementsystem"; // table detail
     String username = "root"; // MySQL credentials
     String password = "1q2w3e4r5asT$";
            
    try{

        Class.forName("com.mysql.cj.jdbc.Driver");
         // Driver name}

        }
    catch(ClassNotFoundException e){
        System.out.println(e);
        }
    try{
    Connection connection = DriverManager.getConnection(url, username, password);
    Statement statement = connection.createStatement();
    String query =String.format("Insert into tourist(tourist_id,tourist_name,toueist_email,tourist_address) Values(%o,'%s','%s','%s')"
    ,1,"astuiopl","syedmusaib","abc",2,"astuyiopl","syedmusaib","abc",3,"astugiopl","syedmusaib","abc",4,"astuioopl","syedmusaib","abc");
    int rowsaffected=statement.executeUpdate(query);
    if (rowsaffected>0){
        System.out.println("data inserted succesfully");
    }    
    else{
        System.out.println("data not inserted");
    }
        }
       
        

        

    
    catch(SQLException e){
        System.out.println(e);
    }
            

    
    }
}
    
    


