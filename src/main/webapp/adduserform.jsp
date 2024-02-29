<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Add User Form</title>
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>


    <section>
        <div class="box">
            <div class="box-header">
                <div class="box-header-back">
                    <a href="<%= request.getContextPath() %>/">Home</a>
                </div>
                <div class="box-header-links">
                    <a href="adduserform.jsp">Add User</a>
                    <a href="viewusers.jsp">View User</a>
                </div>
            </div>
            
            <div class="box-body">
                <jsp:include page="userform.html"></jsp:include>
            </div>

        </div>
    </section>

    </body>
</html>