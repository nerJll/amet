//通用函数：获取当前项目路径
function propath () {
	// 获取项目路径信息
	var curWwwPath = window.document.location.href
	var pathName = window.document.location.pathname
	var pos = curWwwPath.indexOf(pathName)
	var localhostPath = curWwwPath.substring(0, pos)
	var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1)
	return localhostPath + projectName
}

// 判断开始于结束时间
function judgeTime (statime, endtime) {
	var s1 = statime.replace(/T/, " ")
	var e1 = endtime.replace(/T/, " ")
	s1 = s1.replace(/-/g, "/")
	e1 = e1.replace(/-/g, "/")
	var date1 = new Date(s1)
	var date2 = new Date(e1)
	return date1.getTime() - date2.getTime()
}
//日期转换工具
	Date.prototype.format = function (format) {
	    var o = {
	        "M+": this.getMonth() + 1, // month
	        "d+": this.getDate(),    // day
	        "h+": this.getHours(),   // hour
	        "m+": this.getMinutes(), // minute
	        "s+": this.getSeconds(), // second
	        "q+": Math.floor((this.getMonth() + 3) / 3),  // quarter
	        "S": this.getMilliseconds() // millisecond
	    };
	    if (/(y+)/.test(format))
	        format = format.replace(RegExp.$1,
	            (this.getFullYear() + "").substr(4 - RegExp.$1.length));
	    for (var k in o)
	        if (new RegExp("(" + k + ")").test(format))
	            format = format.replace(RegExp.$1,
	                RegExp.$1.length == 1 ? o[k] :
	                    ("00" + o[k]).substr(("" + o[k]).length));
	    return format;
	};
	
//格式化日期
function formatDate(value){
	var unixTimestamp = new Date(value);  
	return unixTimestamp.format("hh:mm"); 
}
	
// ajax查询
$(function() {
	// 日期选择框日期前禁用
	var nowTemp = new Date();
	var nowDay = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0).valueOf();
	var nowMoth = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), 1, 0, 0, 0, 0).valueOf();
	var nowYear = new Date(nowTemp.getFullYear(), 0, 1, 0, 0, 0, 0).valueOf();
	var $myStart2 = $('#mydate')
	var checkin = $myStart2.datepicker({
		onRender: function(date, viewMode) {
			// 默认 days 视图，与当前日期比较
			var viewDate = nowDay;

			switch(viewMode) {
				// moths 视图，与当前月份比较
				case 1:
					viewDate = nowMoth;
					break;
					// years 视图，与当前年份比较
				case 2:
					viewDate = nowYear;
					break;
			}

			return date.valueOf() < viewDate ? 'am-disabled' : '';
		}
	}).on('changeDate.datepicker.amui', function(ev) {
		if(ev.date.valueOf() > checkout.date.valueOf()) {
			var newDate = new Date(ev.date)
			newDate.setDate(newDate.getDate() + 1);
			checkout.setValue(newDate);
		}
		checkin.close();
		// $('#my-end-2')[0].focus();
	}).data('amui.datepicker');
	
	var checkout = $('#my-end-2').datepicker({
		onRender: function(date, viewMode) {
			var inTime = checkin.date;
			var inDay = inTime.valueOf();
			var inMoth = new Date(inTime.getFullYear(), inTime.getMonth(), 1, 0, 0, 0, 0).valueOf();
			var inYear = new Date(inTime.getFullYear(), 0, 1, 0, 0, 0, 0).valueOf();

			// 默认 days 视图，与当前日期比较
			var viewDate = inDay;

			switch(viewMode) {
				// moths 视图，与当前月份比较
				case 1:
					viewDate = inMoth;
					break;
					// years 视图，与当前年份比较
				case 2:
					viewDate = inYear;
					break;
			}

			return date.valueOf() <= viewDate ? 'am-disabled' : '';
		}
	}).on('changeDate.datepicker.amui', function(ev) {
		checkout.close();
	}).data('amui.datepicker');
	
	// 条件查询
	$('#myquery').click(function() {
		var date = myform.mydate.value
		// console.log(date)
		var statime = date+' '+myform.staTime.value+':00'
		var endtime = date+' '+myform.endTime.value+':00'
		var t = judgeTime(statime, endtime)
		if (t > 0) {
			alert('开始时间不能在结束时间之后！')
		} else {
			var staTime = date+' '+$('#staTime').val()+':00'
			var endTime = date+' '+$('#endTime').val()+':00'
			$.ajax({
				type: "POST",
				url: propath()+'/meet/list-meet',
				data: { 'staTime': staTime, 'endTime': endTime },
				dataType : "json",
				success: function (data) {
					// 重置默认
					$('.aiko').css('background', '#FFE4B5')
					$('button[name="pick"]').attr('disabled',false).html('老子要了')
					// 遍历
					for (var i = 0; i < data.length; i ++) {
						console.table(data[i])
						var id = data[i].meetRoomId
						$('#' + id).css('background', '#DCDCDC')
						var mybutton = $('#' + id).find('button[name="pick"]')
						mybutton.attr('disabled',true).html('被占了')
					}
				}
			})
		}
	})
})

