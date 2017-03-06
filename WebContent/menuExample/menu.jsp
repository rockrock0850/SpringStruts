<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function forward(url){
		window.location.href = url;
	};
</script>
</head>
<body>
<section>
	<div class="workbar">
		<button class="ctrl-btn loginbtn" onclick="">名片夾</button>
		<button class="ctrl-btn loginbtn" onclick="forward('../businessSchedule/schedule')">業務行程</button>
		<button class="ctrl-btn loginbtn" onclick="">訊息發送</button>  
	</div>
<!-- 	<div class="list-group"> -->
<%-- 		<a href="<c:url value="/primaryAccount/accountVerify"/>" class="list-group-item">企業申請審核</a> --%>
<%-- 		<a href="<c:url value="/primaryAccount/accountEffective"/>" class="list-group-item">企業有效帳號</a> --%>
<%-- 		<a href="<c:url value="/primaryAccount/accountInvalid"/>" class="list-group-item">企業無效帳號</a> --%>
<%-- 		<a href="<c:url value="/primaryAccount/accountFail"/>" class="list-group-item">企業不通過帳號</a> --%>
<!-- 	</div> -->
</body>
</html>