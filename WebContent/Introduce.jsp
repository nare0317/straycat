<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Introduce.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
	div
	{
		font-family: 'Nanum Gothic Coding', monospace;
		font-family: 'Quicksand', sans-serif;
	}
</style>
</head>
<body>

	<div>
		<c:import url="Menu.jsp"></c:import>

		<div class="container">
			<div>
				<img src="img/Introduce_cat.jpg"
					style="width: 100%; margin-top: 40px;">
			</div>
			<br>
			<h1>
				소개 <span style="font-size: small;">서비스 소개</span>
			</h1>
			<hr>
			<div>
				<h2>#길고양이도 도시생태계의 일원?</h2>

				햇살 좋은 날엔 식빵을 굽고, 여기저기 누워 있어도 치명적인 귀여움이 넘치는 길고양이. 길에서 흔히 볼 수 있는 고양이들은
				귀엽지만, 일정한 주거지 없이 도시를 돌아다니는 길고양이의 특성상 다양한 문제를 발생시키기도 합니다. 먹이 부족으로
				쓰레기통을 헤집고 다니거나, 울음소리로 인한 소음문제, 그리고 캣맘, 캣대디의 관리(먹이)문제 까지 길고양이는 친근한
				동물인 동시에 갈등을 겪는 존재이기도 합니다.
			</div>
			<br><br>
			<div>
				<h2>#우리 동네 길냥이, 달라질 수 있어요!</h2>

				모하냥 팀은 캣맘, 캣대디가 겪는 길고양이 돌봄 문제와 갈등을 슬기롭게 해결하기 위해 고민했습니다. 관련 통계 자료를 찾아본 결과, 갈등의 주요 원인은 위생과 소음 문제가 대부분이라는 것을 알 수 있었습니다. 사실 영역 동물인 고양이는 정해진 급식소에 먹이를 주고 관리를 잘하면, 오히려 깨끗한 골목을 만들 수 있습니다.  또한 늘어나는 길고양이 개체수는 각 지역마다  캣맘/캣대디가 팀 형태로 관리할 경우 [포획 > 중성화 > 방사] 과정으로 조절할 수 있습니다. 길고양이를 돌봄으로써 사람이 받는 피해도 줄어들고, 길고양이는 넘치는 사랑을 받아 행복한 묘생을 보내는 방법을 제안합니다.
			</div>
			<br><br>
			<div>
				<h2>#길고양이와 공생하는 법</h2>
				
				캣맘, 캣대디의 관리와 사랑을 듬뿍 받은 고양이는 여느 길고양이들과 다릅니다. 쓰레기통을 파헤치지 않고, 건물 안에 들어가는 일도거의 없습니다. 단순히 밥만 챙겨주는 것이 아닌 추운 겨울을 버틸 장소를 만들어주고, 보호가 필요한 아기묘, 아픈 성인묘를 믿고 맡길 
				수 있는 집사와 매칭해주고, 실종된 내 고양이를 찾아주기까지! 우리 동네 길냥이 돌보기 등
				
				가까운 지역의 캣맘, 캣대디들과 함께하세요!
			</div>
			
			
			
 
		</div>


	</div>

	<br />
	<br />
	<br />
	<br />
	<br />
	<div>
		<c:import url="Footer.jsp"></c:import>
	</div>

</body>
</html>