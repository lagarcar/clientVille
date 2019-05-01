package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.client.RestTemplate;

/**
 * Servlet implementation class AfficherServlet
 */
@WebServlet("/AfficherServlet")
public class AfficherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE_FORM = "accueil.html";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AfficherServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String codeInsee = request.getParameter("codeInsee");
		String nomCommne = request.getParameter("nomCommune");
		String codePostal = request.getParameter("codePostal");
		String libelles = request.getParameter("libelles");
		String ligne5 = request.getParameter("ligne5");
		String latitude = request.getParameter("latitude");
		String longitude = request.getParameter("longitude");

		System.out.println("toto");
		System.out.println(codeInsee);
		System.out.println(nomCommne);
		System.out.println(codePostal);
		System.out.println(libelles);
		System.out.println(ligne5);
		System.out.println(latitude);
		System.out.println(longitude);

		/* update BDD */
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.put(
				"http://localhost:8080/put?value=" + codeInsee + "&value2=" + nomCommne + "&value3=" + codePostal
						+ "&value4=" + libelles + "&value5=" + ligne5 + "&value6=" + latitude + "&value7=" + longitude,null);
		request.getRequestDispatcher(VUE_FORM).forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
