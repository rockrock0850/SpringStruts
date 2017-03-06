<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<title>Speed</title>
<script type="text/javascript">
	$(document).ready(function(){
		for(x = 0; x < 1000; x++){
			var button = $('<button></button>').text(x + 1);
			button.attr('style', 'padding:5px;');
			$('#creator').append(button);
		}
	});
</script>
</head>
<body>
	<div id='creator'></div>
</body>
</html>