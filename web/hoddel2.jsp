<%-- 
    Document   : staffadd
    Created on : Mar 16, 2018, 1:21:58 AM
    Author     : Asus
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="stud" class="hvpm.staff.student" scope="session" />
<jsp:setProperty name="stud" property="*" />
Insert Result: <%=stud.hoddelete()%>

<% 
    response.sendRedirect("ViewEntries.jsp");
  
 %>
