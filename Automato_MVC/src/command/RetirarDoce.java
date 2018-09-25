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
		boolean valorValido = false;
		String pValor = request.getParameter("valor");

		try {
			valor = Integer.parseInt(pValor);
		} catch (NumberFormatException e) {
		}

		RequestDispatcher view = null;
		HttpSession session = request.getSession();

		
		String doce = "";
		
		if(valor == 6 ) {
			doce = "A";
			valorValido = true;
		}else if(valor == 7){
			doce = "B";
			valorValido = true;
		}else if(valor == 8) {
			doce = "C";
			valorValido = true;
		}
		
		session.setAttribute("doce", doce);
		
		double saldoTotal;
		
		double valorDaSession = (double) session.getAttribute("saldo");

		saldoTotal = valorDaSession - valor;

		session.setAttribute("saldo", saldoTotal);
		
		if (valorValido == true) {
			view = request.getRequestDispatcher("troco.jsp");
		}else {
			view = request.getRequestDispatcher("index.jsp");
		}
		
		
				
		view.forward(request, response);

	}

}
