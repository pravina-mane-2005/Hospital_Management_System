package staffManaging;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/selectAllEmp")
public class SelectAllEmp extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	   HttpSession session = req.getSession(false);
           if(session == null || !"admin".equals(session.getAttribute("role"))) {
               resp.sendRedirect("hospital.jsp"); // unauthorized access redirect
               return;
           }

        ArrayList<Employoee_Details> emp = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
            		
                 PreparedStatement ps = con.prepareStatement("SELECT * FROM hospital.staff_data");
            		
                 ResultSet rs = ps.executeQuery()) {

                while (rs.next()) {
                	Employoee_Details pd = new Employoee_Details(
                            rs.getInt("id"),
                            rs.getString("full_name"),
                            rs.getString("role"),
                            rs.getString("department"),
                            rs.getString("contact"),
                            rs.getString("shift"),
                            rs.getString("payement_status"),
                            rs.getString("date_of_joining")
                          
                    );
                	emp.add(pd);
                }
            }

            req.setAttribute("empList", emp);
            RequestDispatcher rd = req.getRequestDispatcher("ViewEmp.jsp");
            rd.forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }
}
