<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.mycom.myapp.board.BoardDAO"%>
<%@page import="com.mycom.myapp.board.BoardVO"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>공지사항</title>
<style>
@font-face {
  font-family: 'LotteMartDream';
  font-style: normal;
  font-weight: 410;
  src: url('https://cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartDream/LotteMartDreamMedium.woff2') format('woff2'), url('https//cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartDream/LotteMartDreamMedium.woff') format('woff');
}

html {
 font-family: 'LotteMartDream', sans-serif;
}
table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    text-align: center;
  }
  th:nth-child(2n), td:nth-child(2n) {
    background-color: #bbdefb;
  }
  th:nth-child(2n+1), td:nth-child(2n+1) {
    background-color: #e3f2fd;
  }
</style>
<script>
   function delete_ok(id){
      var a = confirm("정말로 삭제하겠습니까?");
      if(a) location.href='deleteok/'+id;
   }
</script>
</head>
<body>
<style>

   img{

      width:300px;
      height: 160px;

   }
   p{

      font-size: 30px;
   }
   div{

      justify-content: center;
      align-items: center;
      text-align: center;
   }
</style>
<div>
   <p>공지사항</p>
   <img src = "../img/team1.png">
</div>

<table id="list" width="90%">
<tr>
   <th>Id</th>
   <th>Category</th>
   <th>Title</th>
   <th>Writer</th>
   <th>Content</th>
   <th>Regdate</th>
   <th>Edit</th>
   <th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
   <tr>
      <td>${u.seq}</td>
      <td>${u.category}</td>
      <td>${u.title}</td>
      <td>${u.writer}</td>
      <td><a href="view/${u.seq}">${fn:substring(u.content, 0, 20)}${fn:length(u.content) > 20 ? '...' : ''}</a></td>
      <td>${u.regdate}</td>
      <td><a href="editpost/${u.seq}">글수정</a></td>
      <td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>
   </tr>
</c:forEach>
</table>
<br/>
<button type="button" class="btn btn-primary pull-right" onclick="location.href='add'">새글쓰기</button>
<button type="button" class="btn btn-secondary" onclick="location.href='list2'">팀원 명단</button>
</body>
</html>