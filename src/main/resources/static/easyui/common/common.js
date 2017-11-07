/*
 * AJAX统一控制
 */
$(function() {
	$.ajaxSetup({
		type : 'POST',
		complete : function(xhr, status) {
			var win = (window.self == window.top ? window : window.top);
			if (xhr.status == 911) {
				$.messager.confirm("\u786E\u8BA4\u63D0\u793A","\u7531\u4E8E\u60A8\u957F\u65F6\u95F4\u6CA1\u6709\u64CD\u4F5C,\u8BF7\u91CD\u65B0\u767B\u5F55\uFF01",function(data){
					win.location.href = "/";
				});
			} else if(xhr.status == 401 || xhr.status == 403){
				$.messager.confirm("\u786E\u8BA4\u63D0\u793A","\u60A8\u7684\u8BBF\u95EE\u672A\u88AB\u6388\u6743,\u8BF7\u8054\u7CFB\u7BA1\u7406\u5458\uFF01",function(data){
					$.loader.loaded();
				});
			}  else if(xhr.status == 404){
				$.messager.confirm("\u786E\u8BA4\u63D0\u793A","\u60A8\u8BBF\u95EE\u7684\u9875\u9762\u4E0D\u5B58\u5728,\u8BF7\u8054\u7CFB\u7BA1\u7406\u5458\uFF01",function(data){
					$.loader.loaded();
				});
			} else if(xhr.status == 500 || status == "error"){
				$.messager.confirm("\u786E\u8BA4\u63D0\u793A","\u7CFB\u7EDF\u9519\u8BEF\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u8054\u7CFB\u7BA1\u7406\u5458\uFF01",function(data){
					$.loader.loaded();
				});
			}
		}
	});
});

function submitForm(formId, msg) {
	if($("#" + formId).form('validate') === true){
		if (msg) {
			$.loader.loading(msg);
		} else {
			$.loader.loading('\u6B63\u5728\u63D0\u4EA4\u6570\u636E,\u8BF7\u7A0D\u5019...');
		}
		// 不知道什么原因，只有用该方法才可触发ajaxForm
		$(document.getElementById(formId)).submit();
	}
}

function listenAJAXForm(){
	$('form.common-ajax').each(function() {
		var listenBtn = $(this).attr("listen-btn"); 
		var clickBtn = $(this).attr("click-btn"); 
		var callback = $(this).attr("callback"); 
		if (typeof (listenBtn) == "undefined" || listenBtn == "") {
			listenBtn = "submit-btn";
		}
		if (typeof (clickBtn) == "undefined" || clickBtn == "") {
			clickBtn = "submit-btn";
		}
		$(this).ajaxForm({
	    	success : function(data) {
	    		if (typeof (callback) != "undefined" && callback != "") {
	    			window[callback](data);
	    		} else {
	    			if (data.status == "1") {
		    			
					} else {
						$.messager.confirm("\u7CFB\u7EDF\u9519\u8BEF",data.message,function(data){
							$.loader.loaded();
						});
					}
	    		}
			}
	    });
	});
}

$(document).ready(function(){  
	var windowHeight = $(window).height();
	$(".easyui-body").each(function(){
		try{
			var heightPercent = $(this).attr("height-percent");
			if(heightPercent){
				$(this).height(window.parseFloat(heightPercent) * windowHeight / 100);
			}
		} catch(e) {
			
		}
	});
	// 所有select框自动添加onchange绑定事件
	$("select.easyui-combobox").each(function(){
		var onchangeText = $(this).attr("onchange");
		if(onchangeText && onchangeText.length > 0){
			var changes = onchangeText.split(";");
			for(var i=0;i<changes.length;i++){
				var functionName = changes[i].replace(/\(\w*\)/g,"");
	        	$(this).combobox({
	        		onChange: function (value, oldValue) {
	        			try{
	    	        		window[functionName]($(this)[0], value, $(this).combobox('getText'), oldValue);
	    	        	} catch(e){
	    	        		
	    	        	}
	        		}
	        	});
			}
		}
	});
	//监听提交事件
	listenAJAXForm();
});

/*
 * 加载提示框
 */
$.loader = (function() {
	var $mask, $maskMsg;
	var defMsg = "\u6B63\u5728\u5904\u7406\uFF0C\u8BF7\u7A0D\u5F85\u3002\u3002\u3002";
	function init() {
		if (!$mask) {
			$mask = $("<div class=\"datagrid-mask loading-mask\"></div>").appendTo("body");
		}
		if (!$maskMsg) {
			$maskMsg = $("<div class=\"datagrid-mask-msg loading-mask\">" + defMsg + "</div>").appendTo("body").css({"font-size" : "12px"});
		}
		$mask.css({width : "100%", height : $(document).height()});
		var scrollTop = $(document.body).scrollTop();
		$maskMsg.css({
			left : ($(document.body).outerWidth(true) - 190) / 2,
			top : (($(window).height() - 45) / 2) + scrollTop
		});
	}
	return {
		loading : function(msg) {
			init();
			$mask.show();
			$maskMsg.html(msg || defMsg).show();
		},
		loaded : function() {
			$mask.hide();
			$maskMsg.hide();
		}
	}
}());  

function openView(url, title, width, height, modal) {
	if(!document.getElementById("xlayer_20171026")){
		$("body").append('<div id="xlayer_20171026"></div>');
	}
	$("#xlayer_20171026").dialog({
		content : '<iframe src="' + url + '" width="100%" height="99%" frameborder="0"></iframe>',
		width : width,
		height : height,
		modal : modal,
		title : title,
		onClose : function() {
			$(this).dialog('destroy');
		}
	}).dialog('open');
}
