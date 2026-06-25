<%@ page import="java.sql.*" %>
<%
String successMsg = "";
%>
<%
if("POST".equalsIgnoreCase(request.getMethod())){

    String sport = request.getParameter("sport");
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String date = request.getParameter("date");
    String slot = request.getParameter("slot");
    String players = request.getParameter("players");
    String ground = request.getParameter("ground");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/sports_db?useSSL=false&serverTimezone=UTC",
            "root",
            "Singh@2024"
        );

        String sql = "INSERT INTO bookings (sport, name, phone, date, slot, players, ground) VALUES (?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement ps = conn.prepareStatement(sql);

        ps.setString(1, sport);
        ps.setString(2, name);
        ps.setString(3, phone);
        ps.setString(4, date);
        ps.setString(5, slot);
        ps.setInt(6, Integer.parseInt(players));
        ps.setString(7, ground);

        int i = ps.executeUpdate();

        if(i > 0){
            successMsg = "✅ Booking Confirmed Successfully!";
        }

    } catch(Exception e){
        successMsg = "❌ Error: " + e.getMessage();
    }
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
