/**
 * 菜单添加
 */
$(function($) {
	var entityID = getQueryString('id');
	var result1;
	if(entityID) {
        $.ajaxSettings.async = false;
		$.post(contextPath + "/admin/getAdminById", {
			"id": entityID
		}, function(result) {
			result1 = result;
			$("#form-admin-add").JsonToForm(result);
		});
        $.ajaxSettings.async = true;
	}

	
	$.ajax({
		type: "post",
		url:contextPath+"/role/roleListJson",
		dataType: "json",
		success: function(data) {
			if(data.state == true) {
					var s = "";
				for(var i = 0;i<data.roleList.length;i++){
					if (data.state == true){
					s+="<option value="+data.roleList[i].id + " selected = \"selected\">" +data.roleList[i].name+ "</option>"
				}else{
						s+="<option value="+data.roleList[i].id+">"+data.roleList[i].name+"</option>"
                    }
				}
				$("#roleList").append($(s));
			} else {
				
			}
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			alert(errorThrown);
			return false;
		}
	});

/*	$('input[type=radio]').iCheck({
		checkboxClass: 'icheckbox_minimal',
		radioClass: 'iradio_minimal',
		increaseArea: '20%'
	});*/

	$("#form-admin-add").validate({
		rules: {
			username: {
				required: true,
				minlength: 2,
				maxlength: 10
			},
			password: {
				required: true,
				minlength: 6
			},
			confirm_password: {
				required: true,
				minlength: 6,
				equalTo: "#password"
			},
			state : "required",
			roleId: "required",
			email: {
				required: true,
				email: true
			}
		},
		submitHandler: function(form) {
			$.ajax({
				type: "post",
				url: contextPath + "/admin/" + (entityID ? "update" : "add"),
				data: $(form).serialize(),
				dataType: "json",
				success: function(data) {
					if(data.status == '200') {
						var message = entityID ? '更新成功!' : '添加成功!';
						var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引,隐藏layer层和shade
						parent.$('#layui-layer' + index).css({'display': 'none'});
						parent.$('#layui-layer-shade' + index).css({'display': 'none'});
						parent.reloadTable(); //再刷新DT
						parent.showSuccessMessage(message, null, function() {
							parent.layer.close(index); //然后执行关闭     
						});
					} else {
						var message = entityID ? '添加成功!' : '添加失败!';
						parent.showFailMessage(message);
					}
				},
				error: function(XMLHttpRequest, textStatus, errorThrown) {
					alert(errorThrown);
					return false;
				}
			});
			return false;
		}
	});

	$.Huitab("#tab-category .tabBar span", "#tab-category .tabCon", "current", "click", "0");

	var setting = {
		async: {
			autoParam: ["parentid=parentid"],
			contentType: "application/x-www-form-urlencoded",
			enable: true,
			type: "post",
			url: contextPath + "/role/selectAll"
		},
		view: {
			selectedMulti: false
		},
		check: {
			enable: false
			/*enable: true,
			chkboxType: {
				"Y": "p",
				"N": "s"
			}*/
		},
		edit: {
			drag: {
				isCopy: false,
				isMove: false
			},
			enable: false
		},
		data: {
			key: {
				name: "name",
				title: "name",
				url: "undefined",
				checked : "check"
			},
			simpleData: {
				enable: true,
				idKey: "id",
				pIdKey: "parentid",
				checkedKey:"check",
				rootPId: null
			}
		},
		callback: {
			onClick: zTreeOnClick
		}
	};

	$.fn.zTree.init($("#tree"), setting);

	$('#roleName').on('focus', function() {
		var cityObj = $("#roleName");
		var cityOffset = $("#roleName").offset();
		$("#menuContent").css({
			left: cityOffset.left + "px",
			top: (cityOffset.top + cityObj.outerHeight() - 15) + "px",
			display: "block",
			width: (cityObj.outerWidth() - 3) + "px"
		}).slideDown("fast");

		$("body").bind("mousedown", function() {
			if(!(event.target.id == "menuContent" || $(event.target).parents("#menuContent").length > 0)) {
				$("#menuContent").css({
					left: 0,
					top: 0,
					display: "none",
					width: 0
				}).fadeOut("fast");
			}
		});
	});
});

/**
 * 节点点击回调
 * 
 * @param event
 * @param treeId
 * @param treeNode
 * @returns
 */
function zTreeOnClick(event, treeId, treeNode) {
	$('#roleName').val(treeNode.name);
	$('#roleId').val(treeNode.id);
	$("#menuContent").css({
		left: 0,
		top: 0,
		display: "none",
		width: 0
	}).fadeOut("fast");
	return false;
};
function stateCheck(val){
	$(".radio-box input[type='radio']").removeAttr("checked");
	$(".radio-box input[type='radio']").parent().removeClass("checked");
	if(val == '0'){
		$("#status-0").attr("checked","checked");
		$("#status-0").parent().addClass("checked");
	}else if(val == '1'){
		$("#status-1").attr("checked","checked");
		$("#status-1").parent().addClass("checked");
	}else {
		$("#status-2").attr("checked","checked");
		$("#status-2").parent().addClass("checked");
	}
}