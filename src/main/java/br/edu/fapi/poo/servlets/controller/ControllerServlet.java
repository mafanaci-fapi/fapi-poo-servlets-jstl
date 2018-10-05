package br.edu.fapi.poo.servlets.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

@WebServlet(urlPatterns = "/controller")
public class ControllerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doExecute(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doExecute(req, resp);
	}

	protected void doExecute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String acao = req.getParameter("acao");

		if ("exemploIf".equalsIgnoreCase(acao)) {
			req.setAttribute("nome", req.getParameter("nome"));
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/pages/jstl/exemplo_if.jsp");
			requestDispatcher.forward(req, resp);
		} else if ("exemploChoose".equalsIgnoreCase(acao)) {
			req.setAttribute("nome", req.getParameter("nome"));
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/pages/jstl/exemplo_choose.jsp");
			requestDispatcher.forward(req, resp);
		} else if ("exemploFor".equalsIgnoreCase(acao)) {
			List<String> nomes = new ArrayList<>();
			validarNomes(nomes,req.getParameter("nome1"));
			validarNomes(nomes,req.getParameter("nome2"));
			validarNomes(nomes,req.getParameter("nome3"));
			req.setAttribute("nomes", nomes);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/pages/jstl/exemplo_foreach.jsp");
			requestDispatcher.forward(req, resp);
		} else if ("exemploTokens".equalsIgnoreCase(acao)) {
			String nomes = req.getParameter("nome1") + "|" + req.getParameter("nome2") + "|"
					+ req.getParameter("nome3");
			req.setAttribute("nomes", nomes);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/pages/jstl/exemplo_tokens.jsp");
			requestDispatcher.forward(req, resp);
		} else if ("exemploFunctions".equalsIgnoreCase(acao)) {
			List<String> nomes = new ArrayList<>();
			nomes.add(req.getParameter("nome1"));
			nomes.add(req.getParameter("nome2"));
			nomes.add(req.getParameter("nome3"));
			req.setAttribute("nomes", nomes);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/pages/jstl/exemplo_functions.jsp");
			requestDispatcher.forward(req, resp);
		} else {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/main.jsp");
			requestDispatcher.forward(req, resp);
		}

	}

	private void validarNomes(List<String> nomes, String nome) {
		if(StringUtils.isNotBlank(nome)) {
			nomes.add(nome);
		}
	}
	
}
