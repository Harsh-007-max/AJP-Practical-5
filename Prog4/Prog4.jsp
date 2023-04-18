<%! int click = 0; %>
<h1><%
    click++;
    out.print("Number of clicks: "+click);
%></h1>
<form action="Prog4.jsp">
<input type="submit" value="CLICK">
</form>