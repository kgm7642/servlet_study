<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>scope 데이터 보기</h1>
  <p>pageScope의 속성값은: ${pageScope.scopeName}</p>
  <p>requestScope의 속성값은: ${requestScope.scopeName}</p>
  <p>sessionScope의 속성값은: ${sessionScope.scopeName}</p>
  <p>applicationScope의 속성값은: ${applicationScope.scopeName}</p>
  <hr/>
  <p>scopeName 자동 찾기: ${scopeName}</p>
  <p>member: ${member.name}(${member.userid})</p>
</body>
</html>
