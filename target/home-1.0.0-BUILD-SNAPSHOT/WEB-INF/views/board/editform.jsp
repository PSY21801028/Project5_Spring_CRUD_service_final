<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <title>공지 수정하기</title>
</head>
<body>


<form:form commandName="boardVO" method="post" action="../editok">
   <form:hidden path="seq" />
   <div class="container">
      <div class="row">
         <form method="post" action="addok">
            <table class="table table-striped"
                   style="text-align: center; border: 1px solid #dddddd">
               <thead>
               <tr><h2>
                  <th colspan="2" style="background-color: #eeeeee; text-align: center;"><h2>게시물 수정</h2></th>
               </thead>
               <tbody>
               <tr>
                  <td><input type="text" class="form-control"
                             placeholder="카테고리" name="category" value="${boardVO.category}" maxlength="10"></td>
               </tr>
               <tr>
                  <td><input type="text" class="form-control"
                             placeholder="글 제목" name="title" value="${boardVO.title}" maxlength="50"></td>
               </tr>
               <tr>
                  <td><input type="text" class="form-control"
                             placeholder="작성자" name="writer" value="${boardVO.writer}" maxlength="10"></td>
               </tr>
               <tr>
                  <td><textarea class="form-control" placeholder="글 내용"
                                name="content" maxlength="2048" style="height: 350px;">${boardVO.content}</textarea></td>
               </tr>
               <tr>
                  <td>
                  <input type="submit" class="btn btn-primary pull-right" value="수정하기" />
                  <input type="button" class="btn btn-danger  pull-right" value="취소하기" onclick="history.back()" />
                  </td>
               </tr>
               </tbody>

            </table>

         </form>
      </div>
   </div>
   <!-- 게시판 글쓰기 양식 영역 끝 -->

   <!-- 부트스트랩 참조 영역 -->
   <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="js/bootstrap.js"></script>

</form:form>

</body>
</html>