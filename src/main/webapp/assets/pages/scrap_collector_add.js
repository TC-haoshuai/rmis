/**
 * 菜单添加
 */
$(function($) {
	var entityID = getQueryString('id');
	if(entityID) {
		$.post(contextPath + "/scrap_collector/getscrapCollectorById", {
			"id": entityID
		}, function(result) {
			$("#form-scrap-collector-add").JsonToForm(result);
			$("#sex-0").val("sex_0");
			$("#sex-1").val("sex_1");
			sexCheck(result.sex);
		});
	}
	

	
	$('input[type=radio]').iCheck({
		checkboxClass: 'icheckbox_minimal',
		radioClass: 'iradio_minimal',
		increaseArea: '20%'
	});

	$("#form-scrap-collector-add").validate({
		rules: {
			
		},
		submitHandler: function(form) {
			$.ajax({
				type: "post",
				url: contextPath + "/scrap_collector/" + (entityID ? "update" : "add"),
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

	createAreaTree();
});
function createAreaTree(){
	var setting = {
			async: {
				autoParam: [],
				contentType: "application/x-www-form-urlencoded",
				enable: true,
				type: "post",
				url: contextPath + "/housing_estate/getArea"
			},
			view: {
				selectedMulti: false
			},
			check: {
				enable: false
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
					name: "areaName",
					title: "areaName",
					url: "undefined",
					id: "areaCode",
					pId: "parentCode"
				},
				simpleData: {
					enable: true,
					idKey: "areaCode",
					pIdKey: "parentCode",
					rootPId: "0"
				}
			},
			callback: {
				onClick: zTreeOnClickProvince
			}
		};

		$.fn.zTree.init($("#tree"), setting);

		$('#provinceName').on('focus', function() {
			var cityObj = $("#provinceName");
			var cityOffset = $("#provinceName").offset();
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
}


/**
 * 节点点击回调
 * 
 * @param event
 * @param treeId
 * @param treeNode
 * @returns
 */
function zTreeOnClickProvince(event, treeId, treeNode) {
	$('#provinceName').val(treeNode.getParentNode().areaName+"-"+treeNode.areaName);
	$('#provinceCode').val(treeNode.parentCode);
	$('#cityCode').val(treeNode.areaCode);
	$("#menuContent").css({
		left: 0,
		top: 0,
		display: "none",
		width: 0
	}).fadeOut("fast");
	createHousingEstateTree();
	
	return false;
};


function createHousingEstateTree(){
	var setting = {
			async: {
				autoParam: [],
				contentType: "application/x-www-form-urlencoded",
				enable: true,
				otherParam : {'cityCode':$("#cityCode").val()},
				type: "post",
				url: contextPath + "/housing_estate/getHousingEstateByCity"
			},
			view: {
				selectedMulti: false
			},
			check: {
				enable: false
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
					name: "address",
					title: "address",
					url: "undefined",
					id: "code"
				},
				simpleData: {
					enable: true,
					idKey: "code",
					pIdKey: "",
					rootPId: "0"
				}
			},
			callback: {
				onClick: zTreeOnClickHousingEstate
			}
		};

		$.fn.zTree.init($("#he_tree"), setting);

		$('#housingEstate').on('focus', function() {
			var cityObj = $("#housingEstate");
			var cityOffset = $("#housingEstate").offset();
			$("#he").css({
				left: cityOffset.left + "px",
				top: (cityOffset.top + cityObj.outerHeight() - 15) + "px",
				display: "block",
				width: (cityObj.outerWidth() - 3) + "px"
			}).slideDown("fast");

			$("body").bind("mousedown", function() {
				if(!(event.target.id == "he" || $(event.target).parents("#he").length > 0)) {
					$("#he").css({
						left: 0,
						top: 0,
						display: "none",
						width: 0
					}).fadeOut("fast");
				}
			});
		});
}


/**
 * 节点点击回调
 * 
 * @param event
 * @param treeId
 * @param treeNode
 * @returns
 */
function zTreeOnClickHousingEstate(event, treeId, treeNode) {
	$('#housingEstate').val(treeNode.address);
	$('#housingEstateCode').val(treeNode.code);
	$("#he").css({
		left: 0,
		top: 0,
		display: "none",
		width: 0
	}).fadeOut("fast");
	return false;
};

function sexCheck(val){
	$(".radio-box input[type='radio']").removeAttr("checked");
	$(".radio-box input[type='radio']").parent().removeClass("checked");
	if(val == 'sex_0'){
		$("#sex-0").attr("checked","checked");
		$("#sex-0").parent().addClass("checked");
	}else{
		$("#sex-1").attr("checked","checked");
		$("#sex-1").parent().addClass("checked");
	}
}