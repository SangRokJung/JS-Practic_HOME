<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>홈쇼핑 회원 등록</title>
</head>
<body>

<%@ include file="header.jsp" %>

<h2>홈쇼핑 회원 등록</h2>

<form id="id_regForm" name="regForm" method="post">
	<table border="1">
	<tr>
		<td>회원번호(자동발생)</td>
		<td><input type="text" id="id_custno" name="custno" readonly></td>
	</tr>
	
	<tr>
		<td>회원성명</td>
		<td><input type="text" id="id_custname" name="custname"></td>
	</tr>
	
	<tr>
		<td>회원전화</td>
		<td><input type="text" id="id_phone" name="phone"></td>
	</tr>
	
	
	<tr>
		<td>회원주소</td>
		<td><input type="text" id="id_address" name="address"></td>
	</tr>
	
	<tr>
		<td>가입일자</td>
		<td><input type="text" id="id_joindate" name="joindate"></td>
	</tr>
		
	<tr>
		<td>고객등급[A:VIP,B:일반,C:직원]</td>
		<td><input type="text" id="id_grade" name="grade"></td>	
	</tr>
		
	<tr>
		<td>도시코드</td>
		<td><input type="text" id="id_city" name="city"></td>
	</tr>	
	</table>
</form>
<button id="id_regMember">등록</button>
<button id="id_InqMember">조회</button>
	

<%@ include file="footer.jsp" %>
<script>

(function(){

	const btnReg = document.getElementById("id_regMember");
	
	const checkDataSize = function()
	{
		// 배열, 오브젝트.
		const arInputBox = [
			{ box : document.querySelector("#id_custname"), errMsg : '회원성명이 입력되지 않았습니다.'	},
			{ box : document.querySelector("#id_phone"),	errMsg : '회원전화가 입력되지 않았습니다.' 	},
			{ box : document.querySelector("#id_address"),	errMsg : '회원주소가 입력되지 않았습니다.'	},
			{ box : document.querySelector("#id_joindate"), errMsg : '가입일자가 입력되지 않았습니다.'	},
			{ box : document.querySelector("#id_grade"),	errMsg : '고객등급이 입력되지 않았습니다.'	},
			{ box : document.querySelector("#id_city"),		errMsg : '도시코드가 입력되지 않았습니다.'  }
		];

		
		for (let i = 0; i < arInputBox.length; i++)
		{
			if (arInputBox[i].box.value.length === 0)
			{
				alert(arInputBox[i].errMsg);
				arInputBox[i].box.focus();
				return false;
				
			}
			
		}
		
		return true;
		
	}

	btnReg.addEventListener('click', ()=>{
		if (true == checkDataSize())
		{
			alert("DB에 저장");
		}
		
	});
	
})();

</script>
</body>
</html>