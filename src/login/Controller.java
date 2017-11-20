package login;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


@WebServlet(urlPatterns = {"/Controller"}, name = "Controller")
public class Controller extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String _username=request.getParameter("txtusername");
            String _password=request.getParameter("txtpassword");

            try
            {

                if(_username!=null)
                {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bdd", "root", "");
                    String Query="select * from tabllogin where username=? and password=?";
                    PreparedStatement psm=conn.prepareStatement(Query);
                    psm.setString(1, _username);
                    psm.setString(2, _password);
                    ResultSet rs=psm.executeQuery();
                    if(rs.next())
                    {
                        response.sendRedirect("welcome.jsp");
                    }

                    else
                    {
                        out.println("Votre mots de passe est incorrect | Réessayez svp...");
                    }
                }

            }

            catch(Exception ex)
            {
                out.println("Exception :" +ex.getMessage());
            }


        }

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }




}
