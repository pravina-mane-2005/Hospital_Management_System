package doctorDashboard;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/selectAllDoctor")
public class SelectAllDoctor extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	HttpSession session = req.getSession(false);

    	if(session == null || session.getAttribute("role") == null 
    			   || !(session.getAttribute("role").equals("admin") || session.getAttribute("role").equals("doctor"))) {
    			    resp.sendRedirect("hospital.jsp"); 
    			    return;
    			}

        ArrayList<Doctor_Details> doctors = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
            		
                 PreparedStatement ps = con.prepareStatement("SELECT * FROM hospital.doctor_data");
            		
                 ResultSet rs = ps.executeQuery()) {

                while (rs.next()) {
                	Doctor_Details pd = new Doctor_Details(
                            rs.getInt("id"),
                            rs.getString("name"),
                            rs.getString("status"),
                            rs.getString("specialization"),
                            rs.getString("phone_number")
                    );
                	doctors.add(pd);
                }
            }

            req.setAttribute("doctorsList", doctors);
            RequestDispatcher rd = req.getRequestDispatcher("ViewDoctor.jsp");
            rd.forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }
}
