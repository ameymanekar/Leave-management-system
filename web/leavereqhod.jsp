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
        //if (request.getParameter("search") != null) {
        //    search = request.getParameter("search");
        //}
    %>
    
  <%
  switch(search)
        {
            case "ajay chendke":
               String amey="BCA";
               search = amey;
                break;
           case "Ajay Chendke":
               String amey3="BCA";
               search = amey3;
                break;
                case "Ajay Chendke ":
               String amey5="BCA";
               search = amey5;
                break;
                case "ajay chendke ":
               String amey4="BCA";
               search =  amey4;
                break;
            case "seema datey":
                String amey2="BSC";
                search = amey2;
                break;
                case "seema datey ":
                String amey7="BSC";
                search = amey7;
                break;
                case "Seema datey ":
                String amey9="BSC";
                search = amey9;
                break;
                case "Sheetal Kale ":
                String amey88="BBA";
                search = amey88;
                break;
                case "sheetal Kale":
                String amey22="BBA";
                search = amey22;
                break;
                case "sheetal Kale ":
                String amey222="BBA";
                search = amey222;
                break;
           // case "three":
              //  System.out.println("three");
              //  break;
            default:
                System.out.println("no match");
        }


  
  %>
<form>
    
    
               <h3> <input type="hidden" name="search" size="40" value='<%=search%>' placeholder="Search.." required />
               </h3>
            </form>
<center><h1> Leaves Request</h1></center>
 <table style="width:100%"  border="1"  >
             <tr>
                    <th>Name</th>
                    <th>Department</th>
                    <th>TO HOD</th>
                     <th>DATE TO</th>
                    <th>From</th>
                    
                    
                    <th>status</th>
                    <th>reason</th>
                     <th>SEND STATUS</th>
                     
                   
                </tr>
                
               <%
                student stud55=new student();
                Vector vlist55=stud55.list55(search);
                for(int i=0;i<vlist55.size();i++)
            {
                student s=(student)vlist55.get(i);
                %>
                <from method="post" action="reqhod.jsp">
                <tr> 
                    <td><%=s.getname2()%></td><td><%=s.getprovince()%></td><td><%=s.getshowtax()%></td>
                    <td><%=s.getDOBI()%></td>
                    <td><%=s.getDOBII()%></td><td><input type="text"value="<%=s.getstatus2()%>" Placeholder="Wait..." name="status"  </td>
                    <td><%=s.getleavereasion()%>
                    
                  
           
                           <td><a href='reqhod.jsp?sid=<%=s.getSid()%>' >Send Status</a></td>
                       </tr>
                </from>
                <%  
            }
             %>
            </table>
          