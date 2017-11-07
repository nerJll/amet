<#assign ctx=request.contextPath />
<!DOCTYPE html>
<html>
<head>
<base id="ctx" href="${ctx}">
<meta charset="UTF-8">
<title>爱旭光伏-会议管理</title>
<link rel="stylesheet" type="text/css" href="${ctx}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${ctx}/easyui/themes/icon.css">
<script type="text/javascript" src="${ctx}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctx}/easyui/locale/easyui-lang-zh_CN.js"></script>
<script>
//页面加载启动
$(function(){
	for(var i=1;i<13;i++){
		showHidden(i)
	}
	/* var i =1;
	$("#aiko_"+i+"a").hide();
	$("#aiko_"+i+"d").hide();
    $("#aiko_"+i).hover(function () {
    	$("#aiko_"+i+"a").show();
    }, function () {
         $("#aiko_"+i+"a").hide();
    })
	$("#aiko_2a").hide();
	$("#aiko_2d").hide();
    $("#aiko_2").hover(function () {
    	$("#aiko_2a").show();
    }, function () {
         $("#aiko_2a").hide();
    }) */
})
//显示隐藏赋初值
function showHidden(i){
	$("#aiko_"+i+"a").hide();
	$("#aiko_"+i+"d").hide();
    $("#aiko_"+i).hover(function () {
    	$("#aiko_"+i+"a").show();
    }, function () {
         $("#aiko_"+i+"a").hide();
    })
}

