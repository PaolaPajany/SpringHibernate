<%@page contentType = "text/html;charset = UTF-8" language = "java" %>
<%@page isELIgnored = "false" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>INFO</title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" type="text/css">

</head>

<body class="info">
<h2 class="title">Submitted Information:</h2>
<div id="outPopUp">
<table class="tab">
    <tr>
        <td >Name </td>
        <td class="black"> ${name}</td>
    </tr>
    <tr>
        <td>Email </td>
        <td class="black"> ${email}</td>
    </tr>
    <tr>
        <td >Password </td>
        <td class="black"> ${pwd}</td>
    </tr>
    <tr>
        <td>Type of Beer </td>
        <td class="black"> ${type_of_beer}</td>
    </tr>
    <tr>
        <td>Gender </td>
        <td class="black"> ${gender}</td>
    </tr>
    <tr>
        <td>Interest(s) </td>
        <td class="black"> ${interest}</td>
    </tr>
</table>
</div>
</body>

</html>