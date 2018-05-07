<html>
<head>
    <title>Setting HTTP Status Code</title>
</head>

<body>
<%
    //sampleStart
    response.sendError(404, "Need authentication!!!" );
    //sampleEnd
%>
</body>
</html>
