<#assign ctx=request.contextPath />
<!DOCTYPE html>
<html>
<head>
<base id="ctx" href="ctx">
<meta charset="UTF-8">
<title>会议审核</title>
<link rel="stylesheet" type="text/css" href="${ctx}/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="${ctx}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/bootstrap/js/bootstrap.min.js"></script>
<script>
function initVal(stutas){
	$("#status").val(stutas);
}
</script>
</head>
<body>
<div class="panel panel-default">
		<div style="text-align: center;" class="panel-heading">
			<font size=5px><b>会议审核</b></font>
		</div>
		<div class="panel-body">
			<div class="head">
			<form action="${ctx}/admin/index" method="Get">
					 <input	type="hidden" id="status" name="status" />
					<div class="row">
						<div class="col-md-1">
						<button type="submit" onclick="initVal('');" class="btn">刷新</button>
						</div>
						<div class="col-md-1">
						<button type="submit" onclick="initVal('待审核');" class="btn btn-warning">待审核</button>
						</div>
						<div class="col-md-1">
						<button type="submit" onclick="initVal('已通过');" class="btn btn-info">已通过</button>
						</div>
						<div class="col-md-1">
						<button type="submit" onclick="initVal('未通过');" class="btn btn-danger">未通过</button>
						</div>
					</div>
			</form>
				
				
			</div>
			<br>
			<form class="form-group">
				<table class="table table-bordered table-striped">
					<tr>
						<th style="text-align: center">序号</th>
						<th style="text-align: center">会议主题</th>
						<th style="text-align: center">会议时间</th>
						<th style="text-align: center">申请时间</th>
 						<th style="text-align: center">申请人</th>
 						<th style="text-align: center">会议状态</th>
						<th style="text-align: center">审核</th>
					</tr>
					<#list meets.list as meet>
					<tr>
						<td style="text-align: center">${meet_index+1}</td>
						<td style="text-align: center">${meet.meetTheme}</td>
						<td style="text-align: center">${meet.staTime?string('yyyy年MM月dd日 HH:mm')} ~ ${meet.endTime?string('HH:mm')}</td>
						<td style="text-align: center">${meet.meetCreateTime?string('yyyy年MM月dd日 HH:mm')}</td>
 						<td style="text-align: center">${meet.applyEmpName}</td>
 						<td style="text-align: center">${meet.meetState}</td>
						<td style="text-align: center"> 
						<#if meet.meetState == "待审核">
							<a href="${ctx}/admin/"
							id="example" class="btn btn-success" rel="popover"
							data-original-title="Bootstrap弹出框">详情</a>	
						<#else >
							<a href="${ctx}/admin/"
							id="example" class="btn btn-success" rel="popover"
							data-original-title="Bootstrap弹出框">详情</a>
						</#if> 
						</td>
					</tr>
					</#list>
				</table>
				<table style="font-size: 14px;">
					<tr>
						<td><#if meets.total !=0> <span>第${meets.pageNum}/${meets.pages}页</span></#if>
							<span>总记录数：${meets.total} <#if meets.total !=0>每页显示:${meets.pageSize} </#if> 
							<#if meets.pageNum!=1> <a href="${ctx}/admin/index?currentPage=1">[首页]</a> 
							<a href="${ctx}/admin/index?currentPage=${meets.pageNum-1}">[上一页]</a>
							</#if> 
							<#if meets.pageNum !=meets.pages && meets.pages!=0>
							 <a href="${ctx}/admin/index?currentPage=${meets.pageNum+1}">[下一页]</a>
								<a href="${ctx}/admin/index?currentPage=${meets.pages}">[尾页]</a>
							</#if>
						</span></td>
					</tr>
				</table>

			</form>


		</div>
	</div>
</body>
</html>