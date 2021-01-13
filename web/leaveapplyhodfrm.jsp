<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="stud3" class="hvpm.staff.staff" />
<jsp:setProperty name="stud3" property="*" />
Insert Result: <%=stud3.leaveaddhod()%>

<% 
    
    response.sendRedirect("home2.jsp");
  
 %>
  