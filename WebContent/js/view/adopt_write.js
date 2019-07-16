$(document).ready(function()
{
	$("#uploadPicture").on("change",function(){readURL(this);});

	function readURL(input) { 
		if (input.files && input.files[0]) 
		{ 
			var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성 
	        
			// 파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
			reader.onload = function (e) { 
			// 이미지 Tag의 SRC속성에 읽어들인 File내용(아래 코드에서 읽어들인 dataURL형식)을 지정 
			$('#catPicture').attr('src', e.target.result); 
	        }                    
			reader.readAsDataURL(input.files[0]);
			//File내용을 읽어 dataURL형식의 문자열로 저장 
		}
	}
})