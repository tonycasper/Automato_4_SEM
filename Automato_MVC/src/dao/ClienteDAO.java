package dao;

import java.util.ArrayList;
import java.util.Iterator;

import model.Cliente;

public class ClienteDAO {
	double valorTotal;
	
	public double inserirValor(Cliente cliente) {
		
		ArrayList depositoDeValores = new ArrayList<String>();
		depositoDeValores.add(cliente);
		
		for(Iterator iterator = depositoDeValores.iterator(); iterator.hasNext();) {
			Cliente c = (Cliente)iterator.next();
			double valor = c.getInsercao();
			valorTotal += valor;
		}
		
		return valorTotal; 
	}
}
