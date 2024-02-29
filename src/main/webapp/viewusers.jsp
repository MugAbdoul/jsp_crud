<%@ page import="java.util.List" %>
<%@ page import="com.model.User,com.dao.UserDao" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Users</title>
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
                <h1 class="box-body-header">Users List</h1>

                <table class="user-table">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Password</th>
                            <th>Email</th>
                            <th>Sex</th>
                            <th>Country</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            List<User> userList = UserDao.getAllRecords();
                            if(userList != null) {
                                for(User u : userList) {
                        %>
                            <tr>
                                <td><%= u.getId() %></td>
                                <td><%= u.getName() %></td>
                                <td><%= u.getPassword() %></td>
                                <td><%= u.getEmail() %></td>
                                <td><%= u.getSex() %></td>
                                <td><%= u.getCountry() %></td>
                                <td><a href="editform.jsp?id=<%= u.getId() %>">Edit</a></td>
                                <td><a style="color: red;" href="deleteuser.jsp?id=<%= u.getId() %>">Delete</a></td>
                            </tr>
                        <% 
                                }
                            }
                        %>
                    </tbody>
                </table>
            </div>

        </div>
    </section>
    
</body>
</html>
