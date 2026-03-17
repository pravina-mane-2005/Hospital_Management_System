package loginPages;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/doctorLogin")
public class DoctorLogin extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String username = req.getParameter("doctor_name");
        String pwd = req.getParameter("doctor_password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/user", "root", "root");

                 PreparedStatement ps = con.prepareStatement(
                    "SELECT doctor_name FROM user.doctor_login WHERE doctor_name = ? AND doctor_password = ?")) {

                ps.setString(1, username);
                ps.setString(2, pwd);

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {   

                    HttpSession session = req.getSession();
                    session.setAttribute("user", username);
                    session.setAttribute("role", "doctor");

                    res.sendRedirect("index.jsp");

                } else {

                    req.setAttribute("errMsg", "Wrong Authentication or Register First....");
                    req.getRequestDispatcher("/doctorlogin.jsp").forward(req, res);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}


