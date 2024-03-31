<%-- 
    Document   : index
    Created on : 29 Mar, 2024, 5:32:45 PM
    Author     : smit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Medicines</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fafafa;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        .title h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        .form {
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #666;
            font-size: 14px;
        }

        input[type="text"] {
            width: calc(50% - 20px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #dbdbdb;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #3897f0;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #357ae8;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="title">
            <h1>
                Search Medicines
            </h1>
        </div>
        <div class="form">
            <form action="SearchMedicine.jsp" method="post">
                <label for="MedicineName">Enter Medicine Name</label>
                <input type="text" name="mdname" id="mdname"><br />
                
                <label for="ManufactureName">Enter Manufacture Name</label>
                <input type="text" name="mfname" id="mfname"><br/>
                
                <input type="submit" value="Search">
            </form>
        </div>
    </div>
</body>
</html>


