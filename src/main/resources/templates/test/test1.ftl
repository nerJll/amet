<#assign ctx=request.contextPath />
<!DOCTYPE html>
<html>
<head>
<base id="ctx" href="${ctx}">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${ctx}/easyui/jquery.min.js"></script>
<script>
$(function(){
	alert("累好")
})
</script>
</head>
<body>
<h1>${ctx}</h1>
</body>
</html>