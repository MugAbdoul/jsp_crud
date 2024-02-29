<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<%@page import="com.dao.UserDao,com.model.User"%>

<%
String id=request.getParameter("id");
User u=UserDao.getRecordById(Integer.parseInt(id));
%>

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
            <h1 class="box-body-header">Edit Form</h1>
            <form action="edituser.jsp" method="post" class="form-container">
                <input type="hidden" name="id" value="<%=u.getId() %>"/>
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" value="<%= u.getName()%>"/>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" value="<%= u.getPassword()%>"/>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" value="<%= u.getEmail()%>"/>
                </div>
                <div class="form-group">
                    <label>Sex:</label><br>
                    <div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input" id="male" name="sex" value="male"/>
                        <label class="form-check-label" for="male">Male</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input" id="female" name="sex" value="female"/>
                        <label class="form-check-label" for="female">Female</label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="country">Country:</label>
                    <select class="form-control" id="country" name="country">
                        <option>India</option>
                        <option>Pakistan</option>
                        <option>Afghanistan</option>
                        <option>Berma</option>
                        <option>Other</option>
                    </select>
                </div>
                <input type="submit" class="btn btn-primary" value="Edit User"/>
            </form>
            
        </div>

    </div>
</section>

</body>
</html>