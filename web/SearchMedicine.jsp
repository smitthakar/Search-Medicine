<%-- 
    Document   : SearchMedicine
    Created on : 29 Mar, 2024, 5:54:12 PM
    Author     : smit
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fafafa;
            margin: 0;
            padding: 0;
        }

        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
        }

        th {
            background-color: #f5f5f5;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <h1>Search Result</h1>
    
    <% 
        String mdname = request.getParameter("mdname");
        String mfname= request.getParameter("mfname");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine_db","root","");
            Statement st = con.createStatement();
            String query = "Select * from medicine WHERE medicine_name LIKE '%" + mdname + "%' AND manufacture_name LIKE '%" + mfname + "%'";
            ResultSet rs = st.executeQuery(query);
    %>
    <table>
        <tr>
            <th>Medicine Name</th>
            <th>Medicine Details</th>
            <th>Manufacturer Name</th>
            <th>Batch No</th>
            <th>Manufacturing Month/Year</th>
            <th>Expiry Month/Year</th>
        </tr>
        <% while (rs.next()) { %>
        <tr>
            <td><%= rs.getString("medicine_name")%></td>
            <td><%= rs.getString("medicine_detail")%></td>
            <td><%= rs.getString("manufacture_name")%></td>
            <td><%= rs.getString("batch_no")%></td>
            <td><%= rs.getString("manufacture_month_year")%></td>
            <td><%= rs.getString("expiry_month_year")%></td>
        </tr>
        <% } %>
    </table>
    <%
            rs.close();
            st.close();
            con.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>

