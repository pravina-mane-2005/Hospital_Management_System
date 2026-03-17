package doctorDashboard;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/deletedoctor")
public class DeleteDoctor extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
    	HttpSession session = req.getSession(false);

    	if(session == null || session.getAttribute("role") == null 
    	   || !session.getAttribute("role").equals("admin")) {
    	    res.sendRedirect("hospital.jsp"); // login / error page
    	    return;
    	}
    	
    	 int id = Integer.parseInt(req.getParameter("id"));

        try {
     
            Class.forName("com.mysql.cj.jdbc.Driver");

      
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/hospital", "root", "root");

       
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM hospital.doctor_data WHERE id=?");
            ps.setInt(1, id);

            int rowsAffected = ps.executeUpdate();
            
            RequestDispatcher rd = req.getRequestDispatcher("selectAllDoctor");

            rd.include(req, res);

      
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
     
        }
    }
}
