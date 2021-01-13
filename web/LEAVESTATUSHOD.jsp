<%-- 
    Document   : LEAVESTATUS
    Created on : Mar 18, 2018, 2:52:44 AM
    Author     : Asus
--%>
<%@page import="hvpm.staff.student"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
    
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
    font-family: Arial, Helvetica, sans-serif;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
    font-family: Arial, Helvetica, sans-serif;
}
</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
        String search = (String)session.getAttribute("userid");
        if (request.getParameter("search") != null) {
            search = request.getParameter("search");
        }
    %>
<form>
               <h3> <input type="hidden" name="search" size="40" value='<%=search%>' placeholder="Search.." required />
               </h3>
            </form>
       </form>
            
<center><h1>Leave Status</h1></center>
            <table style="width:100%"  border="1"  >
             <tr>
                    <th>Name</th>
                    
                     <th>DATE TO</th>
                    <th>From</th>
                    
                    
                    <th>status</th>
                   
                </tr>
                
                <%
                student stud5=new student();
                Vector vlist5=stud5.list5(search);
                for(int i=0;i<vlist5.size();i++)
            {
                student s=(student)vlist5.get(i);
                %>
                <tr> 
                    <td><%=s.getname2()%></td> <td><%=s.getDOBI()%></td>
                    <td><%=s.getDOBII()%></td><td><input type="text"value="<%=s.getstatus2()%>" Placeholder="Wait..." name="status"  </td>
                    
                    
                       </tr>
                <%  
            }
             %>
            </table>
    </body>
</html>
