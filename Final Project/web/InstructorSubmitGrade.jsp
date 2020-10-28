<%-- 
    Document   : InstructorSubmitGrade
    Created on : Dec 16, 2012, 12:48:28 AM
    Author     : Peter Sun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "accounts.InstructorAccount" %>
<jsp:useBean id="instructor" class="accounts.InstructorAccount" scope="session" >
</jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Confirm</h1>
        <%
            String student = (String) session.getAttribute("student");
            String course = (String) session.getAttribute("course");
            String hwNumber = request.getParameter("hwChoosen");
            String grade = request.getParameter("hwgrade");

            out.println("<form method=\"post\" action = \"InstructorConfirmGrade.jsp\">");
            
            instructor.setGradeInDB(student, course, hwNumber, grade);

            out.print("<input type=\"submit\" value=\"Assign Grade\" >");

        %>
    </body>
</html>
