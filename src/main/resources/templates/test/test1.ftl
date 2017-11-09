<#assign ctx=request.contextPath />
<!DOCTYPE html>
<html>
<head>
<base id="ctx" href="${ctx}">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${ctx}/easyui/jquery.min.js"></script>
<style>
.warp {
	absolute: relative;
}

.main {
	width: 600px;
	height: 600px;
	border: 1px solid #cccccc;
	color: red;
	font-size: 22px;
}

.filter {
	width: 700px;
	height: 700px;
	background-color: black;
	position: absolute;
	left: 0;
	top: 0;
	filter: alpha(opacity = 50); /*IE滤镜，透明度50%* ie89 支持*/
	-moz-opacity: 0.5; /*Firefox私有，透明度50%*/
	opacity: 0.5; /*其他，透明度50%*/
	z-index: 99;
}

.close {
	font-size: 22px;
	color: red;
	margin: 50px auto;
}
</style>
<script>
	$(function() {
		alert("累好")
	})
</script>
</head>
<body>
	<h1>${ctx}</h1>
	<div class="warp">
		<div class="main">
			<div class="test" onclick="Filter();">弹出遮罩</div>
		</div>
		<div id="filter" class="filter">
			<span style="color:red">虚位以待</span>
		</div>
	</div>
	<script>
		var filter = document.getElementById("filter")
		function Filter() {
			filter.style.display = "block";
		}

		function Close() {
			filter.style.display = "none";
		}
	</script>
</body>
</html>