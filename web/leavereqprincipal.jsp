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

<center><h1>Leaves Request</h1></center>
 <table style="width:100%"  border="1"  >
             <tr>
                    <th>Name</th>
                    <th>province</th>
                    <th>Reason</th>
                     <th>DATE TO</th>
                    <th>From</th>
                    
                    
                    <th>status</th>
                     <th>SEND STATUS</th>
                     
                   
                </tr>
                
               <%
                student stud6=new student();
                Vector vlist6=stud6.list6(10);
                for(int i=0;i<10;i++)
            {
                student s=(student)vlist6.get(i);
                %>
                <from method="post" action="reqprincipal.jsp">
                <tr> 
                    <td><%=s.getname2()%></td><td><%=s.getprovince()%></td>
                    <td><%=s.getleavereasion()%></td>
                    <td><%=s.getDOBI()%></td>
                    <td><%=s.getDOBII()%></td><td><input type="text"value="<%=s.getstatus2()%>" Placeholder="Wait..." name="status"  </td>
                    
                    
                  
           
                           <td><a href='reqprincipal.jsp?sid=<%=s.getSid()%>' >Send Status</a></td>
                       </tr>
                </from>
                <%  
            }
             %>
            </table>
          