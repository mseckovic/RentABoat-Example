package rs.ac.rentaboat;

public class Boat {
	private String marka_boat;
	private String model_boat;
	private String godina_proizvodnje;
	private int cena;
	
	public Boat() {}
	public Boat(String _model,String _marka,String _godina,int _cena) {
		this.marka_boat = _marka;
		this.model_boat = _model;
		this.godina_proizvodnje = _godina;
		this.cena = _cena;
	}
	public int getCena() {
		return cena;
	}
	public String getGodina_proizvodnje() {
		return godina_proizvodnje;
	}
	public String getMarka_vozila() {
		return marka_boat;
	}
	public String getModel_vozila() {
		return model_boat;
	}
	public void setCena(int cena) {
		this.cena = cena;
	}
	public void setGodina_proizvodnje(String godina_proizvodnje) {
		this.godina_proizvodnje = godina_proizvodnje;
	}
	public void setMarka_vozila(String marka_vozila) {
		this.marka_boat = marka_vozila;
	}
	public void setModel_vozila(String model_vozila) {
		this.model_boat = model_vozila;
	}
}
