package model;

import java.io.Serializable;

public class Doce {
	private static final long serialVersionUID = 1L;
	private String nome;
	private double valor;
	
	public Doce() {
		
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}
}
