<%
    out.print("<table border=1>");
    out.print("<h1>Square root</h1><tr>");
    out.print("<th>No.</th><th>Square root</th></tr>");
    for(int i=0;i<=16;i++){
        out.print("<tr><td>");
%>
        <%= i %>
<%      out.print("</td><td>"); %>
        <%= Math.sqrt(i) %>
<%      out.print("</td></tr>"); 
    }
    out.print("</table>");
%>