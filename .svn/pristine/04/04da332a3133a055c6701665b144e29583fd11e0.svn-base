<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title>预定界面</title>
		<link rel="icon" type="image/png" href="img/favicon.png">
		<link rel="stylesheet" type="text/css" href="css/amazeui.min.css">
		<link rel="stylesheet" type="text/css" href="css/amazeui.switch.css" />
		<link rel="stylesheet" type="text/css" href="css/base1.css" />
		<script type="text/javascript" src="js/jquery/jquery-2.1.1.min.js"></script>
		<script type="text/javascript" src="js/new-ui/amazeui.min.js"></script>
		<script type="text/javascript" src="js/new-ui/amazeui.switch.min.js"></script>
		<script type="text/javascript" src="js/masonry/masonry.pkgd.min.js"></script>
		<script type="text/javascript" src="js/common/common-mobile.js"></script>

		<body>
			<header data-am-widget="header" class="am-header am-header-default" data-am-sticky>
				<div class="am-header-left am-header-nav">
					<a href="#left-link">
						<i class="am-header-icon am-icon-home"></i>
					</a>
				</div>

				<h1 class="am-header-title">
            		会议室预订系统
     			</h1>

				<div class="am-header-right am-header-nav">
					<a href="#doc-oc-demo3">
						<i class="am-header-icon am-icon-bars"></i>
					</a>
				</div>
			</header>
			<form id="myform" action="" method="post">
				<table class="am-table">
					<tr>
						<td>时间</td>
						<td><input type="text" class="am-form-field" id="mydate" placeholder="选个日期吧" readonly required /></td>
						<td>时间段</td>
						<td>
							<select class="xbb am-form-field" id="staTime"></select>
						</td>
						<td>~</td>
						<td>
							<select class="xbb am-form-field" id="endTime"></select>
						</td>
						<td>是否视频会议</td>
						<td>
							<input id="isvideo" type="checkbox" name="my-checkbox" data-am-switch data-off-text="否" data-on-text="是" value="视频会议">
						</td>
						<td>
							<button id="myquery" type="button" class="am-btn am-btn-primary btn-loading-example">查询</button>
						</td>
						<td>
							<button id="oeder" type="button" class="am-btn am-btn-success btn-loading-example" onclick="toOrder()">预订</button>
						</td>
					</tr>
				</table>
			</form>
			<div class="am-tabs" id="doc-my-tabs">
				<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
					<li class="am-active">
						<a href="">爱康</a>
					</li>
					<li>
						<a href="">爱旭</a>
					</li>
					<li>
						<a href="">虚拟终端</a>
					</li>
				</ul>
				<div class="am-tabs-bd">
					<div class="am-tab-panel am-active">
						<div class="js-masonry" data-masonry-options='{ "itemSelector": ".grid-item", "columnWidth": 160, "gutter": 20}'>
							<!-- 1号  -->
							<div id="aiko_1" class="grid-item aiko grid-item--width2 grid-item--height2" onclick="clickShowDOM(this)" data-am-scrollspy="{animation:'fade'}">
								<img alt="视频会议" src="images/camera4.png" width="20px" height="20px">
								<h1>#1</h1>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-6">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search" onclick="getRoomInfo('aiko_1')" style="visibility: hidden;">查看详情</button>
										</div>
										<div class="am-u-sm-6">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check" onclick="selectInChart(this, 'aiko_1')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 2号 -->
							<div id="aiko_2" class="grid-item aiko grid-item--height3" onclick="clickShowDOM(this)" data-am-scrollspy="{animation:'fade'}">
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<img>
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<h1>#2</h1>
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search" onclick="getRoomInfo('aiko_2')" style="visibility: hidden;">查看详情</button>
										</div>
									</div>
								</div>
								<br />
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check" onclick="selectInChart(this, 'aiko_2')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 3号 -->
							<div id="aiko_3" class="grid-item aiko video grid-item--height2" onclick="clickShowDOM(this)">
								<div class="am-container">
									<div class="am-g">
										<div id="am-u-sm-12">
											<img alt="视频会议" src="images/camera4.png" width="20px" height="20px">
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div id="am-u-sm-12">
											<h1>#3</h1>
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search" onclick="getRoomInfo('aiko_3')" style="visibility: hidden;">查看详情</button>
										</div>
									</div>
								</div>
								<br />
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check" onclick="selectInChart(this, 'aiko_3')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 4号 -->
							<div id="aiko_4" class="grid-item aiko grid-item--width3" onclick="clickShowDOM(this)">
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<h1>#4</h1>
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-6">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search" onclick="getRoomInfo('aiko_4')" style="visibility: hidden;">查看详情</button>
										</div>
										<div class="am-u-sm-6">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check" onclick="selectInChart(this, 'aiko_4')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 5号 -->
							<div id="aiko_5" class="grid-item aiko" onclick="clickShowDOM(this)">
								<h3>#5</h3>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" class="am-btn am-btn-secondary am-btn-xs am-round am-icon-search" onclick="getRoomInfo('aiko_5')" style="visibility: hidden;">查看详情</button>
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-btn-xs am-round am-icon-check" onclick="selectInChart(this, 'aiko_5')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 6号 -->
							<div id="aiko_6" class="grid-item aiko video" onclick="clickShowDOM(this)">
								<h3>#6</h3>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" class="am-btn am-btn-secondary am-btn-xs am-round am-icon-search" onclick="getRoomInfo('aiko_6')" style="visibility: hidden;">查看详情</button>
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-btn-xs am-round am-icon-check" onclick="selectInChart(this, 'aiko_6')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 7号 -->
							<div id="aiko_7" class="grid-item aiko video grid-item--height2" onclick="clickShowDOM(this)">
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<img alt="视频会议" src="images/camera4.png" width="20px" height="20px">
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<h2>#7</h2>
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search" onclick="getRoomInfo('aiko_7')" style="visibility: hidden;">查看详情</button>
										</div>
									</div>
								</div>
								<br />
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check" onclick="selectInChart(this, 'aiko_7')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 11号二楼二期 -->
							<div id="aiko_11" id="test" class="grid-item aiko video grid-item--width2 grid-item--height3" onclick="clickShowDOM(this)">
								<br />
								<br />
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<h1>二期二楼培训室</h1>
										</div>
									</div>
								</div>
								<br />
								<br />
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-6">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search" onclick="getRoomInfo('aiko_11')" style="visibility: hidden;">查看详情</button>
										</div>
										<div class="am-u-sm-6">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check" onclick="selectInChart(this, 'aiko_11')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 9号 -->
							<div id="aiko_9" class="grid-item aiko grid-item--height2" onclick="clickShowDOM(this)">
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<img alt="视频会议" src="images/camera4.png" width="20px" height="20px">
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<h2>#9</h2>
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-6">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search" onclick="getRoomInfo('aiko_9')" style="visibility: hidden;">查看详情</button>
										</div>
									</div>
								</div>
								<br />
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-6">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check" onclick="selectInChart(this, 'aiko_9')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 10号  -->
							<div id="aiko_10" class="grid-item aiko grid-item--width2 grid-item--height2" onclick="clickShowDOM(this)">
								<br />
								<br />
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<h1>#10</h1>
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-6">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search" onclick="getRoomInfo('aiko_10')" style="visibility: hidden;">查看详情</button>
										</div>
										<div class="am-u-sm-6">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check" onclick="selectInChart(this, 'aiko_10')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 8号  -->
							<div id="aiko_8" class="grid-item aiko grid-item--height2" onclick="clickShowDOM(this)">
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<h2>#8</h2>
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search" onclick="getRoomInfo('aiko_8')" style="visibility: hidden;">查看详情</button>
										</div>
									</div>
								</div>
								<br />
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check" onclick="selectInChart(this, 'aiko_8')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 12号  -->
							<div id="aiko_12" class="grid-item aiko grid-item--height3">
								<img alt="视频会议" src="images/camera4.png" width="20px" height="20px">
								<h1>陈总办公室</h1>
							</div>
						</div>
					</div>
					<div class="am-tab-panel">
						<div class="js-masonry" data-masonry-options='{ "itemSelector": ".grid-item", "columnWidth": 160, "gutter": 20}'>
							<!-- aixu#1 -->
							<div id="aixu_1" class="grid-item aixu video grid-item--width2 grid-item--height2" onclick="clickShowDOM(this)">
								<img alt="视频会议" src="images/camera4.png" width="20px" height="20px">
								<h1>#1</h1>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-6">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search" onclick="getRoomInfo('aixu_1')" style="visibility: hidden;">查看详情</button>
										</div>
										<div class="am-u-sm-6">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check" onclick="selectInChart(this, 'aixu_1')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!-- aixu#2 -->
							<div id="aixu_2" class="grid-item aixu grid-item--height3" onclick="clickShowDOM(this)">
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<img alt="视频会议" src="images/camera4.png" width="20px" height="20px">
										</div>
									</div>
								</div>
								<div class="am-container">
									<div id="am-g">
										<div class="am-u-sm-12">
											<h3>#2</h3>
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search" onclick="getRoomInfo('aixu_2')" style="visibility: hidden;">查看详情</button>
										</div>
									</div>
								</div>
								<br />
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check" onclick="selectInChart(this, 'aixu_2')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<div class="grid-item aixu video grid-item--height2">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu grid-item--width3">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu video">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu grid-item--height2">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu grid-item--width2 grid-item--height3">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu video">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu grid-item--height2">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu grid-item--width2 grid-item--height2">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu video grid-item--width2">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu video grid-item--height2">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu grid-item--height3">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu grid-item--height2">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu">
								<h1>虚位以待</h1>
							</div>
							<div class="grid-item aixu grid-item--height2">
								<h1>虚位以待</h1>
							</div>
						</div>

					</div>
					<div class="am-tab-panel">
						<div class="js-masonry" data-masonry-options='{ "itemSelector": ".grid-item", "columnWidth": 160, "gutter": 20}'>
							<!--虚拟终端1-->
							<div id="dk_1" class="grid-item xuni grid-item--width2 grid-item--height2" onclick="clickShowDOM(this)">
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<h2>001号端口</h2>
										</div>
									</div>
								</div>
								<br />
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-6">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search" onclick="getRoomInfo('dk_1')" style="visibility: hidden;">查看详情</button>
										</div>
										<div class="am-u-sm-6">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check" onclick="selectInChart(this, 'dk_1')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!--虚拟终端2-->
							<div id="dk_2" class="grid-item xuni grid-item--height3" onclick="clickShowDOM(this)">
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<h2>002号端口</h2>
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search" onclick="getRoomInfo('dk_2')" style="visibility: hidden;">查看详情</button>
										</div>
									</div>
								</div>
								<br />
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check" onclick="selectInChart(this, 'dk_2')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!--虚拟终端4-->
							<div id="dk_3" class="grid-item xuni grid-item--height2" onclick="clickShowDOM(this)">
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<h2>003号端口</h2>
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search" onclick="getRoomInfo('dk_3')" style="visibility: hidden;">查看详情</button>
										</div>
									</div>
								</div>
								<br />
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check" onclick="selectInChart(this, 'dk_3')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!--虚拟终端5-->
							<div id="dk_4" class="grid-item xuni" onclick="clickShowDOM(this)">
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<h3>004号端口</h3>
										</div>
									</div>
								</div>
								<!--am-btn-xs-->
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" class="am-btn am-btn-secondary am-round am-icon-search am-btn-xs" onclick="getRoomInfo('dk_4')" style="visibility: hidden;">查看详情</button>
										</div>
									</div>
								</div>
								<div class="am-container">
									<div class="am-g">
										<div class="am-u-sm-12">
											<button type="button" name="pick" class="am-btn am-btn-secondary am-round am-icon-check am-btn-xs" onclick="selectInChart(this, 'dk_4')" style="visibility: hidden;">老子要了</button>
										</div>
									</div>
								</div>
							</div>
							<!--6-->
							<div class="grid-item xuni grid-item--height2" onclick="clickShowDOM(this)">
								
							</div>
							<div class="grid-item xuni grid-item--width2 grid-item--height3"></div>
							<div class="grid-item xuni video"></div>
							<div class="grid-item xuni grid-item--height2"></div>
							<div class="grid-item xuni"></div>
							<div class="grid-item xuni grid-item--width2 grid-item--height2"></div>
							<div class="grid-item xuni video grid-item--width2"></div>
							<div class="grid-item xuni"></div>
							<div class="grid-item xuni grid-item--height2"></div>
							<div class="grid-item xuni"></div>
							<div class="grid-item xuni"></div>
							<div class="grid-item xuni video grid-item--height3"></div>
							<div class="grid-item xuni video grid-item--height2"></div>
							<div class="grid-item xuni video"></div>
							<div class="grid-item xuni video"></div>
							<div class="grid-item xuni video grid-item--height2"></div>
						</div>
					</div>
				</div>
				<!-- 模态窗口会议室Info -->
				<div class="am-modal am-modal-no-btn" tabindex="-1" id="room-info">
					<div class="am-modal-dialog">
					    <div class="am-modal-hd" style="color: red;">会议室信息
					      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
					    </div>
					    <div class="am-modal-bd">
					      <table class="am-table am-table-striped am-table-hover" id='roomInfot'></table>
					    </div>
					    <div class="am-modal-hd" style="color: red;">会议预定信息</div>
					    <div class="am-modal-bd">
					      <table class="am-table am-table-striped am-table-hover" id='meetInfot'></table>
					    </div>
					</div>
				</div>
				<!-- 警告窗口 -->
				<div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
					  <div class="am-modal-dialog">
					    <div class="am-modal-hd">扭头警告</div>
					    <div class="am-modal-bd" id="alert-body">
					      
					    </div>
					    <div class="am-modal-footer">
					      <span class="am-modal-btn">确定</span>
					    </div>
					  </div>
				</div>
			</div>
			<script>
				$(function() {
					// 初始化选项卡
					$('#doc-my-tabs').tabs();
					// 初始化填充时间段
					$(".xbb").append('<option value="00:00">00:00</option><option value="00:30">00:30</option><option value="01:00">01:00</option><option value="01:30">01:30</option><option value="02:00">02:00</option><option value="02:30">02:30</option><option value="03:00">03:00</option>' +
						'<option value="03:30">03:30</option><option value="04:00">04:00</option><option value="04:30">04:30</option><option value="05:00">05:00</option><option value="05:30">05:30</option><option value="06:00">06:00</option><option value="06:30">06:30</option>' +
						'<option value="07:00">07:00</option><option value="07:30">07:30</option><option value="08:00">08:00</option><option value="08:30">08:30</option><option value="09:00">09:00</option><option value="09:30">09:30</option><option value="10:00">10:00</option>' +
						'<option value="10:30">10:30</option><option value="11:00">11:00</option><option value="11:30">11:30</option><option value="12:00">12:00</option><option value="12:30">12:30</option><option value="13:00">13:00</option><option value="13:30">13:30</option>' +
						'<option value="14:00">14:00</option><option value="15:00">15:00</option><option value="15:30">15:30</option><option value="16:00">16:00</option><option value="16:30">16:30</option><option value="17:00">17:00</option><option value="17:30">17:30</option>' +
						'<option value="18:00">18:00</option><option value="18:30">18:30</option><option value="19:00">19:00</option><option value="19:30">19:30</option><option value="20:00">20:00</option><option value="20:30">20:30</option><option value="21:00">21:00</option>' +
						'<option value="21:30">21:30</option><option value="22:00">22:00</option><option value="22:30">22:30</option><option value="23:00">23:00</option><option value="23:30">23:30</option>'
					)
					// 加载进度条
					var progress = $.AMUI.progress;
					progress.start()
					document.onreadystatechange = function () {
						if(document.readyState === 'complete') {
							progress.done()
						}
					}
					
					/*$('.grid-item').each(function() {
						$(this).click(function() {
							$(this).css('border-color', 'hsla(0, 0%, 0%, 0.5)')
						})
					})*/

				})

				// 移除元素
				/*function remove () {
					$('.video').remove()
					$('.js-masonry').masonry({
						// 配置参数
						itemSelector: '.grid-item',
						columnWidth: 160,
						gutter: 20
					})
				}*/
 				
			</script>
		</body>

		<!--[if (gte IE 9)|!(IE)]><!-->
		<!--<![endif]-->
		<!--[if lte IE 8 ]>
		<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
		<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
		<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
		<![endif]-->

</html>