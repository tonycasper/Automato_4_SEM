package model;

public class Cliente {
	private int id;
	private double Saldo;
	private double insercao;
	private String tipoMoeda;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getSaldo() {
		return Saldo;
	}
	public void setSaldo(double saldo) {
		Saldo = saldo;
	}
	public String getTipoMoeda() {
		return tipoMoeda;
	}
	public void setTipoMoeda(String tipoMoeda) {
		this.tipoMoeda = tipoMoeda;
	}
	public double getInsercao() {
		return insercao;
	}
	public void setInsercao(double insercao) {
		this.insercao = insercao;
	}
}
