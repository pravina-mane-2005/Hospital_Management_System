package patientDashboard;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/selectAllPatient")
public class SelectAllServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	   HttpSession session = req.getSession(false);
           if (session == null || 
               !( "admin".equals(session.getAttribute("role")) 
               || "doctor".equals(session.getAttribute("role")) 
               || "staff".equals(session.getAttribute("role")) )) {
               resp.sendRedirect("hospital.jsp"); // unauthorized user redirect
               return;
           }

        ArrayList<Patient_Details> patients = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
            		
                 PreparedStatement ps = con.prepareStatement("SELECT * FROM hospital.patient_data");
            		
                 ResultSet rs = ps.executeQuery()) {

                while (rs.next()) {
                    Patient_Details pd = new Patient_Details(
                            rs.getInt("id"),
                            rs.getString("full_name"),
                            rs.getString("date_of_birth"),
                            rs.getString("address"),
                            rs.getString("disease"),
                            rs.getInt("total_bill")
                    );
                    patients.add(pd);
                }
            }

            req.setAttribute("patientsList", patients);
            RequestDispatcher rd = req.getRequestDispatcher("ViewPatient.jsp");
            rd.forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }
}
