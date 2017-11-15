$(function () {
	// 页面加载初始化选择框组件
	$('.chosen-select').chosen()
	// 页面加载进度
	var progress = $.AMUI.progress;
	progress.start()
	document.onreadystatechange = function () {
        if (document.readyState === 'complete') {
            progress.done()
        }
    }
})

// 重置复位键
function reMethod () {
	document.getElementById('myform').reset()
}

// 表单提交检查
function submitForm () {
	$('.am-icon-home').each(function () {
		var hiddeDom = $(this).prev()
		var personNo = hiddeDom.parent().find('select').val()
		var salt = '' 
		for (var i = 0; i < personNo.length; i++) {
			salt += ' ' + personNo[i]
		}
		hiddeDom.val(salt)
	})
	$('#myform').submit()
}