<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/rwd.css">
<link href="${pageContext.request.contextPath}/css/base.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}//locales/bootstrap-datetimepicker.zh-TW.js"></script>
<title>購物</title>
<script type="text/javascript">
	$(function() {
	});

	function deleteRecord(){
	};

	function change(page) {
		var url;
		if(page > 0){
			window.location.href = 'record';
		}else{
			window.location.href = 'schedule';
		}
	};
</script>
</head>
<body>
<section>
	<div class="workbar">
		<%@include file="menu.jsp" %> 
	</div>
 
	<div class="searchbox">
		<div class="searchbox02">
			<button class="subbtn loginbtn02" onclick="change('0')">業務行程</button>
			<button class="subbtn loginbtn02" onclick="change('1')">行程記錄</button>
		</div>
		<div class="searchbox03">
			<input name="textfield" type="search" id="textfield" placeholder="請輸入搜尋關鍵字">
			<a href="#" class="icsearch" title="搜尋"></a>
		</div>
	</div>
  
	<table class="worktable">
		<thead>
			<tr>
				<th>管理</th>
				<th>日期</th>
				<th>姓名/暱稱</th>
				<th>地點</th>
				<th>項目</th>
			</tr>
		</thead>
			<tr>
				<td data-label="管理" onclick="deleteRecord()"><a href='#'>刪除</a></td>
				<td data-label="日期">2016/03-31 - 2016/04/02</td>
				<td data-label="姓名/暱稱">王小華</td>
				<td data-label="地點">台北車站西站</td>
				<td data-label="項目">業務介紹</td>
			</tr>
		<tbody>
		</tbody>
	</table>
</section> 

<!-- editModal -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" 
     aria-labelledby="editModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Body -->
            <div class="modal-body">
				<form class="form-horizontal" id='editForm' role="form">
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">公司名稱:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="公司名稱">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">姓名:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="姓名">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">暱稱:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="暱稱">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">起:</label>
						<div class="col-sm-4">
							<div class="input-group date form_date" data-date="" data-date-format="yyyy/mm/dd" data-link-field="date1" data-link-format="yyyy/mm/dd">
								<input class="form-control" type="text" placeholder="日期" readonly> 
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
							<input type="text" id="date1" value="" style='display: none;' />
						</div>
						<div class="col-sm-4">
							<div class="input-group date form_time" data-date="" data-date-format="hh:ii" data-link-field="time1" data-link-format="hh:ii">
			                    <input class="form-control" type="text" placeholder="時間" readonly>
								<span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
							</div>
							<input type="text" id="time1" value="" style='display: none;' />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">迄:</label>
						<div class="col-sm-4">
							<div class="input-group date form_date" data-date="" data-date-format="yyyy/mm/dd" data-link-field="date2" data-link-format="yyyy/mm/dd">
								<input class="form-control" type="text" placeholder="日期" readonly> 
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
							<input type="text" id="date2" value="" style='display: none;' />
						</div>
						<div class="col-sm-4">
							<div class="input-group date form_time" data-date="" data-date-format="hh:ii" data-link-field="time2" data-link-format="hh:ii">
			                    <input class="form-control" type="text" placeholder="時間" readonly>
								<span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
							</div>
							<input type="text" id="time2" value="" style='display: none;' />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">地點:</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" placeholder="地點">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">送禮:</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" placeholder="送禮">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">預定項目:</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" placeholder="預定項目">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">備註:</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" placeholder="備註">
						</div>
					</div>
				</form>
			</div>
            <!-- Modal Footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">確定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>