package service;

import dao.ClienteDAO;
import model.Cliente;

public class ClienteService {
	ClienteDAO dao = new ClienteDAO();
	
	public double incluirSaldo(Cliente cliente) {
		return dao.inserirValor(cliente);
	}
}
