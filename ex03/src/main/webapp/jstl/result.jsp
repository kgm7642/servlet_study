🍏 jstl 실제 사례

Image

Image

✅ webapp/jstl/board.jsp

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<a href="/jstl/list">게시판 목록</a>
</body>
</html>

Image

✅ webapp/jstl/result.jsp

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>게시판 목록</title>
  <style>
    table {
      border-collapse: collapse;
      width: 80%;
      margin: auto;
    }
    th, td {
      border: 1px solid #999;
      padding: 8px 12px;
      text-align: center;
    }
    th {
      background-color: #f0f0f0;
    }
    caption {
      font-size: 1.5em;
      margin: 20px;
    }
  </style>
</head>
<body>
<table>
  <caption>게시판 목록</caption>
  <tr>
    <th>번호</th>
    <th>제목</th>
    <th>글내용</th>
    <th>작성자</th>
  </tr>

  <!-- 게시글 목록이 존재할 경우 -->
  <c:forEach var="item" items="${list}">
    <tr>
      <td>${item.no}</td>
      <td>${item.title}</td>
      <td>${item.content}</td>
      <td>${item.writer}</td>
    </tr>
  </c:forEach>

  <!-- 게시글이 비어있을 경우 -->
  <c:if test="${empty list}">
    <tr>
      <td colspan="4">게시글이 없습니다.</td>
    </tr>
  </c:if>
</table>
</body>
</html>