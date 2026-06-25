<%
    session.invalidate();
%>

<script>
    alert("Logged out successfully!");
    window.location.href = "index.jsp";
</script>