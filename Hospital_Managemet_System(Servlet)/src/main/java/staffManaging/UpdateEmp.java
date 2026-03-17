package staffManaging;

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

@WebServlet("/updateemp")
public class UpdateEmp extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res) 
            throws ServletException, IOException {
    	   HttpSession session = req.getSession(false);
           if(session == null || !"admin".equals(session.getAttribute("role"))) {
               res.sendRedirect("hospital.jsp"); // unauthorized access redirect
               return;
           }
    	
    	int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("full_name");
        String role = req.getParameter("role");
        String dept = req.getParameter("department");
        String cont = req.getParameter("contact");
        String shift = req.getParameter("shift");
        String payement = req.getParameter("payement_status");
        String join = req.getParameter("date_of_joining");


        try {
          
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/hospital", "root", "root");

            PreparedStatement ps = con.prepareStatement(
                    "UPDATE hospital.staff_data SET full_name = ?, role = ? ,department  = ?,contact = ? , shift = ?, payement_status = ?, date_of_joining = ? WHERE id = ?");

            ps.setString(1, name);
            ps.setString(2, role);
            ps.setString(3, dept);
            ps.setString(4, cont);
            ps.setString(5, shift);
            ps.setString(6, payement);
            ps.setString(7, join);
            ps.setInt(8, id);

            

            int rs = ps.executeUpdate();

            RequestDispatcher rd = req.getRequestDispatcher("selectAllEmp");

          
            rd.include(req, res);

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        
        }
    }
}

