<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");

Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

try {
    // Load MySQL Driver
    Class.forName("com.mysql.cj.jdbc.Driver");

    // Connect to Database
    con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/sports_db", "root", "Singh@2024"
    );

    // SQL Query
    String query = "SELECT * FROM users WHERE email=? AND password=?";
    ps = con.prepareStatement(query);
    ps.setString(1, email);
    ps.setString(2, password);

    rs = ps.executeQuery();

    if(rs.next()) {
        // Login success
        String name = rs.getString("name");

        // Create session
        session.setAttribute("user", name);

        // Redirect to homepage
        response.sendRedirect("index.jsp");
    } else {
        // Login failed
%>
        <script>
            alert("Invalid Email or Password!");
            window.location.href="index.jsp";
        </script>
<%
    }

} catch(Exception e) {
    out.println("Error: " + e.getMessage());
} finally {
    if(rs != null) rs.close();
    if(ps != null) ps.close();
    if(con != null) con.close();
}
%>