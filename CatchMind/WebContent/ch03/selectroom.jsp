<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>selectRoom</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="selectroomstyle.css?after">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Fredoka+One&display=swap" rel="stylesheet">
</head>
<body>
	<header>
		<h1>릴레이 그림 퀴즈</h1>
		<button type="button" class="btn btn-warning" id="select" >바로입장</button>
		<button type="button" class="btn btn-warning" id="make">방 만들기</button>
	</header>
	
	<section id="main">
		<table class="table-primary table table-striped">
			<thead>
				<tr class="table-primary">
					<th scope="col"><font size="5">인원</font></th>
					<th scope="col"><font size="5">방번호</font></th>
					<th scope="col"><font size="5">방 제목</font></th>
				</tr>
			</thead>
			<tbody>
				<tr class="table-primary ">
					<th class="table-primary" scope="row"><font size="5">1/4</font></th>
					<td class="table-primary"><font size="5">1</font></td>
					<td class="table-primary"><font size="5">뮹ㄴㄻㄷㅈㄻㅎㅁㄱㄷㅎㄷㄹㅈㄹ</font></td>
				</tr>
				<tr class="table-primary">
					<th class="table-primary" scope="row"><font size="5">3/4</font></th>
					<td class="table-primary"><font size="5">2</font></td>
					<td class="table-primary"><font size="5">ㄻㄷㅈㄻㅎㅁㅎㄷㅈㅎㅁㅁㄱㄷㅎㄷㄹㅈㄹ</font></td>
				</tr>
				<tr class="table-primary"> 
					<th class="table-primary" scope="row"><font size="5">2/4</font></th>
					<td class="table-primary"><font size="5">3</font></td>
					<td class="table-primary"><font size="5">ㄻㄷㅗㄱㅁㄷㅎㅇㄶㅈㄻㅎㅁㄱㄷㅎㄷㄹㅈㄹ</font></td>
				</tr>
			</tbody>
		</table>
		
	</section>
	
	<aside id="right">
		<div>
			<img src="user.jpg" alt="myimg" width="200" height="200">
		</div>
		<h3>닉네임</h3>
	
	</aside>


</body>
</html>