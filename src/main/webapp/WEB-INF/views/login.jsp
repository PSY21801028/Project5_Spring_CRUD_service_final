<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
img, label {
	display: inline-block;
}

label {
	width: 130px
}

button {

	background-color: lightskyblue;
	color: white;
	font-size: 15px;
	border-radius: 8px;
	width: 290px;
	height: 50px;
	border: none;
	float: right;
	cursor: pointer;
	margin-top: 20px;
	font-weight: bold;
}
div{

	margin-bottom: 10px;
}
input{
	border-top: none;
	border-left: none;
	border-right: none;
	border-bottom: 1px solid;
}
.login-container{

	margin-top: 30px;
	padding-top: 30px;
	/*border: solid;*/
	width: 350px;
	height: 200px;
	margin-left: 230px;
}
input{

	float: right;
}
</style>
</head>
<body>
	<div style='width: 100%; text-align: center; padding-top: 100px'>
		<img src='../img/login.png' height="250">
		<form method="post" action="loginOk">
			<div class="login-container">
				<div>
					<label>User ID: </label><input type='text' name='userid' />
				</div>
				<div>
					<label>Password: </label> <input type='password' name='password' />
				</div>
				<button type='submit'>login</button>
			</div>
		</form>
	</div>
</body>
</html>