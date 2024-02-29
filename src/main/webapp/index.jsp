<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Home</title>
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
                    <h1 class="wlc">Welcome to Home Page</h1>
                </div>
    
            </div>
        </section>

    </body>
</html>