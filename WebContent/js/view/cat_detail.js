$(document).ready(function()
{
	$("#firstDatepicker").datepicker(
	{
		showOn : "button",
		buttonImage : "./img/small-calendar.png",
		buttonImageOnly : true,
		dateFormat : "yymmdd",
		changeMonth : true,
		changeYear : true
	});
	
	$("#secondDatepicker").datepicker(
	{
		showOn : "button",
		buttonImage : "./img/small-calendar.png",
		buttonImageOnly : true,
		dateFormat : "yymmdd",
		changeMonth : true,
		changeYear : true
	});
	
	$('#firstDatepicker').datepicker('setDate', 'today');
	$('#secondDatepicker').datepicker('setDate', 'today');
	
	// 신고 내용을 최대 1000 자까지 입력할 수 있도록 제한하는 function
	// 1000 자를 초과 입력하면 1000 번째 글자까지 입력됨
	$("#declarationContent").keyup(function()
	{
		if($("#declarationContent").val().length >= 1000)
		{
			$("#textCounter").css("color", "red");
			var str = $("#declarationContent").val();
			str = str.substring(0, 1000);
			$("#declarationContent").val(str);
		}
		else
		{
			$("#textCounter").css("color", "black");
			var textCnt = $("#declarationContent").val().length;
			$("#counter").text(textCnt);
		}
	});
	
	// 활동 내용을 최대 9000 자까지 입력할 수 있도록 제한하는 function
	// 9000 자를 초과 입력하면 9000 번째 글자까지 입력됨
	$("#activityContent").keyup(function()
	{
		if($("#activityContent").val().length >= 9000)
		{
			$("#activityCounter").css("color", "red");
			var str = $("#activityContent").val();
			str = str.substring(0, 9000);
			$("#activityContent").val(str);
		}
		else
		{
			$("#activityCounter").css("color", "black");
			var textCnt = $("#activityContent").val().length;
			$("#Acounter").text(textCnt);
		}
	});
	
	// 필수 입력 사항 확인
	$("#sendBtn").click(function()
	{
		$(".err1").css("display", "none");
		$(".err2").css("display", "none");
		
		// 필수입력사항 / select 둘다 안했을때
		if (($("#declarationContent").val()=="" || $("#declarationContent").val()==null) && ($("#declarationSelect option").index($("#declarationSelect option:selected")) == 0))
		{
			$(".err1").css("display", "block");
			$(".err2").css("display", "block");
			return;
		}
		
		// 필수입력사항만 안했을때
		else if($("#declarationContent").val()=="" || $("#declarationContent").val()==null)
		{
			$(".err1").css("display", "block");
			return;						
		}
		
		// select만 안했을때
		else if($("#declarationSelect option").index($("#declarationSelect option:selected")) == 0)
		{
			$(".err2").css("display", "block");
			return;		
		}
		
		// 둘다 입력했을때 submit
		else
		{
			$("#modalForm").submit();
		}
	});
	
	
	// 활동 필수 입력 사항 확인
	$("#activityBtn").click(function()
	{
		$(".err1").css("display", "none");
		if($("#activityContent").val() == "" || $("#activityContent").val()==null || $(':radio[name="activityRadio"]:checked').val() == null)
		{
			$(".err1").css("display", "block");
			return;
		}
			$("#activityForm").submit();
	});
	
	//alert($("#cat_id").val());
	
	
	$("#secondDatepicker").on("change", function()
	{
		//alert($("#secondDatepicker").val());
		$.ajax(
		{
			url: 'act_date'
			,type: 'POST'
			,data: {'id': $("#cat_id").val(),'act_date' :  $("#secondDatepicker").val()}
			,dataType : "JSON"
			,success:function(data)
			{
				//console.log(data);
				
							
					$("#cat").empty();
					
					var str = "";
					
					var cCnt = data.length;
					
					
					for(var i=0; i<cCnt; i++)
					{
						
						str += "				<div class='row'>";
						str += "						<div class='col-2'>";
						str += "							<h5>" + data[i].NICKNAME + "</h5>";
						str += "							<span>" + data[i].ACT_DATE + "</span>";
						str += "							<div>" + data[i].ACT_LOCATION + "</div>";
						str += "						</div>";
						str += "						<div class='col-10'>";
						str += "					 		<div class='row'>";
						str += "								&nbsp;&nbsp;&nbsp;&nbsp;";
						
						if(data[i].ACT_TYPE == "먹이")
						{
						str += "<img src='img/fish.png'>";
						}
						else if(data[i].ACT_TYPE == "물")
						{
						str += "<img src='img/fish.png'>";
						}
						else if(data[i].ACT_TYPE == "간식")
						{
						str += "<img src='img/fish.png'>";	
						}
						else if(data[i].ACT_TYPE == "약")
						{
						str += "<img src='img/fish.png'>";	
						}
						else if(data[i].ACT_TYPE == "만남")
						{
						str += "<img src='img/fish.png'>";	
						}
						str += "							</div><br> ";
						str += "							<h4>" + data[i].CONTENT + "</h4>";
						str += "						</div>";
						str += "					</div>";
						str += "					<div class='row'>";
						str += "						<div class='col-2'></div>";
						str += "						<div class='col-10'>";
						str += "							<div class='row'>";
						
						for(var j=0; j<1; j++)
						{
							for(var k=0; k<1; k++)
							{
								str += "										<div class='col-6'>";
								str += "											<img src='img/straycat.jpg' class='rounded mx-auto d-block catImg'>";
								str += "										</div>";
							}
							str += "									<br>";
							str += "									<br>";
						}
						str += "							</div>";
						str += "						</div>";
						str += "					</div>";
						str += "					<div class='row'>";
						str += "						<div class='col-2'></div>";
						str += "						<div class='col-10'>";
						str += "							<form class='form-inline'>";
						str += "								<div class='form-group mx-sm-3 mb-2'>";
						str += "									<input type='text' class='form-control comment'	id='inputPassword2' placeholder='댓글달기' style='width: 1350px;'>";
						str += "								</div>";
						str += "								<button type='submit' class='btn btn-primary mb-2'>입력</button>";
						str += "							</form>";
						str += "						</div>";
						str += "					</div><br><br><br>";
					}
					
					
					
					$("#cat").append(str);
					
			}
				
		});
	});
	
	
	
});

function login_need()
{
	alert("로그인이 필요합니다.");
	window.location.href="login";
}