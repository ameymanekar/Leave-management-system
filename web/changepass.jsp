<%@page import="hvpm.staff.student"%>
<%@page import="java.util.Vector"%>

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
 <%
        String search = "";
        if (request.getParameter("search") != null) {
            search = request.getParameter("search");
        }
    %>
<form>
               <h3> Name : <input type="text" name="search" size="40" value='<%=search%>' placeholder="Search.." required />
               </h3>
            </form>
               <table style="width:100%"  border="1"  >
             <tr>
                    <th>User ID</th>
                    <th>User Name</th>
                    <th>Password</th>
                     
                    <th>UPADTE</th>
                   
                </tr>
                
                <%
                student stud4=new student();
                Vector vlist4=stud4.list4(search);
                for(int i=0;i<vlist4.size();i++)
            {
                student s=(student)vlist4.get(i);
                %>
                <tr> 
                    <td><%=s.getSid()%></td>
                    <td><%=s.getuserid()%></td>
                  <td><%=s.getpwd()%></td>
                    
                    <td><a href='updatepass.jsp?sid=<%=s.getSid()%>' ><img src="images/update data.png" height="30px"></a></td>
                       </tr>
                <%  
            }
             %>
            </table>