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
        String search = (String)session.getAttribute("userid");
        if (request.getParameter("search") != null) {
            search = request.getParameter("search");
        }
    %>
<form>
               <h3>  <input type="hidden" name="search" size="40" value='<%=search%>' placeholder="Search.." required />
               </h3>
            </form>
               <center> <h1> Leaves</h1></center>
 <table style="width:100%"  border="1"  >
             <tr>
                 <th>ID</th>
                    <th>Name</th>
                    <th>Department</th>
                    <th>Designation</th>
                    <th>Reason</th>
                     <th>DATE TO</th>
                    <th>From</th>
                    <th>status</th>
                     
                     
                   
                </tr>
                
               <%
                student stud4=new student();
                Vector vlist4=stud4.list44(search);
                for(int i=0;i<vlist4.size();i++)
            {
                student s=(student)vlist4.get(i);
                %>
                <from method="post" action="reqhod.jsp">
                <tr> 
                    <td><%=s.getSid()%></td>
                    <td><%=s.getname2()%></td><td><%=s.getprovince()%></td><td><%=s.getshowtax()%></td>
                   <td><%=s.getleavereasion()%></td> 
                    <td><%=s.getDOBI()%></td>
                    <td><%=s.getDOBII()%></td><td><input type="text"value="<%=s.getstatus2()%>" Placeholder="Wait..." name="status"  </td>
                    
                    
                  
           
                          
                       </tr>
                </from>
                <%  
            }
             %>
            </table>
          