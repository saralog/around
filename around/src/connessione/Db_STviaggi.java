package connessione;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
public class Db_STviaggi {
	
	public static ArrayList <STviaggi> elencoIscritti() throws SQLException{
		
		/*connessione mysql*/
		ArrayList<STviaggi> elenco =new ArrayList<STviaggi>();
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
		cn =DriverManager.getConnection("jdbc:mariadb://localhost:3306/esercizio1lsdb?user=root&password=admin&ID=1");
		sql="select * from st_viaggi";

		try {
			st = cn.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()==true){		
				STviaggi a=new STviaggi(rs.getInt("ID_viaggio"),rs.getInt("ID"),rs.getString("nome"),rs.getString("ruolo"),rs.getDate("giornoPartenza"),rs.getString("luogoArrivo"),rs.getString("luogoPartenza"),rs.getString("astronave"),rs.getString("modus"));		
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
	/***/	
public static ArrayList <STviaggi> ViaggiPerIscritto(int ID_isc) throws SQLException{
		
		/*connessione mysql*/
		ArrayList<STviaggi> elenco =new ArrayList<STviaggi>();
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
		cn =DriverManager.getConnection("jdbc:mariadb://localhost:3306/esercizio1lsdb?user=root&password=admin&ID=1");
		sql="select ID_viaggio,luogoPartenza,ID,nome,ruolo from st_viaggi where ID="+ID_isc;

		try {
			st = cn.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()==true){		
				STviaggi a=new STviaggi(0,rs.getInt("ID"),rs.getString("nome"),rs.getString("ruolo"),rs.getDate("giornoPartenza"),rs.getString("luogoArrivo"),rs.getString("luogoPartenza"),rs.getString("astronave"),rs.getString("modus"));		
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
	 * Inserisci un nuovo utente di Spece Trip nella tabella
	 * 
	 * @return
	 * @throws SQLException
	 */
	public static void nuovoViaggio(STviaggi a) {
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
			int ID = a.getId();
			String nome = a.getNome();
			String ruolo = a.getRuolo();
			//String nomestr=nome.toString();
			
			
			
			
			String luogoPartenza = a.getLuogoPartenza();
			//String nomestr=nome.toString();
			String luogoArrivo = a.getLuogoArrivo();
			String astronave = a.getAstronave();
			String modus = a.getModus();
			Calendar data2 = Calendar.getInstance();
			
			data2.setTime(a.getGiornoPartenza());
			
			
			String sqlData2 = data2.get(Calendar.YEAR) + "-" + data2.get(Calendar.MONTH) + "-"
					+ data2.get(Calendar.DAY_OF_MONTH); //2016-12-20
				//Questo sql non inserisce l id che è invece una chiave autoprodotta nel db
			sql = "insert into ST_viaggi (ID,nome,ruolo,giornoPartenza,luogoArrivo,luogoPartenza,astronave,modus) values ('" + ID + "','" + nome + "','" + ruolo+ "','" +sqlData2 + "','"+luogoArrivo + "','"
				+luogoPartenza + "','"+astronave + "','"+modus + "')";
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
	public static void modificaIscritto(STutenti a) {
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
			String ruolo = a.getRuolo();
			//String nomestr=nome.toString();
			String luogoP = a.getLuogoP();
			String luogoD = a.getLuogoD();
			String commento = a.getCommento();
			Calendar data = Calendar.getInstance();
			
			data.setTime(a.getGiornoP());
			
			
			String sqlData = data.get(Calendar.YEAR) + "-" + data.get(Calendar.MONTH) + "-"
					+ data.get(Calendar.DAY_OF_MONTH); //2016-12-20
				//Questo sql non inserisce l id che è invece una chiave autoprodotta nel db
			sql = "insert into ST_utenti (nome, ruolo, giornoP, luogoP, luogoD, commento) values ('" + nome + "','" + ruolo + "','" + sqlData+ "','" 
					+  luogoP + "','" + luogoD +"','" + commento + "')";
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
	 * Elimina un amico nella tabella MySQL
	 * 
	 * @return
	 * @throws SQLException
	 */
	public static void eliminaIscritto(STutenti a) {
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

			sql = "delete from STutenti where id=" + id;
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
		 STutenti nuovoa= new STutenti(0,"primo","esploratore",df.parse("4039-12-13"),"Terra","Encedalus","Primo Esploartore di SpaceTrip");
		 Db_STviaggi.nuovoIscritto (new STutenti(0,"primo","esploratore",df.parse("4039-12-13"),"Terra","Encedalus","Primo Esploartore di SpaceTrip"));

		 /* Database.eliminaAmico(nuovoa);

		 		//Database d=new Database();
		  *  Database.nuovoAmico(nuovoa);
		 Database.nuovoAmico(new Amico(2, "1", "2", df.parse("2016-10-10")));
		 Database.modificaAmico(new Amico(3, "Antonio", "Dall'Armi", df.parse("2000-10-10")));
		 Database.eliminaAmico(new Amico(3, null, null, null));
		System.out.println(Database.elencoAmici());
		System.out.println(df);*/
}


}
