package patientDashboard;

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

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res) 
            throws ServletException, IOException {
    	   HttpSession session = req.getSession(false);
           if (session == null || 
               !( "admin".equals(session.getAttribute("role")) 
               || "doctor".equals(session.getAttribute("role")) 
               || "staff".equals(session.getAttribute("role")) )) {
               res.sendRedirect("hospital.jsp"); // unauthorized user redirect
               return;
           }

        String name = req.getParameter("full_name");
        String dob = req.getParameter("date_of_birth");
        String adr = req.getParameter("address");
        String dis = req.getParameter("disease");
        int bill = Integer.parseInt(req.getParameter("total_bill"));

        try {
          
            Class.forName("com.mysql.cj.jdbc.Driver");

           
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/hospital", "root", "root");

     
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO patient_data (full_name, date_of_birth, address, disease, total_bill) VALUES (?, ?, ?, ?, ?)"
            );

            ps.setString(1, name);
            ps.setString(2, dob);
            ps.setString(3, adr);
            ps.setString(4, dis);
            ps.setInt(5, bill);

            int rowsAffected = ps.executeUpdate();
            
            RequestDispatcher rd = req.getRequestDispatcher("AddPatient.jsp");

     
            if (rowsAffected >= 1) {
                req.setAttribute("Registered", "Patient added successfully!");
            } else {
                req.setAttribute("Unregistered", "Unable to add patient.");
            }

        
            rd.include(req, res);

    
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
    
        }
    }
}
