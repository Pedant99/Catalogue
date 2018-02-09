<%-- 
    Document   : insertdata
    Created on : 15-Jun-2017, 16:05:24
    Author     : KOwired
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertion Page</title>
    </head>
    <body>
              <%
            String name= request.getParameter("app_name");
            String link1= request.getParameter("link1");
            String link2= request.getParameter("link2");
            String link3= request.getParameter("link3");
            String description= request.getParameter("description");
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/catalogue", "root","");
        Statement st = con.createStatement();
     
        
        st.executeUpdate("insert into app(app_name , link1 , link2 , link3 , description ) value('"+name+"' , '"+link1+"' , '"+link2+"' , '"+link3+"' , '"+description+"')");
        out.println("You have added a new application" + " <a href='application.jsp'>Go back to Admin page</a>");
        }catch(Exception e){
            out.println(e);
        
        }
        
        
        
        %>
    </body>
</html>
