package connessione;
import java.util.Date;
public class STutenti {
	int ID;
	String nome;
	String ruolo;
	Date giornoP;
	String luogoP;
	String luogoD;
	String commento;

	public STutenti(int ID, String nome, String ruolo, Date giornoP, String luogoP ,String luogoD,String commento ) {
		super();
		this.ID = ID;
		this.nome = nome;
		this.ruolo = ruolo;
		this.giornoP = giornoP;
		this.luogoP = luogoP;
		this.luogoD = luogoD;
		this.commento=commento;
	}
	public int getId() {
		return ID;
		}
		public void setId(int ID) {
		this.ID = ID;
		}
	public String getNome() {
		return nome;
			}
	public void setNome(String nome) {
		this.nome = nome;
			}
	public String getRuolo() {
		return ruolo;
		}
	public void setRuolo(String ruolo) {
		this.ruolo = ruolo;
		}
	public Date getGiornoP() {
		return giornoP;
			}
	public void setGiornoP(Date giornoP) {
		this.giornoP = giornoP;
			}
			
	
			public String getLuogoP() {
				return luogoP;
					}
			public void setLuogoP(String luogoP) {
				this.luogoP = luogoP;
					}
			public String getLuogoD() {
				return luogoD;
					}
			public void setLuogoD(String luogoD) {
				this.luogoD = luogoD;
					}
			public String getCommento() {
				return commento;
					}
			public void setCommento(String commento) {
				this.commento = commento;
					}
			public String toString() {
				return "Amico [id="+ID+" nome "+nome+" ruolo "+ruolo+" data "+giornoP+"luogo partenza"+luogoP+"luogo destinazione"+luogoD+"commento"+commento+"]";
					
				}
		
}



