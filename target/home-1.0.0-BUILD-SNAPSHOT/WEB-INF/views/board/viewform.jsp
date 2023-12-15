<%--
  Created by IntelliJ IDEA.
  User: psy
  Date: 2023-12-15
  Time: 오후 8:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <title>글 내용 보기</title>
</head>
<body>
<div class="container">
  <div class="row">
    <table class="table table-striped"
           style="text-align: center; border: 1px solid #dddddd">
      <thead>
      <tr>
        <h2 colspan="2" style="background-color: #eeeeee; text-align: center;">공지 글 보기</h2>
      </tr>
      </thead>
      <tbody>
      <tr>
        <td>카테고리</td>
        <td><span class="form-control" readonly>${boardVO.category}</span></td>
      </tr>
      <tr>
        <td>글 제목</td>
        <td><span class="form-control" readonly>${boardVO.title}</span></td>
      </tr>
      <tr>
        <td>작성자</td>
        <td><span class="form-control" readonly>${boardVO.writer}</span></td>
      </tr>
      <tr>
        <td>글 내용</td>
        <td><div class="form-control" readonly style="height: 350px; overflow: auto;">${boardVO.content}</div></td>
      </tr>
      <tr>
        <td class="text-end"><button type="button" onclick="location.href='../list'">목록보기</button></td>
      </tr>
      </tbody>
    </table>
  </div>
</div>
</body>
</html>
