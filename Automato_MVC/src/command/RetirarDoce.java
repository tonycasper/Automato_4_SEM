package command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RetirarDoce implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		double valor = 0;

		String pValor = request.getParameter("valor");

		try {
			valor = Integer.parseInt(pValor);
		} catch (NumberFormatException e) {
		}

		RequestDispatcher view = null;
		HttpSession session = request.getSession();

		double saldoTotal;
		double valorDaSession = (double) session.getAttribute("saldo");

		saldoTotal = valorDaSession - valor;

		session.setAttribute("saldo", saldoTotal);

		view = request.getRequestDispatcher("index.jsp");

		view.forward(request, response);

	}

}
