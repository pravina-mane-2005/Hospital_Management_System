package staffManaging;

import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/selectemp")
public class SelectEmp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    	   HttpSession session = req.getSession(false);
           if(session == null || !"admin".equals(session.getAttribute("role"))) {
               res.sendRedirect("hospital.jsp"); // unauthorized access redirect
               return;
           }
    	
        int id = Integer.parseInt(req.getParameter("id"));
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "root");

            PreparedStatement ps = con.prepareStatement("SELECT * FROM staff_data WHERE id=?");
            
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                req.setAttribute("id", rs.getInt("id"));
                req.setAttribute( "full_name" ,rs.getString("full_name"));
                req.setAttribute( "role" ,rs.getString("role"));
                req.setAttribute( "department" ,rs.getString("department"));
                req.setAttribute( "contact" ,rs.getString("contact"));
                req.setAttribute( "shift" ,rs.getString("shift"));
                req.setAttribute( "payement_status" ,rs.getString("payement_status"));
                req.setAttribute( "date_of_joining" ,rs.getString("date_of_joining"));

            }

            RequestDispatcher rd = req.getRequestDispatcher("UpdateEmp.jsp");
            rd.forward(req, res);

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
