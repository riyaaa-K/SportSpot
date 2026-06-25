<%@ page import="java.sql.*" %>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");

Connection con = null;
PreparedStatement ps = null;
PreparedStatement checkPs = null;
ResultSet rs = null;

try {
    // 1. Load Driver
    Class.forName("com.mysql.cj.jdbc.Driver");

    // 2. Connect to DB
    con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/sports_db", "root", "Singh@2024"
    );

    // 3. Check if email already exists
    String checkQuery = "SELECT * FROM users WHERE email=?";
    checkPs = con.prepareStatement(checkQuery);
    checkPs.setString(1, email);
    rs = checkPs.executeQuery();

    if(rs.next()){
%>
        <script>
            alert("Email already registered!");
            window.location.href="index.jsp";
        </script>
<%
    } else {

        // 4. Insert new user
        String insertQuery = "INSERT INTO users(name, email, password) VALUES (?, ?, ?)";
        ps = con.prepareStatement(insertQuery);
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, password);

        int i = ps.executeUpdate();

        if(i > 0){
            // Optional: auto login after signup
            session.setAttribute("user", name);
%>
            <script>
                alert("Signup Successful!");
                window.location.href="index.jsp";
            </script>
<%
        } else {
%>
            <script>
                alert("Signup Failed!");
                window.location.href="index.jsp";
            </script>
<%
        }
    }

} catch(Exception e){
    out.println("Error: " + e.getMessage());
} finally {
    if(rs != null) rs.close();
    if(ps != null) ps.close();
    if(checkPs != null) checkPs.close();
    if(con != null) con.close();
}
%>