package loginPages;
import java.io.IOException;
import java.sql.Connection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/receptLogin")
public class ReceptLogin extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String username = req.getParameter("name");
        String pwd = req.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/user", "root", "root");

                 PreparedStatement ps = con.prepareStatement(
                     "SELECT name FROM user.recpt_login WHERE name = ? AND password = ?")) {

                ps.setString(1, username);
                ps.setString(2, pwd);

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {   // ✅ Login Success

                    HttpSession session = req.getSession();
                    session.setAttribute("user", username);
                    session.setAttribute("role", "staff");  // 🔥 IMPORTANT

                    res.sendRedirect("index.jsp");

                } else {

                    req.setAttribute("errMsg", "Wrong Authentication Please Try Again....");
                    req.getRequestDispatcher("/receptlogin.jsp").forward(req, res);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