//查询会议室
function queryRoom(){
	var st = $("#statime").val()
	var et = $("#endtime").val()
	var am = $("#audiomeet").val()
	if(st==""||et==""){
		$.messager.alert("消息提示","${ctx}"+"请选择完整的会议时间")
	}else{
		$.messager.alert("消息提示","${ctx}"+st+"--"+et+"--"+am)
	}
}
//预订会议
function applyMeet(){
	var st = $("#statime").val()
	var et = $("#endtime").val()
	var am = $("#audiomeet").val()
	if(st==""||et==""){
		$.messager.alert("消息提示","${ctx}"+"请选择完整的会议时间")
	}else{
		$.messager.alert("消息提示","${ctx}"+st+"--"+et+"--"+am)
	}
}
//查看会议室详情
function getRoomInfo(roomId){
	$('#roomInfo').window('open')
}
//选中框
function checkDiv(roomId){
	$("#"+roomId).css("border","2px solid red")
	$("#"+roomId+"c").hide()
	$("#"+roomId+"d").show()
}
//取消选中框
function RemoveCk(roomId){
	$("#"+roomId).css("border","0")
	$("#"+roomId+"d").hide()
	$("#"+roomId+"c").show()
}
</script>
</head>
<body class="easyui-layout">
<!-- 总 -->
<div class="easyui-layout" style="width: 100%; height: 680px;">
	<!-- 主页面 -->
	<div data-options="region:'center',title:'会议预订	',iconCls:'icon-tip'">
		<!-- 查询栏 -->
		<div style="width: 100%; height: 5%; border: 1px solid #F7F7F7;
			 background-color: #FAFAFA">
			<table>
				<tr>
					<td width="90"></td>
					<td><span style="font-size: 15px;">会议时间：</span></td>
					<td><input class="easyui-datetimebox" id="statime" value=""
						style="width: 200px; height: 30px">
					</td>
					<td><span style="font-size: 15px;">&nbsp;至&nbsp;</span></td>
					<td><input class="easyui-datetimebox" id="endtime" value=""
						style="width: 200px; height: 30px">
					</td>
					<td width="60"></td>
					<td><span style="font-size: 15px;">视频会议：</span></td>
					<td><input style="width: 17px; height: 17px" type="radio"
						id="audiomeet" name="audiomeet" checked value="是"> <span
						style="font-size: 15px;">是</span>
					</td>
					<td><input style="width: 17px; height: 17px" type="radio"
							id="audiomeet" name="audiomeet" value="否"> <span
							style="font-size: 15px;">否</span>
						</td>
					<td width="60"></td>
					<td><a href="javascript:void(0)" class="easyui-linkbutton"
						data-options="iconCls:'icon-search'"
						style="width: 80px; height: 30px" onclick="queryRoom()" 
						target="_blank">查询</a>
					</td>
					<td width="10"></td>
					<td><a style="width: 80px; height: 30px" onclick="applyMeet()" 
						class="easyui-linkbutton"
						data-options="iconCls:'icon-add'" target="_blank">预订</a>
					</td>
					<td width="10"></td>
					<td><a style="width: 90px; height: 30px" onclick="applyMeet()" 
						class="easyui-linkbutton"
						data-options="iconCls:'icon-ok'" target="_blank">我的申请</a>
				</tr>
			</table>
		</div>
		<!-- 会议室信息栏 -->
		<div style="width:100%;height:95%;">
			<!-- 左 -->
			<div style="width:84%;height:100%;float:left">
				<!-- 左-左 -->
				<div style="width:39%;height:100%;float:left">
					<div style="width: 100%; height: 35px; border: 1px solid #F7F7F7;
						border-radius:5px;
			 			background-color: #FFFFF0; margin:3px 0 0 0">
			 			<table style="width:100%;text-align:center;font-size:20px">
			 			<tr><td colspan="3">广东爱旭会议室</td></tr>
			 			<tr style="height:5px"></tr>
			 			<!-- 一排 -->
			 			<tr>
			 				<td>
			 					<div id="aiko_1" style="width:150px;height:105px;background-color:#9AFF9A;
			 					border-radius:8px;">
			 						<table style="width:100%;text-align:center;font-size:20px">
			 							<tr style="height:30px">
			 								<td colspan="3">
			 									<img alt="视频会议" src="${ctx}/images/camera1.png"
			 									 width=30px height=30px>
			 								</td>
			 							</tr>
			 							<tr><td colspan="3"><b>1#</b></td></tr>
			 							<tr>
			 								<td>
			 									<div id="aiko_1a">
				 									<div id="aiko_1b" style="float:left">
				 									<a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-search'"
														style="width: 60px; height: 30px" onclick="getRoomInfo('aiko_1')" 
														>详情</a>
													</div>
													<div id="aiko_1c" style="float:right">
				 									 <a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-ok'"
														style="width: 60px; height: 30px" onclick="checkDiv('aiko_1')" 
														>选中</a>
													</div>
													 <div id="aiko_1d" style="float:right">
													  <a href="javascript:void(0)" class="easyui-linkbutton"
														style="width: 60px; height: 30px" onclick="RemoveCk('aiko_1')" 
														>取消选中</a>
													 </div> 
												</div>
			 								</td>
			 							</tr>
			 						</table>
			 					</div>
			 				</td>
			 				<td>
			 					<div id="aiko_2" style="width:105px;height:105px;background-color:#9AFF9A;
			 					border-radius:8px;">
			 					<table style="width:100%;text-align:center;font-size:20px">
			 							<tr style="height:20px">
			 							</tr>
			 							<tr><td colspan="3"><b>2#</b></td></tr>
			 							<tr style="height:10px">
			 							<tr>
			 								<td>
			 									<div id="aiko_2a">
				 									<div id="aiko_2b" style="float:left">
				 									<a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-search'"
														style="width: 40px; height: 30px" onclick="getRoomInfo('aiko_2')" 
														></a>
													</div>
													<div id="aiko_2c" style="float:right">
				 									 <a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-ok'"
														style="width: 40px; height: 30px" onclick="checkDiv('aiko_2')" 
														></a>
													</div>
													 <div id="aiko_2d" style="float:right">
													  <a href="javascript:void(0)" class="easyui-linkbutton"
														style="width: 40px; height: 30px" onclick="RemoveCk('aiko_2')" 
														>取消</a>
													 </div> 
												</div>
			 								</td>
			 							</tr>
			 						</table>
			 					</div>
			 				</td>
			 				<td>
			 					<div id="aiko_3" style="width:105px;height:105px;background-color:#9AFF9A;
			 					border-radius:8px;">
			 						<table style="width:100%;text-align:center;font-size:20px">
			 							<tr style="height:25px">
			 								<td colspan="3">
			 									<img alt="视频会议" src="${ctx}/images/camera1.png"
			 									 width=25px height=25px>
			 								</td>
			 							</tr>
			 							<tr><td colspan="3"><b>3#</b></td></tr>
			 							<tr style="height:5px">
			 							<tr>
			 								<td>
			 									<div id="aiko_3a">
				 									<div id="aiko_3b" style="float:left">
				 									<a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-search'"
														style="width: 40px; height: 30px" onclick="getRoomInfo('aiko_3')" 
														></a>
													</div>
													<div id="aiko_3c" style="float:right">
				 									 <a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-ok'"
														style="width: 40px; height: 30px" onclick="checkDiv('aiko_3')" 
														></a>
													</div>
													 <div id="aiko_3d" style="float:right">
													  <a href="javascript:void(0)" class="easyui-linkbutton"
														style="width: 40px; height: 30px" onclick="RemoveCk('aiko_3')" 
														>取消</a>
													 </div> 
												</div>
			 								</td>
			 							</tr>
			 						</table>
			 					</div>
			 				</td>
			 			</tr>
			 			<tr style="height:15px"></tr>
			 			<!-- 二排 -->
			 			<tr>
			 				<td>
			 					<div id="aiko_4" style="width:150px;height:105px;background-color:#9AFF9A;
			 					border-radius:8px;">
			 						<table style="width:100%;text-align:center;font-size:20px">
			 							<tr style="height:30px">
			 							</tr>
			 							<tr><td colspan="3"><b>4#</b></td></tr>
			 							<tr>
			 								<td>
			 									<div id="aiko_4a">
				 									<div id="aiko_4b" style="float:left">
				 									<a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-search'"
														style="width: 60px; height: 30px" onclick="getRoomInfo('aiko_4')" 
														>详情</a>
													</div>
													<div id="aiko_4c" style="float:right">
				 									 <a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-ok'"
														style="width: 60px; height: 30px" onclick="checkDiv('aiko_4')" 
														>选中</a>
													</div>
													 <div id="aiko_4d" style="float:right">
													  <a href="javascript:void(0)" class="easyui-linkbutton"
														style="width: 60px; height: 30px" onclick="RemoveCk('aiko_4')" 
														>取消选中</a>
													 </div> 
												</div>
			 								</td>
			 							</tr>
			 						</table>
			 					</div>
			 				</td>
			 				<td>
			 					<div id="aiko_5" style="width:105px;height:105px;background-color:#9AFF9A;
			 					border-radius:8px;">
			 					<table style="width:100%;text-align:center;font-size:20px">
			 							<tr style="height:25px">
			 								<td colspan="3">
			 									<img alt="视频会议" src="${ctx}/images/camera1.png"
			 									 width=25px height=25px>
			 								</td>
			 							</tr>
			 							<tr><td colspan="3"><b>5#</b></td></tr>
			 							<tr>
			 								<td>
			 									<div id="aiko_5a">
				 									<div id="aiko_5b" style="float:left">
				 									<a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-search'"
														style="width: 40px; height: 30px" onclick="getRoomInfo('aiko_5')" 
														></a>
													</div>
													<div id="aiko_5c" style="float:right">
				 									 <a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-ok'"
														style="width: 40px; height: 30px" onclick="checkDiv('aiko_5')" 
														></a>
													</div>
													 <div id="aiko_5d" style="float:right">
													  <a href="javascript:void(0)" class="easyui-linkbutton"
														style="width: 40px; height: 30px" onclick="RemoveCk('aiko_5')" 
														>取消</a>
													 </div> 
												</div>
			 								</td>
			 							</tr>
			 						</table>
			 					</div>
			 				</td>
			 				<td>
			 					<div id="aiko_6" style="width:105px;height:105px;background-color:#9AFF9A;
			 					border-radius:8px;">
			 						<table style="width:100%;text-align:center;font-size:20px">
			 							<tr style="height:25px">
			 							</tr>
			 							<tr><td colspan="3"><b>6#</b></td></tr>
			 							<tr style="height:5px">
			 							<tr>
			 								<td>
			 									<div id="aiko_6a">
				 									<div id="aiko_6b" style="float:left">
				 									<a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-search'"
														style="width: 40px; height: 30px" onclick="getRoomInfo('aiko_6')" 
														></a>
													</div>
													<div id="aiko_6c" style="float:right">
				 									 <a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-ok'"
														style="width: 40px; height: 30px" onclick="checkDiv('aiko_6')" 
														></a>
													</div>
													 <div id="aiko_6d" style="float:right">
													  <a href="javascript:void(0)" class="easyui-linkbutton"
														style="width: 40px; height: 30px" onclick="RemoveCk('aiko_6')" 
														>取消</a>
													 </div> 
												</div>
			 								</td>
			 							</tr>
			 						</table>
			 					</div>
			 				</td>
			 			</tr>
			 			<tr style="height:15px"></tr>
			 			<!-- 三排 -->
			 			<tr>
			 				<td>
			 					<div id="aiko_7" style="width:150px;height:105px;background-color:#9AFF9A;
			 					border-radius:8px;">
			 						<table style="width:100%;text-align:center;font-size:20px">
			 							<tr style="height:30px">
			 							</tr>
			 							<tr><td colspan="3"><b>7#</b></td></tr>
			 							<tr>
			 								<td>
			 									<div id="aiko_7a">
				 									<div id="aiko_7b" style="float:left">
				 									<a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-search'"
														style="width: 60px; height: 30px" onclick="getRoomInfo('aiko_7')" 
														>详情</a>
													</div>
													<div id="aiko_7c" style="float:right">
				 									 <a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-ok'"
														style="width: 60px; height: 30px" onclick="checkDiv('aiko_7')" 
														>选中</a>
													</div>
													 <div id="aiko_7d" style="float:right">
													  <a href="javascript:void(0)" class="easyui-linkbutton"
														style="width: 60px; height: 30px" onclick="RemoveCk('aiko_7')" 
														>取消选中</a>
													 </div> 
												</div>
			 								</td>
			 							</tr>
			 						</table>
			 					</div>
			 				</td>
			 				<td>
			 					<div id="aiko_8" style="width:105px;height:105px;background-color:#9AFF9A;
			 					border-radius:8px;">
			 					<table style="width:100%;text-align:center;font-size:20px">
			 							<tr style="height:25px">
			 								<td colspan="3">
			 									<img alt="视频会议" src="${ctx}/images/camera1.png"
			 									 width=25px height=25px>
			 								</td>
			 							</tr>
			 							<tr><td colspan="3"><b>8#</b></td></tr>
			 							<tr>
			 								<td>
			 									<div id="aiko_8a">
				 									<div id="aiko_8b" style="float:left">
				 									<a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-search'"
														style="width: 40px; height: 30px" onclick="getRoomInfo('aiko_8')" 
														></a>
													</div>
													<div id="aiko_8c" style="float:right">
				 									 <a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-ok'"
														style="width: 40px; height: 30px" onclick="checkDiv('aiko_8')" 
														></a>
													</div>
													 <div id="aiko_8d" style="float:right">
													  <a href="javascript:void(0)" class="easyui-linkbutton"
														style="width: 40px; height: 30px" onclick="RemoveCk('aiko_8')" 
														>取消</a>
													 </div> 
												</div>
			 								</td>
			 							</tr>
			 						</table>
			 					</div>
			 				</td>
			 				<td>
			 					<div id="aiko_9" style="width:105px;height:105px;background-color:#9AFF9A;
			 					border-radius:8px;">
			 						<table style="width:100%;text-align:center;font-size:20px">
			 							<tr style="height:25px">
			 							</tr>
			 							<tr><td colspan="3"><b>9#</b></td></tr>
			 							<tr style="height:5px">
			 							<tr>
			 								<td>
			 									<div id="aiko_9a">
				 									<div id="aiko_9b" style="float:left">
				 									<a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-search'"
														style="width: 40px; height: 30px" onclick="getRoomInfo('aiko_9')" 
														></a>
													</div>
													<div id="aiko_9c" style="float:right">
				 									 <a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-ok'"
														style="width: 40px; height: 30px" onclick="checkDiv('aiko_9')" 
														></a>
													</div>
													 <div id="aiko_9d" style="float:right">
													  <a href="javascript:void(0)" class="easyui-linkbutton"
														style="width: 40px; height: 30px" onclick="RemoveCk('aiko_9')" 
														>取消</a>
													 </div> 
												</div>
			 								</td>
			 							</tr>
			 						</table>
			 					</div>
			 				</td>
			 			</tr>
			 			<tr style="height:15px"></tr>
			 			<!-- 四排 -->
			 			<tr>
			 				<td>
			 					<div id="aiko_10" style="width:150px;height:105px;background-color:#9AFF9A;
			 					border-radius:8px;">
			 						<table style="width:100%;text-align:center;font-size:20px">
			 							<tr style="height:30px">
			 							</tr>
			 							<tr><td colspan="3"><b>10#</b></td></tr>
			 							<tr>
			 								<td>
			 									<div id="aiko_10a">
				 									<div id="aiko_10b" style="float:left">
				 									<a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-search'"
														style="width: 60px; height: 30px" onclick="getRoomInfo('aiko_10')" 
														>详情</a>
													</div>
													<div id="aiko_10c" style="float:right">
				 									 <a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-ok'"
														style="width: 60px; height: 30px" onclick="checkDiv('aiko_10')" 
														>选中</a>
													</div>
													 <div id="aiko_10d" style="float:right">
													  <a href="javascript:void(0)" class="easyui-linkbutton"
														style="width: 60px; height: 30px" onclick="RemoveCk('aiko_10')" 
														>取消选中</a>
													 </div> 
												</div>
			 								</td>
			 							</tr>
			 						</table>
			 					</div>
			 				</td>
			 				<td>
			 					<div id="aiko_11" style="width:105px;height:105px;background-color:#9AFF9A;
			 					border-radius:8px;">
			 					<table style="width:100%;text-align:center;font-size:20px">
			 							<tr style="height:25px">
			 								<td colspan="3">
			 									<img alt="视频会议" src="${ctx}/images/camera1.png"
			 									 width=25px height=25px>
			 								</td>
			 							</tr>
			 							<tr><td colspan="3"><b>11#</b></td></tr>
			 							<tr>
			 								<td>
			 									<div id="aiko_11a">
				 									<div id="aiko_11b" style="float:left">
				 									<a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-search'"
														style="width: 40px; height: 30px" onclick="getRoomInfo('aiko_11')" 
														></a>
													</div>
													<div id="aiko_11c" style="float:right">
				 									 <a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-ok'"
														style="width: 40px; height: 30px" onclick="checkDiv('aiko_11')" 
														></a>
													</div>
													 <div id="aiko_11d" style="float:right">
													  <a href="javascript:void(0)" class="easyui-linkbutton"
														style="width: 40px; height: 30px" onclick="RemoveCk('aiko_11')" 
														>取消</a>
													 </div> 
												</div>
			 								</td>
			 							</tr>
			 						</table>
			 					</div>
			 				</td>
			 				<td>
			 					<div id="aiko_12" style="width:105px;height:105px;background-color:#9AFF9A;
			 					border-radius:8px;">
			 						<table style="width:100%;text-align:center;font-size:20px">
			 							<tr style="height:25px">
			 							</tr>
			 							<tr><td colspan="3"><b>12#</b></td></tr>
			 							<tr style="height:5px">
			 							<tr>
			 								<td>
			 									<div id="aiko_12a">
				 									<div id="aiko_12b" style="float:left">
				 									<a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-search'"
														style="width: 40px; height: 30px" onclick="getRoomInfo('aiko_12')" 
														></a>
													</div>
													<div id="aiko_12c" style="float:right">
				 									 <a href="javascript:void(0)" class="easyui-linkbutton"
														data-options="iconCls:'icon-ok'"
														style="width: 40px; height: 30px" onclick="checkDiv('aiko_12')" 
														></a>
													</div>
													 <div id="aiko_12d" style="float:right">
													  <a href="javascript:void(0)" class="easyui-linkbutton"
														style="width: 40px; height: 30px" onclick="RemoveCk('aiko_12')" 
														>取消</a>
													 </div> 
												</div>
			 								</td>
			 							</tr>
			 						</table>
			 					</div>
			 				</td>
			 			</tr>
			 			</table>	
			 		</div>
				</div>
				<!-- 左-右 -->
				<div style="width:59%;height:100%;float:right">
					<div style="width: 100%; height: 35px; border: 1px solid #F7F7F7;
						border-radius:5px;	
			 			background-color: #FFFFF0; margin:3px 0 0 0">
			 			<table style="width:100%;text-align:center;font-size:20px">
			 			<tr><td>浙江爱旭会议室</td></tr>
			 			</table>	
			 		</div>
				</div>
			</div>
			<!-- 右 -->
			<div style="width:14%;height:100%;float:right">
				<div style="width: 100%; height: 35px; border: 1px solid #F7F7F7;
						border-radius:5px;
			 			background-color: #FFFFF0; margin:3px 0 0 0">
			 		<table style="width:100%;text-align:center;font-size:20px">
			 		<tr><td>端口号</td></tr>
			 		</table>	
			 	</div>
			</div>
		</div>
	</div>
</div>
	<div id="roomInfo" class="easyui-window" title="会议室详情" 
		data-options="modal:true,closed:true,iconCls:'icon-save'"
	 style="width:550px;height:300px;">
		会议室信息
	</div>
</body>
</html>