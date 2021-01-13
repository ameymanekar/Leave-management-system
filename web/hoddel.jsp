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
                    <th>Name</th>
                     <th>email</th>
                    <th>Contact No</th>
                    <th>Date of Birth</th>
                   <th> Department</th>
                    
                    <th>Gender</th>
                    <th>Delete</th>
                   
                </tr>
                
                <%
                student stud2=new student();
                Vector vlist2=stud2.list2(search);
                for(int i=0;i<vlist2.size();i++)
            {
                student s=(student)vlist2.get(i);
                %>
                <tr> 
                    <td><%=s.getName()%></td><td><%=s.getemail()%></td>
                    
                    <td><%=s.getContactno()%></td>
                    <td><%=s.getDOB()%></td><td><%=s.getdepartment()%></td>
                  
                    <td><%=s.getgender()%></td>
                    <td><a href='hoddel2.jsp?sid=<%=s.getSid()%>' ><img src="images/Delete.png" height="30px"></a></td>
                       </tr>
                <%  
            }
             %>
            </table>