<%-- 
    Document   : Index
    Created on : Feb 16, 2021, 3:56:19 PM
    Author     : Thomas Stout
--%>

<%@page import="java.math.BigDecimal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    //BigDecimal num1 = new BigDecimal(request.getParameter("numberOne"));
    //BigDecimal num2 = new BigDecimal(request.getParameter("numberTwo"));
    //BigDecimal result;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
        <link href="styles/main.css" rel="stylesheet">
    </head>
    <body>
        <form>
            <h1>Basic Addition Servlet Assignment:</h1><br><br>
            <label for="numberOne">Number One:</label><br>
            <input type="text" name="numberOne" id="numberOne" value=""><br>
            <label for="numberTwo">Number Two:</label><br>
            <input type="text" name="numberTwo" id="numberTwo" value=""><br>
            <input type="submit" value="Submit">
        </form>

        <%
            BigDecimal num1 = new BigDecimal(request.getParameter("numberOne"));
            BigDecimal num2 = new BigDecimal(request.getParameter("numberTwo"));
            BigDecimal result;
            result = num1.add(num2);
            result.toString();
            out.println("<h1>Result is: " + result + "</h1>");

            //out.println("<a href=\"index.jsp?user=" + user + "\">Fill out the form again</a>");
        %>
        <!--<script src="js.app.js"></script>-->
    </body>
</html>