<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    int pageCount = 0;
    void addCount() {
        pageCount++;
    }
%>
<% addCount(); %>
<link rel="stylesheet" href="../../../resources/core/css/style.css ">
<html>
<head>
    <title>Beer is life</title>
</head>
<body>
<h2>Beer is life</h2>
<p>This site has been visited <%= pageCount %> times.</p>
<a href="../index.jsp">Return - Home</a>
<br/><br/>
</body>
</html>