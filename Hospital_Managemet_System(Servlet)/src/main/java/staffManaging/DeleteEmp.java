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

@WebServlet("/deleteemp")
public class DeleteEmp extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
    	   HttpSession session = req.getSession(false);
           if(session == null || !"admin".equals(session.getAttribute("role"))) {
               res.sendRedirect("hospital.jsp"); // unauthorized access redirect
               return;
           }
    	
    	 int id = Integer.parseInt(req.getParameter("id"));

        try {
     
            Class.forName("com.mysql.cj.jdbc.Driver");

      
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/hospital", "root", "root");

       
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM hospital.staff_data WHERE id=?");
            ps.setInt(1, id);

            int rowsAffected = ps.executeUpdate();
            
            RequestDispatcher rd = req.getRequestDispatcher("selectAllEmp");

            rd.include(req, res);

      
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
     
        }
    }
}
