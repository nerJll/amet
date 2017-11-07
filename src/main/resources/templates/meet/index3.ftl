<#assign ctx=request.contextPath />
<!DOCTYPE html>
<html>
<head>
<base id="ctx" href="${ctx}">
<meta charset="UTF-8">
<title>爱旭光伏-会议管理</title>
<link rel="stylesheet" type="text/css"
	href="${ctx}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/easyui/themes/icon.css">
<script type="text/javascript" src="${ctx}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${ctx}/easyui/locale/easyui-lang-zh_CN.js"></script>
<script>
	//页面加载启动
	$(function() {
		$('#appMeet').linkbutton('disable');
		
		for(var i=1; i<13; i++){
			$('#queroom'+i).attr('title','查询会议室信息')
			$('#selectroom'+i).attr('title','选中')
			$('#disecroom'+i).attr('title','取消选中')
		}
		
		for (var i = 1; i < 13; i++) {
			showHidden(i)
		}
		for (var i = 1; i < 17; i++) {
			showHiddenXu(i)
		}
		for (var i = 1; i < 9; i++) {
			showHiddenDK(i)
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
	function showHidden(i) {
		$("#aiko_" + i + "a").hide();
		$("#aiko_" + i + "c").hide();
		$("#aiko_" + i + "d").hide();
		$("#aiko_" + i).hover(function() {
			$("#aiko_" + i + "a").show();
		}, function() {
			$("#aiko_" + i + "a").hide();
		})
	}
	function showHiddenXu(i) {
		$("#aixu_" + i + "a").hide();
		$("#aixu_" + i + "d").hide();
		$("#aixu_" + i).hover(function() {
			$("#aixu_" + i + "a").show();
		}, function() {
			$("#aixu_" + i + "a").hide();
		})
	}
	function showHiddenDK(i) {
		$("#dk_" + i + "a").hide();
		$("#dk_" + i + "d").hide();
		$("#dk_" + i + "e").hide();
		$("#dk_" + i).hover(function() {
			$("#dk_" + i + "a").show();
			$("#dk_" + i + "e").show();
		}, function() {
			$("#dk_" + i + "a").hide();
			$("#dk_" + i + "e").hide();
		})
	}

	//查询会议室
	function queryRoom() {
		var st = $("#statime").val()
		var et = $("#endtime").val()
		var am = $("#audiomeet").val()
		if (st == "" || et == "") {
			$.messager.alert("消息提示", "${ctx}" + "请选择完整的会议时间")
			$("#aiko_1").css("background-color", "red")
			$("#aiko_1c").hide()
			$("#aiko_1d").hide()
			$('#appMeet').linkbutton('enable');
		} else {
			$.messager.alert("消息提示", "${ctx}" + st + "--" + et + "--" + am)
		}
	}
	//预订会议
	function applyMeet() {
		var st = $("#statime").val()
		var et = $("#endtime").val()
		var am = $("#audiomeet").val()
		if (st == "" || et == "") {
			$.messager.alert("消息提示", "${ctx}" + "请选择完整的会议时间")
		} else {
			$.messager.alert("消息提示", "${ctx}" + st + "--" + et + "--" + am)
		}
	}
	//查看会议室详情
	function getRoomInfo(roomId) {
		$('#roomInfo').window('open')
	}
	//选中框
	function checkDiv(roomId) {
		$("#" + roomId).css("border", "2px solid red")
		$("#" + roomId + "c").hide()
		$("#" + roomId + "d").show()
	}
	//取消选中框
	function RemoveCk(roomId) {
		$("#" + roomId).css("border", "0")
		$("#" + roomId + "c").show()
		$("#" + roomId + "d").hide()
	}
</script>
</head>
<body class="easyui-layout">
	<!-- 总 -->
	<div class="easyui-layout" style="width: 100%; height: 680px;">
		<!-- 主页面 -->
		<div data-options="region:'center',title:'会议预订	',iconCls:'icon-tip'">
			<!-- 查询栏 -->
			<div
				style="width: 100%; height: 5%; border: 1px solid #F7F7F7; background-color: #FAFAFA">
				<table>
					<tr>
						<td width="90"></td>
						<td><span style="font-size: 15px;">会议时间：</span></td>
						<td><input class="easyui-datetimebox" id="statime" value=""
							style="width: 200px; height: 30px"></td>
						<td><span style="font-size: 15px;">&nbsp;至&nbsp;</span></td>
						<td><input class="easyui-datetimebox" id="endtime" value=""
							style="width: 200px; height: 30px"></td>
						<td width="60"></td>
						<td><span style="font-size: 15px;">视频会议：</span></td>
						<td><input style="width: 17px; height: 17px" type="radio"
							id="audiomeet" name="audiomeet" checked value="是"> <span
							style="font-size: 15px;">是</span></td>
						<td><input style="width: 17px; height: 17px" type="radio"
							id="audiomeet" name="audiomeet" value="否"> <span
							style="font-size: 15px;">否</span></td>
						<td width="60"></td>
						<td><a href="javascript:void(0)" class="easyui-linkbutton"
							data-options="iconCls:'icon-search',plain:true"
							style="width: 80px; height: 30px" onclick="queryRoom()"
							target="_blank">查询</a></td>
						<td width="10"></td>
						<td><a style="width: 80px; height: 30px" id="appMeet"
							onclick="applyMeet()" class="easyui-linkbutton"
							data-options="iconCls:'icon-add',plain:true" target="_blank">预订</a>
						</td>
						<td width="10"></td>
						<td><a style="width: 90px; height: 30px"
							onclick="applyMeet()" class="easyui-linkbutton"
							data-options="iconCls:'icon-ok',plain:true" target="_blank">我的申请</a>
					</tr>
				</table>
			</div>
			<!-- 会议室信息栏 -->
			<div style="width: 100%; height: 95%;">
				<!-- 左 -->
				<div style="width: 84%; height: 100%; float: left">
					<!-- 左-左 -->
					<div style="width: 39%; height: 100%; float: left">
						<div
							style="width: 100%; height: 35px; border: 1px solid #FFEFDB; border-radius: 5px; background-color: #FFFFF0; margin: 3px 0 0 0">
							<table style="width: 100%; text-align: center; font-size: 20px">
								<tr>
									<td colspan="3">广东爱旭会议室</td>
								</tr>
								<tr style="height: 5px"></tr>
								<!-- 一排 -->
								<tr>
									<td rowspan="2">
										<div id="aiko_1"
											style="width: 150px; height: 200px; background-color: #FFE4B5;">
											<table
												style="width: 100%; text-align: center; font-size: 30px">
												<tr style="height: 40px">
													<td colspan="3"><img alt="视频会议"
														src="${ctx}/images/camera4.png" width=40px height=40px>
													</td>
												</tr>
												<tr style="height: 10px"></tr>
												<tr>
													<td colspan="3"><b>1#</b></td>
												</tr>
												<tr style="height: 10px"></tr>
												<tr>
													<td>
														<div id="aiko_1a">
															<div id="aiko_1b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search',plain:true"
																	style="width: 60px; height: 60px" id='queroom1'
																	onclick="getRoomInfo('aiko_1')"></a>
															</div>
															<div id="aiko_1c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok',plain:true"
																	style="width: 60px; height: 60px" id='selectroom1'
																	onclick="checkDiv('aiko_1')"></a>
															</div>
														</div>
														<div id="aiko_1d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																data-options="iconCls:'icon-ok',plain:true"
																style="width: 60px; height: 60px" id='disecroom1'
																onclick="RemoveCk('aiko_1')"></a>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aiko_2"
											style="width: 130px; height: 100px; background-color: #FFE4B5;">
											<table
												style="width: 100%; text-align: center; font-size: 25px">
												<tr style="height: 10px"></tr>
												<tr>
													<td colspan="3"><b>2#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aiko_2a">
															<div id="aiko_2b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search',plain:true"
																	style="width: 60px; height: 40px" id='queroom2'
																	onclick="getRoomInfo('aiko_2')"></a>
															</div>
															<div id="aiko_2c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok',plain:true"
																	style="width: 60px; height: 40px" id='selectroom2'
																	onclick="checkDiv('aiko_2')"></a>
															</div>
														</div>
														<div id="aiko_2d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																data-options="iconCls:'icon-ok',plain:true"
																style="width: 60px; height: 40px" id='disecroom2'
																onclick="RemoveCk('aiko_2')"></a>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aiko_3"
											style="width: 130px; height: 100px; background-color: #FFE4B5;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 25px">
													<td colspan="3"><img alt="视频会议"
														src="${ctx}/images/camera4.png" width=25px height=25px>
													</td>
												</tr>
												<tr>
													<td colspan="3"><b>3#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aiko_3a">
															<div id="aiko_3b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search',plain:true"
																	style="width: 60px; height: 30px" id='queroom3'
																	onclick="getRoomInfo('aiko_3')"></a>
															</div>
															<div id="aiko_3c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok',plain:true"
																	style="width: 60px; height: 30px" id='selectroom3'
																	onclick="checkDiv('aiko_3')"></a>
															</div>
														</div>
														<div id="aiko_3d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																data-options="iconCls:'icon-ok',plain:true"
																style="width: 60px; height: 30px" id='disecroom3'
																onclick="RemoveCk('aiko_3')"></a>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
								<!-- 二排 -->
								<tr>
									<td>
										<div id="aiko_4"
											style="width: 130px; height: 100px; background-color: #FFE4B5;">
											<table
												style="width: 100%; text-align: center; font-size: 25px">
												<tr height=10px></tr>
												<tr>
													<td colspan="3"><b>4#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aiko_4a">
															<div id="aiko_4b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search',plain:true"
																	style="width: 60px; height: 40px" id='queroom4'
																	onclick="getRoomInfo('aiko_4')"></a>
															</div>
															<div id="aiko_4c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok',plain:true"
																	style="width: 60px; height: 40px" id='selectroom4'
																	onclick="checkDiv('aiko_4')"></a>
															</div>
														</div>
														<div id="aiko_4d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																data-options="iconCls:'icon-ok',plain:true"
																style="width: 60px; height: 40px" id='disecroom4'
																onclick="RemoveCk('aiko_4')"></a>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aiko_5"
											style="width: 130px; height: 100px; background-color: #FFE4B5;">
											<table
												style="width: 100%; text-align: center; font-size: 25px">
												<tr height=10px></tr>
												<tr>
													<td colspan="3"><b>5#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aiko_5a">
															<div id="aiko_5b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search',plain:true"
																	style="width: 60px; height: 40px" id='queroom5'
																	onclick="getRoomInfo('aiko_5')"></a>
															</div>
															<div id="aiko_5c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok',plain:true"
																	style="width: 60px; height: 40px" id='selectroom5'
																	onclick="checkDiv('aiko_5')"></a>
															</div>
														</div>
														<div id="aiko_5d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																data-options="iconCls:'icon-ok',plain:true"
																style="width: 60px; height: 40px" id='disecroom5'
																onclick="RemoveCk('aiko_5')"></a>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
								<!-- 三排 -->
								<tr>
									<td>
										<div id="aiko_6"
											style="width: 150px; height: 100px; background-color: #FFE4B5; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 25px">
												<tr height=10px></tr>
												<tr>
													<td colspan="3"><b>6#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aiko_6a">
															<div id="aiko_6b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search',plain:true"
																	style="width: 60px; height: 40px" id='queroom6'
																	onclick="getRoomInfo('aiko_6')"></a>
															</div>
															<div id="aiko_6c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok',plain:true"
																	style="width: 60px; height: 40px" id='selectroom6'
																	onclick="checkDiv('aiko_6')"></a>
															</div>
														</div>
														<div id="aiko_6d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																data-options="iconCls:'icon-ok',plain:true"
																style="width: 60px; height: 40px" id='disecroom6'
																onclick="RemoveCk('aiko_6')"></a>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td colspan='2'>
										<div id="aiko_7"
											style="width: 273px; height: 100px; background-color: #FFE4B5; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
													<tr style="height: 25px">
													<td colspan="3"><img alt="视频会议"
														src="${ctx}/images/camera4.png" width=25px height=25px>
													</td>
												</tr>
												<tr>
													<td colspan="3"><b>7#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aiko_7a">
															<div id="aiko_7b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search',plain:true"
																	style="width: 120px; height: 30px" id='queroom7'
																	onclick="getRoomInfo('aiko_7')"></a>
															</div>
															<div id="aiko_7c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok',plain:true"
																	style="width: 120px; height: 30px" id='selectroom7'
																	onclick="checkDiv('aiko_7')"></a>
															</div>
														</div>
														<div id="aiko_7d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																data-options="iconCls:'icon-ok',plain:true"
																style="width: 120px; height: 30px" id='disecroom7'
																onclick="RemoveCk('aiko_7')"></a>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
								<!-- 五排 -->
								<tr>
									<td>
										<div id="aiko_10"
											style="width: 145px; height: 130px; background-color: #FFE4B5; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 25px">
												<tr height=20px></tr>
												<tr>
													<td colspan="3"><b>10#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aiko_10a">
															<div id="aiko_10b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search',plain:true"
																	style="width: 60px; height: 60px" id='queroom9'
																	onclick="getRoomInfo('aiko_10')"></a>
															</div>
															<div id="aiko_10c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok',plain:true"
																	style="width: 60px; height: 60px" id='selectroom9'
																	onclick="checkDiv('aiko_10')"></a>
															</div>
														</div>
														<div id="aiko_10d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																data-options="iconCls:'icon-ok',plain:true"
																style="width: 60px; height: 60px" id='disecroom9'
																onclick="RemoveCk('aiko_10')"></a>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aiko_11"
											style="width: 135px; height: 130px; background-color: #FFE4B5; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 25px">
												<tr>
													<td colspan="3"><img alt="视频会议"
														src="${ctx}/images/camera4.png" width=30px height=30px>
													</td>	
												</tr>
												<tr>
													<td colspan="3"><b>11#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aiko_11a">
															<div id="aiko_11b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search',plain:true"
																	style="width: 60px; height:40px" id='queroom9'
																	onclick="getRoomInfo('aiko_11')"></a>
															</div>
															<div id="aiko_11c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok',plain:true"
																	style="width: 60px; height: 40px" id='selectroom9'
																	onclick="checkDiv('aiko_11')"></a>
															</div>
														</div>
														<div id="aiko_11d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																data-options="iconCls:'icon-ok',plain:true"
																style="width: 60px; height: 40px" id='disecroom9'
																onclick="RemoveCk('aiko_11')"></a>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aiko_12"
											style="width: 130px; height: 130px; background-color: #FFE4B5; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 25px">
												<tr height=20px></tr>
												<tr>
													<td colspan="3"><b>12#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aiko_12a">
															<div id="aiko_12b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search',plain:true"
																	style="width: 60px; height: 60px" id='queroom9'
																	onclick="getRoomInfo('aiko_12')"></a>
															</div>
															<div id="aiko_12c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok',plain:true"
																	style="width: 60px; height: 60px" id='selectroom9'
																	onclick="checkDiv('aiko_12')"></a>
															</div>
														</div>
														<div id="aiko_12d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																data-options="iconCls:'icon-ok',plain:true"
																style="width: 60px; height: 60px" id='disecroom9'
																onclick="RemoveCk('aiko_12')"></a>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
								<!-- 四排 -->
								<tr>
									<td colspan='2'>
										<div id="aiko_8"
											style="width: 290px; height: 100px; background-color: #FFE4B5; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
													<tr style="height: 25px">
													<td colspan="3"><img alt="视频会议"
														src="${ctx}/images/camera4.png" width=25px height=25px>
													</td>
												</tr>
												<tr>
													<td colspan="3"><b>8#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aiko_8a">
															<div id="aiko_8b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search',plain:true"
																	style="width: 120px; height: 30px" id='queroom8'
																	onclick="getRoomInfo('aiko_8')"></a>
															</div>
															<div id="aiko_8c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok',plain:true"
																	style="width: 120px; height: 30px" id='selectroom8'
																	onclick="checkDiv('aiko_8')"></a>
															</div>
														</div>
														<div id="aiko_8d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																data-options="iconCls:'icon-ok',plain:true"
																style="width: 120px; height: 30px" id='disecroom8'
																onclick="RemoveCk('aiko_8')"></a>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aiko_9"
											style="width: 130px; height: 100px; background-color: #FFE4B5; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 25px">
												<tr height=10px></tr>
												<tr>
													<td colspan="3"><b>9#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aiko_9a">
															<div id="aiko_9b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search',plain:true"
																	style="width: 60px; height: 40px" id='queroom9'
																	onclick="getRoomInfo('aiko_9')"></a>
															</div>
															<div id="aiko_9c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok',plain:true"
																	style="width: 60px; height: 40px" id='selectroom9'
																	onclick="checkDiv('aiko_9')"></a>
															</div>
														</div>
														<div id="aiko_9d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																data-options="iconCls:'icon-ok',plain:true"
																style="width: 60px; height: 40px" id='disecroom9'
																onclick="RemoveCk('aiko_9')"></a>
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
					<div style="width: 59%; height: 100%; float: right">
						<div
							style="width: 100%; height: 35px; border: 1px solid #F7F7F7; border-radius: 5px; background-color: #FFFFF0; margin: 3px 0 0 0">
							<table style="width: 100%; text-align: center; font-size: 20px">
								<tr>
									<td colspan="4">浙江爱旭会议室</td>
								</tr>
								<tr style="height: 5px"></tr>
								<!-- 一排 -->
								<tr>
									<td>
										<div id="aixu_1"
											style="width: 150px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 30px">
												</tr>
												<tr>
													<td colspan="4"><b>1#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aixu_1a">
															<div id="aixu_1b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 60px; height: 30px"
																	onclick="getRoomInfo('aixu_1')">详情</a>
															</div>
															<div id="aixu_1c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 60px; height: 30px"
																	onclick="checkDiv('aixu_1')">选中</a>
															</div>
															<div id="aixu_1d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 60px; height: 30px" id='disecroom'
																	onclick="RemoveCk('aixu_1')">取消选中</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aixu_2"
											style="width: 120px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 25px">
													<td colspan="3"><img alt="视频会议"
														src="${ctx}/images/camera4.png" width=25px height=25px>
													</td>
												</tr>
												<tr>
													<td colspan="3"><b>2#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aixu_2a">
															<div id="aixu_2b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 40px; height: 30px"
																	onclick="getRoomInfo('aixu_2')"></a>
															</div>
															<div id="aixu_2c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 40px; height: 30px"
																	onclick="checkDiv('aixu_2')"></a>
															</div>
															<div id="aixu_2d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 40px; height: 30px"
																	onclick="RemoveCk('aixu_2')">取消</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aixu_3"
											style="width: 120px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 25px">
												</tr>
												<tr>
													<td colspan="3"><b>3#</b></td>
												</tr>
												<tr style="height: 5px">
												<tr>
													<td>
														<div id="aixu_3a">
															<div id="aixu_3b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 40px; height: 30px"
																	onclick="getRoomInfo('aixu_3')"></a>
															</div>
															<div id="aixu_3c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 40px; height: 30px"
																	onclick="checkDiv('aixu_3')"></a>
															</div>
															<div id="aixu_3d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 40px; height: 30px"
																	onclick="RemoveCk('aixu_3')">取消</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aixu_4"
											style="width: 150px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 30px">
												</tr>
												<tr>
													<td colspan="4"><b>4#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aixu_4a">
															<div id="aixu_4b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 60px; height: 30px"
																	onclick="getRoomInfo('aixu_4')">详情</a>
															</div>
															<div id="aixu_4c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 60px; height: 30px"
																	onclick="checkDiv('aixu_4')">选中</a>
															</div>
															<div id="aixu_4d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 60px; height: 30px"
																	onclick="RemoveCk('aixu_4')">取消选中</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
								<tr style="height: 15px"></tr>
								<!-- 二排 -->
								<tr>
									<td>
										<div id="aixu_5"
											style="width: 150px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 30px">
												</tr>
												<tr>
													<td colspan="4"><b>5#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aixu_5a">
															<div id="aixu_5b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 60px; height: 30px"
																	onclick="getRoomInfo('aixu_5')">详情</a>
															</div>
															<div id="aixu_5c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 60px; height: 30px"
																	onclick="checkDiv('aixu_5')">选中</a>
															</div>
															<div id="aixu_5d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 60px; height: 30px"
																	onclick="RemoveCk('aixu_5')">取消选中</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aixu_6"
											style="width: 120px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 25px">
													<td colspan="3"><img alt="视频会议"
														src="${ctx}/images/camera4.png" width=25px height=25px>
													</td>
												</tr>
												<tr>
													<td colspan="3"><b>6#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aixu_6a">
															<div id="aixu_6b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 40px; height: 30px"
																	onclick="getRoomInfo('aixu_6')"></a>
															</div>
															<div id="aixu_6c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 40px; height: 30px"
																	onclick="checkDiv('aixu_6')"></a>
															</div>
															<div id="aixu_6d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 40px; height: 30px"
																	onclick="RemoveCk('aixu_6')">取消</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aixu_7"
											style="width: 120px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 25px">
												</tr>
												<tr>
													<td colspan="3"><b>7#</b></td>
												</tr>
												<tr style="height: 5px">
												<tr>
													<td>
														<div id="aixu_7a">
															<div id="aixu_7b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 40px; height: 30px"
																	onclick="getRoomInfo('aixu_7')"></a>
															</div>
															<div id="aixu_7c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 40px; height: 30px"
																	onclick="checkDiv('aixu_7')"></a>
															</div>
															<div id="aixu_7d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 40px; height: 30px"
																	onclick="RemoveCk('aixu_7')">取消</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aixu_8"
											style="width: 150px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 30px">
												</tr>
												<tr>
													<td colspan="4"><b>8#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aixu_8a">
															<div id="aixu_8b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 60px; height: 30px"
																	onclick="getRoomInfo('aixu_8')">详情</a>
															</div>
															<div id="aixu_8c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 60px; height: 30px"
																	onclick="checkDiv('aixu_8')">选中</a>
															</div>
															<div id="aixu_8d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 60px; height: 30px"
																	onclick="RemoveCk('aixu_8')">取消选中</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
								<tr style="height: 15px"></tr>
								<!-- 三排 -->
								<tr>
									<td>
										<div id="aixu_9"
											style="width: 150px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 30px">
												</tr>
												<tr>
													<td colspan="4"><b>9#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aixu_9a">
															<div id="aixu_9b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 60px; height: 30px"
																	onclick="getRoomInfo('aixu_9')">详情</a>
															</div>
															<div id="aixu_9c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 60px; height: 30px"
																	onclick="checkDiv('aixu_9')">选中</a>
															</div>
															<div id="aixu_9d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 60px; height: 30px"
																	onclick="RemoveCk('aixu_9')">取消选中</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aixu_10"
											style="width: 120px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 25px">
													<td colspan="3"><img alt="视频会议"
														src="${ctx}/images/camera4.png" width=25px height=25px>
													</td>
												</tr>
												<tr>
													<td colspan="3"><b>10#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aixu_10a">
															<div id="aixu_10b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 40px; height: 30px"
																	onclick="getRoomInfo('aixu_10')"></a>
															</div>
															<div id="aixu_10c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 40px; height: 30px"
																	onclick="checkDiv('aixu_10')"></a>
															</div>
															<div id="aixu_10d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 40px; height: 30px"
																	onclick="RemoveCk('aixu_10')">取消</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aixu_11"
											style="width: 120px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 25px">
												</tr>
												<tr>
													<td colspan="3"><b>11#</b></td>
												</tr>
												<tr style="height: 5px">
												<tr>
													<td>
														<div id="aixu_11a">
															<div id="aixu_11b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 40px; height: 30px"
																	onclick="getRoomInfo('aixu_11')"></a>
															</div>
															<div id="aixu_11c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 40px; height: 30px"
																	onclick="checkDiv('aixu_11')"></a>
															</div>
															<div id="aixu_11d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 40px; height: 30px"
																	onclick="RemoveCk('aixu_11')">取消</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aixu_12"
											style="width: 150px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 30px">
												</tr>
												<tr>
													<td colspan="4"><b>12#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aixu_12a">
															<div id="aixu_12b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 60px; height: 30px"
																	onclick="getRoomInfo('aixu_12')">详情</a>
															</div>
															<div id="aixu_12c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 60px; height: 30px"
																	onclick="checkDiv('aixu_12')">选中</a>
															</div>
															<div id="aixu_12d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 60px; height: 30px"
																	onclick="RemoveCk('aixu_12')">取消选中</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
								<tr style="height: 15px"></tr>
								<!-- 四排 -->
								<tr>
									<td>
										<div id="aixu_13"
											style="width: 150px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 30px">
												</tr>
												<tr>
													<td colspan="4"><b>13#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aixu_13a">
															<div id="aixu_13b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 60px; height: 30px"
																	onclick="getRoomInfo('aixu_13')">详情</a>
															</div>
															<div id="aixu_13c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 60px; height: 30px"
																	onclick="checkDiv('aixu_13')">选中</a>
															</div>
															<div id="aixu_13d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 60px; height: 30px"
																	onclick="RemoveCk('aixu_13')">取消选中</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aixu_14"
											style="width: 120px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 25px">
													<td colspan="3"><img alt="视频会议"
														src="${ctx}/images/camera4.png" width=25px height=25px>
													</td>
												</tr>
												<tr>
													<td colspan="3"><b>14#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aixu_14a">
															<div id="aixu_14b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 40px; height: 30px"
																	onclick="getRoomInfo('aixu_14')"></a>
															</div>
															<div id="aixu_14c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 40px; height: 30px"
																	onclick="checkDiv('aixu_14')"></a>
															</div>
															<div id="aixu_14d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 40px; height: 30px"
																	onclick="RemoveCk('aixu_14')">取消</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aixu_15"
											style="width: 120px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 25px">
												</tr>
												<tr>
													<td colspan="3"><b>15#</b></td>
												</tr>
												<tr style="height: 5px">
												<tr>
													<td>
														<div id="aixu_15a">
															<div id="aixu_15b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 40px; height: 30px"
																	onclick="getRoomInfo('aixu_15')"></a>
															</div>
															<div id="aixu_15c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 40px; height: 30px"
																	onclick="checkDiv('aixu_15')"></a>
															</div>
															<div id="aixu_15d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 40px; height: 30px"
																	onclick="RemoveCk('aixu_15')">取消</a>
															</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<div id="aixu_16"
											style="width: 150px; height: 105px; background-color: #9AFF9A; border-radius: 8px;">
											<table
												style="width: 100%; text-align: center; font-size: 20px">
												<tr style="height: 30px">
												</tr>
												<tr>
													<td colspan="4"><b>16#</b></td>
												</tr>
												<tr>
													<td>
														<div id="aixu_16a">
															<div id="aixu_16b" style="float: left">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-search'"
																	style="width: 60px; height: 30px"
																	onclick="getRoomInfo('aixu_16')">详情</a>
															</div>
															<div id="aixu_16c" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	data-options="iconCls:'icon-ok'"
																	style="width: 60px; height: 30px"
																	onclick="checkDiv('aixu_16')">选中</a>
															</div>
															<div id="aixu_16d" style="float: right">
																<a href="javascript:void(0)" class="easyui-linkbutton"
																	style="width: 60px; height: 30px"
																	onclick="RemoveCk('aixu_16')">取消选中</a>
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
				</div>
				<!-- 右 -->
				<div
					style="width: 14%; height: 100%; text-align: center; float: right">
					<div
						style="width: 100%; height: 35px; border: 1px solid #F7F7F7; border-radius: 5px; background-color: #FFFFF0; margin: 3px 0 0 0">
						<table style="width: 100%; text-align: center; font-size: 20px">
							<tr>
								<td>端口号</td>
							</tr>
							<tr style="height: 5px"></tr>
							<tr>
								<td>
									<div id="dk_1"
										style="width: 150px; height: 50px; background-color: #9AFF9A; border-radius: 8px;">
										<table
											style="align: center; width: 100%; text-align: center; font-size: 20px">
											<tr style="height: 10px">
											</tr>
											<tr>
												<td>
													<div id="dk_1a">
														<div id="dk_1b" style="float: left">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="getRoomInfo('dk_1')">详情</a>
														</div>
													</div>
												<td><b>001</b></td>
												<td>
													<div id="dk_1e">
														<div id="dk_1c" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="checkDiv('dk_1')">选中</a>
														</div>
														<div id="dk_1d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="RemoveCk('dk_1')">取消</a>
														</div>
													</div>
												</td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div id="dk_2"
										style="width: 150px; height: 50px; background-color: #9AFF9A; border-radius: 8px;">
										<table
											style="width: 100%; text-align: center; font-size: 20px">
											<tr style="height: 10px">
											</tr>
											<tr>
												<td>
													<div id="dk_2a">
														<div id="dk_2b" style="float: left">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="getRoomInfo('dk_2')">详情</a>
														</div>
													</div>
												<td><b>002</b></td>
												<td>
													<div id="dk_2e">
														<div id="dk_2c" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="checkDiv('dk_2')">选中</a>
														</div>
														<div id="dk_2d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="RemoveCk('dk_2')">取消</a>
														</div>
													</div>
												</td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr style="height: 15px"></tr>
							<tr>
								<td>
									<div id="dk_3"
										style="width: 150px; height: 50px; background-color: #9AFF9A; border-radius: 8px;">
										<table
											style="width: 100%; text-align: center; font-size: 20px">
											<tr style="height: 10px">
											</tr>
											<tr>
												<td>
													<div id="dk_3a">
														<div id="dk_3b" style="float: left">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="getRoomInfo('dk_3')">详情</a>
														</div>
													</div>
												<td><b>003</b></td>
												<td>
													<div id="dk_3e">
														<div id="dk_3c" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="checkDiv('dk_3')">选中</a>
														</div>
														<div id="dk_3d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="RemoveCk('dk_3')">取消</a>
														</div>
													</div>
												</td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div id="dk_4"
										style="width: 150px; height: 50px; background-color: #9AFF9A; border-radius: 8px;">
										<table
											style="width: 100%; text-align: center; font-size: 20px">
											<tr style="height: 10px">
											</tr>
											<tr>
												<td>
													<div id="dk_4a">
														<div id="dk_4b" style="float: left">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="getRoomInfo('dk_4')">详情</a>
														</div>
													</div>
												<td><b>004</b></td>
												<td>
													<div id="dk_4e">
														<div id="dk_4c" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="checkDiv('dk_4')">选中</a>
														</div>
														<div id="dk_4d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="RemoveCk('dk_4')">取消</a>
														</div>
													</div>
												</td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr style="height: 15px"></tr>
							<tr>
								<td>
									<div id="dk_5"
										style="width: 150px; height: 50px; background-color: #9AFF9A; border-radius: 8px;">
										<table
											style="width: 100%; text-align: center; font-size: 20px">
											<tr style="height: 10px">
											</tr>
											<tr>
												<td>
													<div id="dk_5a">
														<div id="dk_5b" style="float: left">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="getRoomInfo('dk_5')">详情</a>
														</div>
													</div>
												<td><b>005</b></td>
												<td>
													<div id="dk_5e">
														<div id="dk_5c" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="checkDiv('dk_5')">选中</a>
														</div>
														<div id="dk_5d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="RemoveCk('dk_5')">取消</a>
														</div>
													</div>
												</td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div id="dk_6"
										style="width: 150px; height: 50px; background-color: #9AFF9A; border-radius: 8px;">
										<table
											style="width: 100%; text-align: center; font-size: 20px">
											<tr style="height: 10px">
											</tr>
											<tr>
												<td>
													<div id="dk_6a">
														<div id="dk_6b" style="float: left">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="getRoomInfo('dk_6')">详情</a>
														</div>
													</div>
												<td><b>006</b></td>
												<td>
													<div id="dk_6e">
														<div id="dk_6c" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="checkDiv('dk_6')">选中</a>
														</div>
														<div id="dk_6d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="RemoveCk('dk_6')">取消</a>
														</div>
													</div>
												</td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr style="height: 15px"></tr>
							<tr>
								<td>
									<div id="dk_7"
										style="width: 150px; height: 50px; background-color: #9AFF9A; border-radius: 8px;">
										<table
											style="width: 100%; text-align: center; font-size: 20px">
											<tr style="height: 10px">
											</tr>
											<tr>
												<td>
													<div id="dk_7a">
														<div id="dk_7b" style="float: left">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="getRoomInfo('dk_7')">详情</a>
														</div>
													</div>
												<td><b>007</b></td>
												<td>
													<div id="dk_7e">
														<div id="dk_7c" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="checkDiv('dk_7')">选中</a>
														</div>
														<div id="dk_7d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="RemoveCk('dk_7')">取消</a>
														</div>
													</div>
												</td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div id="dk_8"
										style="width: 150px; height: 50px; background-color: #9AFF9A; border-radius: 8px;">
										<table
											style="width: 100%; text-align: center; font-size: 20px">
											<tr style="height: 10px">
											</tr>
											<tr>
												<td>
													<div id="dk_8a">
														<div id="dk_8b" style="float: left">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="getRoomInfo('dk_8')">详情</a>
														</div>
													</div>
												<td><b>008</b></td>
												<td>
													<div id="dk_8e">
														<div id="dk_8c" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="checkDiv('dk_8')">选中</a>
														</div>
														<div id="dk_8d" style="float: right">
															<a href="javascript:void(0)" class="easyui-linkbutton"
																style="width: 40px; height: 30px"
																onclick="RemoveCk('dk_8')">取消</a>
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
			</div>
		</div>
	</div>
	<div id="roomInfo" class="easyui-window" title="会议室详情"
		data-options="modal:true,closed:true,iconCls:'icon-save'"
		style="width: 550px; height: 300px;">会议室信息</div>
</body>
</html>