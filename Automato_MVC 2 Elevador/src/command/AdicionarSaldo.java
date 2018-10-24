package command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cliente;
import service.ClienteService;

public class AdicionarSaldo implements Command {
	int valor;

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String pValor = request.getParameter("valor");
		try {
			valor = Integer.parseInt(pValor);
		} catch (NumberFormatException e) {
		}
		
		Cliente cliente = new Cliente();
		cliente.setInsercao(valor);
		
		ClienteService cs = new ClienteService();
		
		RequestDispatcher view = null;
		HttpSession session = request.getSession();
		
		double saldoTotal = cs.incluirSaldo(cliente);
		
		if(session.getAttribute("saldo") != null) {
			double valorDaSession = (double) session.getAttribute("saldo");
			saldoTotal += valorDaSession;
		}
		
		session.setAttribute("saldo", saldoTotal);
		
		view = request.getRequestDispatcher("index.jsp");
		
		view.forward(request, response);
	}

}