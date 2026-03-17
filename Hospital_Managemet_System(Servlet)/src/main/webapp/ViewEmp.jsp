<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>All Patient Records</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
    font-size: 15px;
    color: #343a40;
}

.container {
    width: 100%;
    max-width: 1300px;
    margin: 30px auto;
    background-color: #fff;
    padding: 40px 50px;
    border-radius: 12px;
    box-shadow: 0 6px 12px rgba(0,0,0,0.1);
}

h1 {
    text-align: center;
    margin-bottom: 30px;
    font-size: 33px;
    color: #333333;
    font-weight: bold;
}

/* TABLE DESIGN */
table {
    width: 100%;
    border-collapse: collapse;
    margin: 0 auto 30px;
    font-size: 18px;
    border: 2px solid #dee2e6; /* Full table border */
}

th, td {
    padding: 13px 12px;
    text-align: left;
    border: 1px solid #dee2e6; /* Column lines */
}

th {
    background-color: #555555;
    color: #fff;
    font-size: 18px;
    text-transform: uppercase;
    letter-spacing: 0.5px;
}

/* Even row background */
tr:nth-child(even) {
    background-color: #f8f9fa;
}

/* Hover Pop Effect */
tr:hover {
    background-color: #e9ecef;
    transform: scale(1.01);
    box-shadow: 0 4px 10px rgba(0,0,0,0.15);
    transition: all 0.2s ease-in-out;
}

/* BUTTON STYLES */
input[type="submit"] {
    padding: 8px 15px;
    border: none;
    border-radius: 6px;
    color: #fff;
    cursor: pointer;
    font-size: 16px;
    transition: 0.3s;
}

input[value="Edit"] {
    background-color: #28a745;
}

input[value="Edit"]:hover {
    background-color: #218838;
}

input[value="Remove"] {
    background-color: #dc3545;
}

input[value="Remove"]:hover {
    background-color: #c82333;
}

form {
    display: inline;
}

@media (max-width: 768px) {
    table, th, td {
        font-size: 16px;
    }
    h1 {
        font-size: 28px;
    }
    input[type="submit"] {
        font-size: 14px;
        padding: 6px 12px;
    }
}

.footer {
    margin-top: 50px;
    margin-bottom: 0;
}
</style>
</head>
<body>

<div class="container">
    <h1>All Employee Records</h1>

    <table>
        <tr>
            <th>Id</th>
            <th>Full Name</th>
            <th>Role</th>
            <th>Department</th>
            <th>Contact</th>
            <th>Shift</th>
            <th>Payment Status</th>
            <th>Date Of Joining</th>
            <th>Edit</th>
            <th>Remove</th>
        </tr>

        <c:forEach items="${empList}" var="emp">
            <tr>
                <td>${emp.id}</td>
                <td>${emp.full_name}</td>
                <td>${emp.role}</td>
                <td>${emp.department}</td>
                <td>${emp.contact}</td>
                <td>${emp.shift}</td>
                <td>${emp.payement_status}</td>
                <td>${emp.date_of_joining}</td>

                <td>
                    <form action="selectemp" method="get">
                        <input type="hidden" name="id" value="${emp.id}">
                        <input type="submit" value="Edit">
                    </form>
                </td>
                <td>
                    <form action="deleteemp" method="post" onsubmit="return confirm('Are you sure you want to remove this record?');">
                        <input type="hidden" name="id" value="${emp.id}">
                        <input type="submit" value="Remove">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
