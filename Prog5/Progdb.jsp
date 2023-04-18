<%@ page import="java.sql.*"%>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/Login","root","");
        Statement s = conn.createStatement();
        ResultSet rs = s.executeQuery("SELECT * FROM Login");
        String name = request.getParameter("userName");
        String password = request.getParameter("password");
        while(rs.next()){
            if(name.equals(rs.getString("Uname"))&&password.equals(rs.getString("Password"))){
                out.print("Login Successful");
            }else{
                response.sendRedirect("Prog5.jsp");
            }
        }
    }catch(Exception e){
        e.printStackTrace();
    }
%>