<%@ page import="java.sql.*" %>
<%@ page contentType="text/plain" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String message = request.getParameter("message");

    // Basic validation
    if(name == null || name.isEmpty() || email == null || email.isEmpty() || message == null || message.isEmpty()){
        out.print("All required fields must be filled!");
        return;
    }

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sports_db", "root", "Singh@2024");
        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO contact_us (name, email, phone, message) VALUES (?, ?, ?, ?)"
        );
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, phone);
        ps.setString(4, message);
        ps.executeUpdate();
        ps.close();
        con.close();

        out.print("success"); // AJAX checks this
    } catch(Exception e) {
        out.print(e.getMessage()); // send error back to page
    }
%>