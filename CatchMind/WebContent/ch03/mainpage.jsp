<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>main</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="mainstyle.css?after">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Fredoka+One&display=swap" rel="stylesheet">
</head>
<body>
	<header>
		<h2>릴레이 그림 퀴즈</h2>
		<button type="button" class="btn btn-warning" id="back">나가기</button>
	</header>

	<aside id="left">
		<ul>
			<li>user1</li>
			<li>user2</li>
			<li>user3</li>
			<li>user4</li>
		</ul>
	</aside>

	<section id="main">
		<div></div>
	</section>
	
	<aside id="right">
		<span id="time">남은 시간</span>
		<span id="score">내 점수</span>
		<div id="chat">채팅</div>
	</aside>
	

</body>
</html>