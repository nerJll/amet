<#assign ctx=request.contextPath />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title>预定界面</title>
		<link rel="icon" type="image/png" href="${ctx}/images/favicon.png">
		<link rel="stylesheet" type="text/css" href="${ctx}/css/amazeui.min.css">
		<link rel="stylesheet" type="text/css" href="${ctx}/css/amazeui.chosen.css"/>
		<link rel="stylesheet" type="text/css" href="${ctx}/css/order-base.css">
		<script type="text/javascript" src="${ctx}/js/jquery/jquery-2.1.1.min.js"></script>
		<script type="text/javascript" src="${ctx}/js/new-ui/amazeui.min.js"></script>
		<script type="text/javascript" src="${ctx}/js/new-ui/amazeui.chosen.min.js"></script>
		<script type="text/javascript" src="${ctx}/js/common/ban.js"></script>
		<script type="text/javascript" src="${ctx}/js/common/order-common.js"></script>
	</head>
	<body>
		<canvas></canvas>
		<header data-am-widget="header" class="am-header am-header-default" data-am-sticky>
		    <div class="am-header-left am-header-nav">
		        <a href="#left-link" class="">
		            <i class="am-header-icon am-icon-rocket"></i>
		         </a>
		    </div>
		
		    <h1 class="am-header-title">
		                  会议预订系统
		    </h1>
		
		    <div class="am-header-right am-header-nav">
		        <a href="#right-link" class="">
		            <i class="am-header-icon am-icon-bars"></i>
		        </a>
		    </div>
  		</header>
  		<div class="am-container">
  			<form class="am-form am-form-horizontal" id="myform" method="post" action="${ctx}/meet/save-meet" onsubmit="submitForm()">
  				<!--发起人-->
  				<div class="am-form-group">
					<label for="user-name" class="am-u-sm-3 am-form-label am-icon-user">&nbsp;&nbsp;发 起 人</label>
					<div class="am-u-sm-9">
						<select id="applyPerson" name="applyEmpNo" data-placeholder="选人" class="chosen-select" required>
							<option value="" disabled selected>选个背锅侠</option>
						  	<#list users as user>
						  		<option value="${user.userid}">${user.name}</option>
							</#list>
						</select>	
					<br><span style="color:red"><small>提示：请将发起人姓名也填入对应的会议室中，否则发起人将接收不到会议信息</small></span>
					</div>
				</div>
				<!--主题-->
				<div class="am-form-group">
					<label for="meetTheme" class="am-u-sm-3 am-form-label am-icon-tag">&nbsp;&nbsp;会议主题</label>
					<div class="am-u-sm-9">
						<input type="text" id="meetTheme" name="meetTheme" placeholder="会议主题" required>
					</div>
				</div>
				<!--时间段-->
				<div class="am-form-group">
					<label for="meetEmpNum" class="am-u-sm-3 am-form-label am-icon-clock-o">&nbsp;&nbsp;时间段</label>
					<input type="hidden" name="staTime" value="${staTime}">
					<input type="hidden" name="endTime" value="${endTime}">
					<div class="am-u-sm-9">
						<span>${staTime} ~ ${endTime}</span>
					</div>
				</div>
				<!--会议类型-->
				<div class="am-form-group">
					<label for="meetEmpNum" class="am-u-sm-3 am-form-label am-icon-tag">&nbsp;&nbsp;会议类型</label>
					<input type="hidden" name="meetType" value="${meetType}">
					<div class="am-u-sm-9">
						<span>${meetType}</span>
					</div>
				</div>
				<#list rooms as room>
					<div class="am-form-group">
						<input type="hidden" name="meetRoomId" value="${room.meetRoomId}">
						<input class="submit-person" type="hidden" name="gonghao">
						<label id="${room.meetRoomId}" for="meetEmpNum" class="am-u-sm-3 am-form-label am-icon-home">${room.meetRoomName}</label>
						<div class="am-u-sm-9">
							<select class="chosen-select" id="multiSel" data-placeholder="选择参会人员" multiple required>
								<optgroup label="总经办" class="总经办">
									<#list zjbs as zjb>
						  				<option value="${zjb.userid}">${zjb.name}</option>
									</#list>
								</optgroup>
								<optgroup label="采购部" class="采购部">
									<#list cgs as cg>
						  				<option value="${cg.userid}">${cg.name}</option>
									</#list>
								</optgroup>
								<optgroup label="研发部" class="研发部">
									<#list yfs as yf>
						  				<option value="${yf.userid}">${yf.name}</option>
									</#list>
								</optgroup>
								<optgroup label="流程与IT部" class="流程与IT部">
									<#list its as it>
						  				<option value="${it.userid}">${it.name}</option>
									</#list>
								</optgroup>
								<optgroup label="采购部" class="采购部">
									<#list cgs as cg>
						  				<option value="${cg.userid}">${cg.name}</option>
									</#list>
								</optgroup>
								<optgroup label="财务部" class="财务部">
									<#list cws as cw>
						  				<option value="${cw.userid}">${cw.name}</option>
									</#list>
								</optgroup>
								<optgroup label="人力资源及行政部" class="人力资源及行政部">
									<#list rlzys as rlzy>
						  				<option value="${rlzy.userid}">${rlzy.name}</option>
									</#list>
								</optgroup>
								<optgroup label="销售部" class="销售部">
									<#list xss as xs>
						  				<option value="${xs.userid}">${xs.name}</option>
									</#list>
								</optgroup>
								<optgroup label="市场" class="市场">
									<#list markets as market>
						  				<option value="${market.userid}">${market.name}</option>
									</#list>
								</optgroup>
								<optgroup label="品质管理部" class="品质管理部">
									<#list pzs as pz>
						  				<option value="${pz.userid}">${pz.name}</option>
									</#list>
								</optgroup>
								<optgroup label="设备部" class="设备部">
									<#list equps as equip>
						  				<option value="${equip.userid}">${equip.name}</option>
									</#list>
								</optgroup>
							</select>
						</div>
					</div>
				</#list>
    				
				<!--按钮-->
				<div class="am-form-group" id="flag">
					<div class="am-u-sm-6 am-u-sm-push-3">
						<input class="am-btn am-btn-success am-icon-check" type="submit" value="提交" >
						<!--<button class="am-btn am-btn-success am-icon-check" id="doc-confirm-toggle" type="button" onclick="submitForm()">&nbsp;&nbsp;确定</button>-->
					</div>
					<div class="am-u-sm-6">
						<button type="button" class="am-btn am-btn-danger" onclick="reMethod()">重置</button>
					</div>
				</div>
  			</form>
  		</div>
	</body>
</html>