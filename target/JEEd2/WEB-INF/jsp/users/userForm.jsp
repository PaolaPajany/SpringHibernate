<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>FORM</title>

    <!-- Material Design Lite -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css"/>
    <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,500,400italic,700,700italic' rel='stylesheet' type='text/css'/>

    <!-- My inclusions -->
    <script type="text/javascript" src="<c:url value="/resources/js/page.js"/>"></script>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" type="text/css">

</head>

<body class="welcome">
    <h3 class="title">Enter your information here</h3>
    <div id="outPopUp">
        <form:form class= "form" method = "POST" action = "/JEEd2/userInfo">

            <table class="tab">
                 <tr>
                    <td><form:label class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" for="username" path = "name" type="text" id="username">Name</form:label>
                    <form:input class="mdl-textfield__input" path = "name"/></td>
                </tr>
                <tr>
                     <td><form:label class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" path = "email" type="text">Email</form:label>
                    <form:input class="mdl-textfield__input" path = "email" /></td>
                 </tr>
                <tr>
                  <td><form:label class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" path = "pwd" id="password">Password</form:label>
                 <form:password class="mdl-textfield__input" path = "pwd" /></td>
                </tr>
                 <tr>
                      <td><form:label path = "type_of_beer">Type of Beer</form:label>
                     <form:select class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select getmdl-select__fix-height" path = "type_of_beer">
                       <option value="Wheat Beer"> Wheat Beer</option>
                        <option value="Pale Ale"> Pale Ale</option>
                        <option value="Dark Lager"> Dark Lager</option>
                     <option value="Indian Pale Ale"> Indian Pale Ale</option></form:select>
                </td>
        </tr>
        <tr>
            <td><form:label path = "gender">Gender</form:label>
            <form:radiobutton path="gender" value="Male"/> Male
                <form:radiobutton path="gender" value="Female"/> Female</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><form:label path="interest">Interest(s)</form:label>
            <form:checkbox  path="interest" value="Brew some beer"/>Buy
            <form:checkbox  path="interest" value="Look around..."/> Brew some beer
            <form:checkbox path="interest" value="Buy"/>Look around...</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <p></p>
            </td>
        </tr>
        <tr>
            <td colspan = "6">
                <input class="mdl-button mdl-button--raised mdl-button--colored" id="center" type = "submit" value = "_Submit_" onclick="validate()"/>
            </td>
        </tr>
    </table>
</form:form>
</div>
</body>

</html>