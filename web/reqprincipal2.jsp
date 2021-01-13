
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="stud3" class="hvpm.staff.student" />
<jsp:setProperty name="stud3" property="*" />
Insert Result: <%=stud3.reqstatusprincipal()%>
<% 
    response.sendRedirect("home3.jsp");
  
 %>
