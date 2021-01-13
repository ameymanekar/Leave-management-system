<%-- 
    Document   : links.jsp
    Created on : Dec 18, 2017, 8:49:42 PM
    Author     : CCIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        .page
{
    background-image: url('images/ff.jpg');
    background-attachment: fixed;
}

.boxsmall
{
    font-family: arial;
    font-size: 20pt;
    color:steelblue;
    background-color: white;
    box-shadow: 0px 0px 20px black;
    padding: 20px;
    border-radius: 10px;
}

.boxmain
{
    font-family: arial;
    font-size: 20pt;
    color:steelblue;
    background-color: white;
    box-shadow: 0px 0px 20px royalblue;
    padding: 20px;
    border-radius: 10px;
    min-height: 600px;
    margin:20px;
}

input
{
    font-family: arial;
    font-size: 20pt;
    color:steelblue;
    background-color: #f8f8f8;
}

.mbar
{
    border:1px solid steelblue;
    padding:5px 5px 5px 20px ;
    background-color: #f8f8f8;
    background-image: url('images/bullet.png');
    background-repeat:no-repeat;
    
}

.mbar:hover
{
    border:1px solid steelblue;
    padding:5px 5px 5px 20px ;
    background-color: white;
    box-shadow: 0px 0px 20px royalblue;
    background-image: url('images/ball.gif');
    background-repeat:no-repeat;
    background-position-x:5px;
    background-position-y:5px;
}

.mlink
{
    font-family: arial;
    font-size: 10pt;
    color:steelblue;
    text-decoration: none;
}

.mlink:hover
{
    font-family: arial;
    font-size: 10pt;
    font-weight:bold;
    color:red;
    text-decoration: none;
}

.errmsg
{
     font-family: arial;
    font-size: 20pt;
    color:red;
    text-align: center;
}
.enjoy-css {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  border: none;
  font: normal 23px/1 "Times New Roman", Times, serif;
  color: rgba(255,255,255,1);
  -o-text-overflow: ellipsis;
  text-overflow: ellipsis;
  text-shadow: 4px 4px 6px rgba(255,255,255,0.46) ;
}

        </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="page" >
        <br>
    <center>
        
        <img src="images/qq.png" width="100%" height="100%" >
        <hr>
       <div class="enjoy-css">Welcome: <%=(String)session.getAttribute("userid")%></div> 
        <hr>
        <table cellspacing="20px" width="100%" >
            <tr><td class="mbar" ><a class="mlink" href="home.jsp" target="f2" >Home</a></td></tr>
            <tr><td class="mbar" ><a class="mlink" href="add.jsp" target="f2" >Add </a></td></tr>
            <tr><td class="mbar" ><a class="mlink" href="delete.jsp" target="f2" >Delete</a></td></tr>
            <tr><td class="mbar" ><a class="mlink" href="update.jsp" target="f2" >Update</a></td></tr>
            <tr><td class="mbar" ><a class="mlink" href="ViewEntries.jsp" target="f2" >View Entries</a></td></tr>
            <tr><td class="mbar" ><a class="mlink" href="changepass.jsp" target="f2" >change Password</a></td></tr>
            <tr><td class="mbar" ><a class="mlink" href="index.jsp" target="_top"  >Logout</a></td></tr>
        </table>
    </center>
    </body>
</html>
