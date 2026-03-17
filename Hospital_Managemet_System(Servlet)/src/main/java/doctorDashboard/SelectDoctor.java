package doctorDashboard;

import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/selectDoctor")
public class SelectDoctor extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    	HttpSession session = req.getSession(false);

    	if(session == null || session.getAttribute("role") == null 
    	   || !session.getAttribute("role").equals("admin")) {
    	    res.sendRedirect("hospital.jsp"); // login / error page
    	    return;
    	}
    	
        int id = Integer.parseInt(req.getParameter("id"));
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "root");

            PreparedStatement ps = con.prepareStatement("SELECT * FROM doctor_data WHERE id=?");
            
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                req.setAttribute("id", rs.getInt("id"));
                req.setAttribute("name", rs.getString("name"));
                req.setAttribute("status", rs.getString("status"));
                req.setAttribute("specialization", rs.getString("specialization"));
                req.setAttribute("phone_number", rs.getString("phone_number"));
            }

            RequestDispatcher rd = req.getRequestDispatcher("UpdateDoctor.jsp");
            rd.forward(req, res);

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
