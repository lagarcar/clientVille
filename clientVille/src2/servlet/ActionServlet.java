package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blo.Ville;

@SuppressWarnings("serial")
@WebServlet("/ActionServlet")
public class ActionServlet extends HttpServlet {
	private static final String VUE_FORM = "result.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nomVille1 = request.getParameter("ville1");
		String nomVille2 = request.getParameter("ville2");
		System.out.println(nomVille1);
		System.out.println(nomVille2);
		HttpSession session2 = request.getSession();
		Ville[] villes = (Ville[]) session2.getAttribute("villes");
		
		for(int i=0;i<villes.length;i++) {
			System.out.println(villes[i].getNom_commune());

		}
	Ville ville1 = chercherVille(nomVille1, villes);
	Ville ville2 = chercherVille(nomVille2, villes);
	System.out.println(ville1);
	System.out.println(ville2);
		double distance = getDistanceFromLatLonInKm(Double.valueOf(ville1.getLatitude()), Double.valueOf(ville1.getLongitude()),
													Double.valueOf(ville2.getLatitude()), Double.valueOf(ville2.getLongitude()));
		
		session2.setAttribute("distance", distance);
		request.getRequestDispatcher(VUE_FORM).forward(request, response);
		return;
	}

	private Ville chercherVille(String chaine, Ville[] liste) {
		Ville ville2 = null;
		for (Ville ville : liste) {
			if (ville.getNom_commune().toUpperCase().contains(chaine.toUpperCase())) {
				ville2 = ville;
				System.out.println(ville2);
			}
		}
		return ville2;
	}

	private double getDistanceFromLatLonInKm(double lat1, double lon1, double lat2, double lon2) {
		double R = 6371; // Radius of the earth in km
		double dLat = deg2rad(lat2 - lat1); // deg2rad below
		double dLon = deg2rad(lon2 - lon1);
		double a = Math.sin(dLat / 2) * Math.sin(dLat / 2)
				+ Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.sin(dLon / 2) * Math.sin(dLon / 2);
		double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
		double d = R * c; // Distance in km
		return d;
	}

	private double deg2rad(double deg) {
		  return deg * (Math.PI/180);
		}

}
