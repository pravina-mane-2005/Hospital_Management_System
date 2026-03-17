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

@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String username = req.getParameter("email");
        String pwd = req.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/user", "root", "root");

                 PreparedStatement ps = con.prepareStatement(
                     "SELECT email FROM user.manager_login WHERE email = ? AND password = ?")) {

                ps.setString(1, username);
                ps.setString(2, pwd);

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {   // ✅ login success

                    HttpSession session = req.getSession();
                    session.setAttribute("user", username);
                    session.setAttribute("role", "admin");  // 🔥 IMPORTANT

                    req.getRequestDispatcher("/index.jsp").forward(req, res);

                } else {

                    req.setAttribute("errMsg", "Wrong Authentication or Register First....");
                    req.getRequestDispatcher("/adminLogin.jsp").forward(req, res);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

