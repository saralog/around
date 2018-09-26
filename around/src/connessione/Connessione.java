package connessione;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Connessione {


protected String DRIVER = "org.mariadb.jdbc.Driver";
protected String url = "jdbc:mariadb://localhost:3306/esercizio1lsdb";
protected String user = "root";
protected String psw = "admin";



public Connection connetti(){

Connection con=null;

try
{                   
Class.forName(DRIVER);                 
con = DriverManager.getConnection(url,user,psw);
}
catch(SQLException e)
{
System.out.println(e.getMessage());
}
catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}

return con;

}



public void liberaRisorse(Connection con, Statement st, ResultSet rs){

try
{           
rs.close();           
st.close();
con.close();
}

catch(SQLException e)
{
System.out.println(e.getMessage());
}       

}



}