// 查询会议室详情以及预订信息
function getRoomInfo (roomId) {
	// get异步请求
	$.get(propath() + '/room/getRoomInfo/' + roomId, function (data) {
		var $model = $('#room-info')
		$('#roomInfot').empty()
		$('#meetInfot').empty()
		//填充会议室信息
		$('#roomInfot').append(
						'<tr>'
						+'<td>名称：</td>'
						+'<th>' + data.roomInfo.meetRoomName + '</th>'
						+'<td>可容纳人数：</td>'
						+'<th>' + data.roomInfo.meetRoomNum + '</th>'
						+'</tr>'
						+'<td>视频会议：</td>'
						+'<th>' + data.roomInfo.isVideoRoom + '</th>'
						+'<td>所属：</td>'
						+'<th>' + data.roomInfo.location + '</th>'
						+'</tr>'
						+'<tr></tr>')
		// 填充会议信息
		if (data.meetInfo != null) {
			for(var i=0; i<data.meetInfo.length; i ++){
				$('#meetInfot').append(
					'<tr><td>' + (i + 1) + '</td>'
					+'<td>申请人姓名：</td>'
					+'<th>' + data.meetInfo[i].applyEmpName + '</th>'
					+'<td>时间</td>'
					+'<th>' + formatDate(data.meetInfo[i].staTime) + '~' + formatDate(data.meetInfo[i].endTime) + '</th>'
					+'</tr>'
				)
			}
		}
		// 开启模态窗口
		$model.modal()
	})
}

// div会议室点击显示事件
function clickShowDOM (obj) {
	$(obj).find('button').each(function () {
		if ($(this).css('visibility') === 'hidden')
			$(this).css('visibility', 'visible')
		else
			$(this).css('visibility', 'hidden')
	})
}

// 选择按钮事件
function selectInChart (obj, roomId) {
	// 获得爸爸
	var room = $(obj).parent().parent().parent().parent()
	if (!room.hasClass('selected')) {
		// 页面效果
		room.addClass('selected')
		$(obj).removeClass('am-icon-check').addClass('am-icon-heart').html('已选中')
		// 加入购物车后端逻辑
	} else {
		// 页面效果
		room.removeClass('selected')
		$(obj).removeClass('am-icon-heart').addClass('am-icon-check').html('老子要了')
		// 后端逻辑
		
	}
	
}
// 会议室信息模态窗口
/*function openModel (roomId) {
	var $myModel = $('#room-info')
	$myModel.modal()
	$myModel.on('opened.modal.amui', function(){
		$.get(propath() + '/room/getRoomInfo/' + roomId, function (data) {
			var son = $myModel.find('div[class="a"]')
			son.append('<p>' + data + '</p>')
		})
	});
}*/
function cilckToChard () {
	$.ajax({
		type:"post",
		url:"",
		
	});
}
