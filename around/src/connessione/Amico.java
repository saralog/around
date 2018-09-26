package connessione;

import java.util.Date;

public class Amico {
int id;
String nome;
String cognome;
Date dataNascita;



	public Amico(int id, String nome, String cognome, Date dataNascita) {
	super();
	this.id = id;
	this.nome = nome;
	this.cognome = cognome;
	this.dataNascita = dataNascita;
	}
	
	
	public int getId() {
	return id;
	}
	public void setId(int id) {
	this.id = id;
	}
	public String getNome() {
	return nome;
	}
	public void setNome(String nome) {
	this.nome = nome;
	}
	public String getCognome() {
	return cognome;
	}
	public void setCognome(String cognome) {
	this.cognome = cognome;
	}
	public Date getDataNascita() {
	return dataNascita;
	}
	public void setDataNascita(Date dataNascita) {
	this.dataNascita = dataNascita;
	}

	public String toString() {
	return "Amico [id="+id+" nome "+nome+" cognome "+cognome+" data "+dataNascita+"]";
	
}
}
