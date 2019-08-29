<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.manpa.login.loginDto"%>
<%@page import="com.manpa.login.loginDao"%>

<%
	String id = (String)session.getAttribute("id");

	loginDao dao = loginDao.getInstance();
	loginDto dto = dao.getMember(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

body {
   font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
   color: #333333;
   background: #FFFFFF;
   position:relative;
   top:180px;
}

.signUp {
   position: relative;
   margin: 50px auto;
   width: 370px;
   padding: 33px 25px 29px;
   background: #FFFFFF;

   border-radius: 5px;
   -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
   box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}

.signUp:before,
.signUp:after {
   content: '';
   position: absolute;
   bottom: 1px;
   left: 0;
   right: 0;
   height: 10px;

   border-radius: 4px;
}

.signUp:after {
   bottom: 3px;
   border-color: #DCDCDC;
}

.signUpTitle {
   margin: -10px -10px 10px;
   padding: 5px 15px;
   line-height: 30px;
   font-size: 22px;
   font-weight: 300;
   color: #777;
   text-align: left;
   text-shadow: 0 1px rgba(255, 255, 255, 0.75);
   background: #ffffff;
}

.signUpMo {
   margin: -10px -10px 10px;
   padding: 5px 15px;
   line-height: 30px;
   font-size: 14px;
   font-weight: 300;
   color: #777;
   text-align: left;
   text-shadow: 0 1px rgba(255, 255, 255, 0.75);
   background: #ffffff;
}

.tmi {
   margin: -10px -10px 10px;
   padding: 5px 15px;
   line-height: 30px;
   font-size: 12px;
   font-weight: 300;
   color: #777;
   text-align: left;
   text-shadow: 0 1px rgba(255, 255, 255, 0.75);
   background: #ffffff;
}



input {
   font-family: inherit;
   color: inherit;
   -webkit-box-sizing: border-box;
   -moz-box-sizing: border-box;
   box-sizing: border-box;
}

.signUpInput {
   width: 100%;
   height: 50px;
   margin-bottom: 25px;
   padding: 0 15px 2px;
   font-size: 17px;
   background: white;
   border: 2px solid #EBEBEB;
   border-radius: 4px;
   -webkit-box-shadow: inset 0 -2px #EBEBEB;
   box-shadow: inset 0 -2px #EBEBEB;
}

.signUpInput:focus {
   border-color: #CFCFCF;
   outline: none;
   -webkit-box-shadow: inset 0 -2px #CFCFCF;
   box-shadow: inset 0 -2px #CFCFCF;
}



.signUpButton {
   position: relative;
   vertical-align: top;
   width: 100%;
   height: 54px;
   padding: 0px auto;
   font-size: 22px;
   color: white;
   text-align: center;
   text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
   background: #00C6ED;
   border: 0;
   border-bottom: 2px solid #00C6ED;
   border-radius: 5px;
   cursor: pointer;
   -webkit-box-shadow: inset 0 -2px #00C6ED;
   box-shadow: inset 0 -2px #00C6ED;
}

.signUpButton:active {
   top: 1px;
   outline: none;
   -webkit-box-shadow: none;
   box-shadow: none;
}
div{
	position:relative;
	bottom:170px
}
.line{
	width: 5000px; 
    height: 60px;
    border-bottom: 1px solid gray;
}

.image{
	width:70px;
	height:57px;
}

a.no-uline { text-decoration:none; color:black; }

#modi{
	margin:0 auto;
}


</style>
</head>
<div class="line">
		<img src="sang/logo.png" class="image">
		
</div>
<body>
	

<form method="post" action="modify.jsp" class="signUp">
	<h1 class="signUpTitle">내 정보</h1>
   	<h2 class="signUpMo"><b>이름</b> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <%=dto.getName() %></h2>
   	<h2 class="signUpMo"><b>성별</b> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <%=dto.getGender() %></h2>
   	<h2 class="signUpMo"><b>생년월일</b> &nbsp&nbsp&nbsp <%=dto.getYear()%>년<%=dto.getMonth()%>월<%=dto.getDay()%>일</h2>
   	<h2 class="signUpMo"><b>주소</b> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <%=dto.getAdress() %> </h2>

   	<input type="button" value="회원정보 수정" class="signUpButton" id="modi" onclick = "location.href = 'modify.jsp' ">

   	
</form>
</html>