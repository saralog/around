package connessione;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

//import org.apache.commons.lang3.*;
//import org.apache.commons.text.*;
//import org.apache.commons.text.translate;
public class Database {
	
	public static ArrayList <Amico> elencoAmici() throws SQLException{
		
		/*connessione mysql*/
		ArrayList<Amico> elenco =new ArrayList<Amico>();
		Connection cn;
		Statement st;
		ResultSet rs;
		String sql;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
	
		} 
			catch(ClassNotFoundException e) {
				System.out.println("errore:" + e.getMessage());
				e.printStackTrace();
		}
		cn =DriverManager.getConnection("jdbc:mariadb://localhost:3306/esercizio1lsdb?user=root&password=admin");
		sql="select id,nome,cognome,dataNascita from Amico;";

		try {
			st = cn.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()==true){		
				Amico a=new Amico(rs.getInt("id"),rs.getString("nome"),rs.getString("cognome"),rs.getDate("dataNascita"));		
				elenco.add(a);
			}
			
			cn.close(); // chiusura connessione
		
		} 	catch(SQLException e) {
			System.out.println("errore:" + e.getMessage());
			e.printStackTrace();
			
		}
		
		
		/*connessione mysql*/

		
		return elenco;	
	}
	/**
	 * Inserisci un nuovo amico nella tabella
	 * 
	 * @return
	 * @throws SQLException
	 */
	public static void nuovoAmico(Amico a) {
		Connection cn;
		Statement st;
		String sql;
		// ________________________________connessione
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("ClassNotFoundException: ");
			System.err.println(e.getMessage());
		} // fine try-catch

		try {
			// Creo la connessione al database
			cn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/esercizio1lsdb?user=root&password=admin");

			String nome = a.getNome();
			//String nomestr=nome.toString();
			String cognome = a.getCognome();
			Calendar data = Calendar.getInstance();
			data.setTime(a.getDataNascita());
			String sqlData = data.get(Calendar.YEAR) + "-" + data.get(Calendar.MONTH) + "-"
					+ data.get(Calendar.DAY_OF_MONTH); //2016-12-20
				//Questo sql non inserisce l id che è invece una chiave autoprodotta nel db
			sql = "insert into amico (nome, cognome, dataNascita) values ('" + nome + "','" + cognome + "','" + sqlData
					+ "')";
			System.out.println(sql);
			// ________________________________query

			st = cn.createStatement(); // creo sempre uno statement sulla
										// connessione
			st.execute(sql); // faccio la query su uno statement
			cn.close(); // chiusura connessione
		} catch (SQLException e) {
			System.out.println("errore:" + e.getMessage());
		} // fine try-catch

	}

	/**
	 * Modifica un amico nella tabella MySQL
	 * 
	 * @return
	 * @throws SQLException
	 */
	public static void modificaAmico(Amico a) {
		Connection cn;
		Statement st;
		String sql;
		// ________________________________connessione
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("ClassNotFoundException: ");
			System.err.println(e.getMessage());
		} // fine try-catch
		try {
			// Creo la connessione al database
			cn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/esercizio1lsdb?user=root&password=admin");

			// Inserisco nelle variabili i valori da modificare
			int id = a.getId();
			String nome = a.getNome();
			String cognome = a.getCognome();
			Calendar data = Calendar.getInstance();
			data.setTime(a.getDataNascita());
			String sqlData = data.get(Calendar.YEAR) + "-" + data.get(Calendar.MONTH) + "-"
					+ data.get(Calendar.DAY_OF_MONTH);

			sql = "update amico set nome='" + nome + "', cognome = '" + cognome + "', dataNascita='" + sqlData
					+ "' where id=" + id;
			System.out.println(sql); // stampa la query
			// ________________________________query

			st = cn.createStatement(); // creo sempre uno statement sulla
										// connessione
			st.execute(sql); // faccio la query su uno statement
			cn.close(); // chiusura connessione
		} catch (SQLException e) {
			System.out.println("errore:" + e.getMessage());
		} // fine try-catch

	}

	/**
	 * Elimina un amico nella tabella MySQL
	 * 
	 * @return
	 * @throws SQLException
	 */
	public static void eliminaAmico(Amico a) {
		Connection cn;
		Statement st;
		String sql;
		// ________________________________connessione
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("ClassNotFoundException: ");
			System.err.println(e.getMessage());
		} // fine try-catch
		try {
			// Creo la connessione al database
			cn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/esercizio1lsdb?user=root&password=admin");

			// Recupero l'id. Se volessi fare altri controlli potrei recuperare
			// anche gli altri valori
			int id = a.getId();

			sql = "delete from amico where id=" + id;
			System.out.println(sql); // stampa la query
			// ________________________________query

			st = cn.createStatement(); // creo sempre uno statement sulla
										// connessione
			st.execute(sql); // faccio la query su uno statement
			cn.close(); // chiusura connessione
		} catch (SQLException e) {
			System.out.println("errore:" + e.getMessage());
		} // fine try-catch

	}

	public static void main(String[] args) throws SQLException, ParseException {
		java.text.DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		 Amico nuovoa= new Amico(3,"P\\'rsefo","Div\\'te",df.parse("0039-12-13"));
		 Database.eliminaAmico(nuovoa);

		 /*		//Database d=new Database();
		  *  Database.nuovoAmico(nuovoa);
		 Database.nuovoAmico(new Amico(2, "1", "2", df.parse("2016-10-10")));
		 Database.modificaAmico(new Amico(3, "Antonio", "Dall'Armi", df.parse("2000-10-10")));
		 Database.eliminaAmico(new Amico(3, null, null, null));
		System.out.println(Database.elencoAmici());
		System.out.println(df);*/
}

}
