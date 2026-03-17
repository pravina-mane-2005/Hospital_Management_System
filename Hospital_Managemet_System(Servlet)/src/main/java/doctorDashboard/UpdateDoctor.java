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

@WebServlet("/updateDoctor")
public class UpdateDoctor extends HttpServlet {
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
        String name = req.getParameter("name");
        String status = req.getParameter("status");
        String spec = req.getParameter("specialization");
        long phone_no = Long.parseLong(req.getParameter("phone_number"));


        try {
          
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/hospital", "root", "root");

            PreparedStatement ps = con.prepareStatement(
                    "UPDATE doctor_data SET name = ?, status = ? , specialization = ?,phone_number = ? , WHERE id = ?");

            ps.setString(1,name);
            ps.setString(2, status);
            ps.setString(3, spec);
            ps.setLong(4, phone_no);
            ps.setInt(5, id);

            

            int rs = ps.executeUpdate();

            RequestDispatcher rd = req.getRequestDispatcher("selectAllDoctor");

          
            rd.include(req, res);

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        
        }
    }
}

