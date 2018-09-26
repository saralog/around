package connessione;

import java.util.Date;

public class STviaggi {

	int ID_viaggio;
	String luogoPartenza;
	String luogoArrivo;
	Date giornoPartenza;
	String astronave;
	String modus;
	int ID;
	String ruolo;
	String nome;
	


	public STviaggi(int ID_viaggio, int ID, String nome, String ruolo, Date giornoPartenza,String luogoArrivo,String luogoPartenza,String astronave,String modus) {
		
		// TODO Auto-generated constructor stub
		this.ID = ID;
		this.nome = nome;
		this.ruolo = ruolo;
		this.ID_viaggio=ID_viaggio;
		this.giornoPartenza = giornoPartenza;
		this.luogoArrivo=luogoArrivo;		
		this.luogoPartenza=luogoPartenza;
		this.astronave=astronave;
		this.modus=modus;

	
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
public int getId_v() {
	return ID_viaggio;
	}
public void setId_v(int ID_viaggio) {
	this.ID_viaggio = ID_viaggio;
	}

public Date getGiornoPartenza() {
	return giornoPartenza;
	}
public void setGiornoPartenza(Date giornoPartenza) {
	this.giornoPartenza = giornoPartenza;
	}

public String getLuogoArrivo() {
	return luogoArrivo;
	}
public void setLuogoArrivo(String luogoArrivo) {
	this.luogoArrivo = luogoArrivo;
	}
				
public String getLuogoPartenza() {
	return luogoPartenza;
	}
public void setLuogoPartenza(String luogoPartenza) {
	this.luogoPartenza = luogoPartenza;
	}

public String getAstronave() {
	return astronave;
	}
public void setAstronave(String astronave) {
	this.astronave = astronave;
	}

public String getModus() {
	return modus;
	}
public void setModus(String modus) {
	this.modus = modus;
	}
}
