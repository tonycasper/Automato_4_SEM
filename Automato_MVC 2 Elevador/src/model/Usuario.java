package model;

public class Usuario {
	private int id;
	private int andarUsuario;
	private String nomeUsuario;
	private String andarUsuarioVai;
	private model.Andar Andar;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAndarUsuario() {
		return andarUsuario;
	}
	public void setAndarUsuario(int andarUsuario) {
		this.andarUsuario = andarUsuario;
	}
	public String getNomeUsuario() {
		return nomeUsuario;
	}
	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}
	public String getAndarUsuarioVai() {
		return andarUsuarioVai;
	}
	public void setAndarUsuarioVai(String andarUsuarioVai) {
		this.andarUsuarioVai = andarUsuarioVai;
	}
	public model.Andar getAndar() {
		return Andar;
	}
	public void setAndar(model.Andar andar) {
		Andar = andar;
	}
	
	
}
