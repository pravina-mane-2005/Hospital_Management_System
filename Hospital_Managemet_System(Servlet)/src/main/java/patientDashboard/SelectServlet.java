package patientDashboard;

import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/selectServlet")
public class SelectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    	   HttpSession session = req.getSession(false);
           if (session == null || 
               !( "admin".equals(session.getAttribute("role")) 
               || "doctor".equals(session.getAttribute("role")) 
               || "staff".equals(session.getAttribute("role")) )) {
               res.sendRedirect("hospital.jsp"); // unauthorized user redirect
               return;
           }
    	
        int id = Integer.parseInt(req.getParameter("id"));
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "root");

            PreparedStatement ps = con.prepareStatement("SELECT * FROM patient_data WHERE id=?");
            
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                req.setAttribute("id", rs.getInt("id"));
                req.setAttribute("fullName", rs.getString("full_name"));
                req.setAttribute("dateOfBirth", rs.getString("date_of_birth"));
                req.setAttribute("address", rs.getString("address"));
                req.setAttribute("disease", rs.getString("disease"));
                req.setAttribute("totalBill", rs.getInt("total_bill"));
            }

            RequestDispatcher rd = req.getRequestDispatcher("UpdatePatient.jsp");
            rd.forward(req, res);

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
