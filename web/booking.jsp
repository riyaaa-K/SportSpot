<%@ page import="java.sql.*" %>
<%@ page contentType="text/plain; charset=UTF-8" %>

<%
try {
    String sport = request.getParameter("sport");
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String date = request.getParameter("date");
    String slot = request.getParameter("slot");
    String players = request.getParameter("players");
    String ground = request.getParameter("ground");
    String price = request.getParameter("price");


    if(name == null || name.isEmpty() ||
       phone == null || phone.isEmpty() ||
       date == null || date.isEmpty()){
        out.print("All fields required");
        return;
    }

    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/sports_db",
        "root",
        "Singh@2024"
    );

    PreparedStatement ps = con.prepareStatement(
    "INSERT INTO bookings (sport, name, phone, date, start_time, end_time, players, ground, payment_method, price) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
);

ps.setString(1, sport);
ps.setString(2, name);
ps.setString(3, phone);
ps.setString(4, date);
ps.setString(5, request.getParameter("start_time"));
ps.setString(6, request.getParameter("end_time"));
ps.setInt(7, Integer.parseInt(players));
ps.setString(8, ground);
ps.setString(9, request.getParameter("payment"));
ps.setString(10, price);
    ps.executeUpdate();

    ps.close();
    con.close();

    out.print("success");

} catch(Exception e){
    out.print("ERROR: " + e.getMessage());
}
%>