<%@ include file="header.jsp" %>


<title>All Patient Records</title>
<style>

body {
    font-family: Arial, sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
    font-size: 15px; /* Base font size */
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
    font-size: 33px; /* Increased heading font size */
    color: ##333333 ;
    font-weight:bold;
}


table {
    width: 100%;
    border-collapse: collapse;
    margin: 0 auto 30px;
    font-size: 18px; /* Increased table font size */
}

th, td {
    padding: 15px 12px;
    text-align: left;
    border-bottom: 1px solid #dee2e6;
}

th {
    background-color:#777777;
    color: #fff;
    font-size: 18px;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #e9ecef;
}


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
    <h1>All Patient Records</h1>
    <table>
        <tr>
            <th>Id</th>
            <th>Full Name</th>
            <th>Date of Birth</th>
            <th>Address</th>
            <th>Disease</th>
            <th>Total Bill</th>
            <th>Edit</th>
            <th>Remove</th>
        </tr>
        <c:forEach items="${patientsList}" var="patient">
            <tr>
                <td>${patient.id}</td>
                <td>${patient.fullName}</td>
                <td>${patient.dateOfBirth}</td>
                <td>${patient.address}</td>
                <td>${patient.disease}</td>
                <td>${patient.totalBill}</td>
                <td>
                    <form action="selectServlet">
                        <input type="hidden" name="id" value="${patient.id}">
                        <input type="submit" value="Edit">
                    </form>
                </td>
                <td>
                    <form action="deleteServlet">
                        <input type="hidden" name="id" value="${patient.id}">
                        <input type="submit" value="Remove">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>

