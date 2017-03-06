<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="locale" value="${not empty param.locale ? param.locale : not empty locale ? locale : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${locale}" />
<fmt:setBundle basename="com.utility.web.i18n.properties.messages"  var="language"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="${locale}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Locale</title>
</head>
<body>
        <form style='display:none;'>
            <select id="locale" name="locale" onchange="submit()">
                <option value="en_US" ${locale == 'en_US' ? 'selected' : ''}>English</option>
                <option value="zh_CN" ${locale == 'zh_CN' ? 'selected' : ''}>CN</option>
                <option value="zh_TW" ${locale == 'zh_TW' ? 'selected' : ''}>TW</option>
            </select>
        </form>
        <div align='right'>
			<a href="?locale=en_US">English</a>|
			<a href="?locale=zh_CN">CN</a>|
			<a href="?locale=zh_TW">TW</a>
		</div>
        <form method="post">
            <label for="username"><fmt:message key="str" bundle="${language}" var='user'/>${user}:</label>
            <input type="text" id="username" name="username" value='${user}'>
            <br>
            <label for="password"><fmt:message key="str" bundle="${language}" var='psd'/>${psd}:</label>
            <input type="text" id="password" name="password" value='${psd}'>
            <br>
            <fmt:message key="str" var="button" bundle="${language}"/>
            <input type="submit" name="submit" value="${button}">
        </form>
</body>
</html>