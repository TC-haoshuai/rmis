/**
 * DataTables
 */
var datatable = null,idList=[];

$(function() {
	datatable = $('.table-sort').DataTable({
        processing: true,
        serverSide: true,
		order: [
			[1, 'asc']
		],
		ajax: {
			url: contextPath + "/menu/getPageList",
			type: 'post',
            data: function(d) {
                d.search = $('#search').val();
            },
            error: function (xhr, textStatus) {
                console.log("xhr:"+xhr);
                console.log("textStatus:"+textStatus);
                xhr.statusCode();
                console.log(xhr.statusCode());
            },
        },
		columns: [{
			data: "id"
		}, {
			data: "name"
		}, {
			data: "urlkey"
		}, {
			data: "parentName",
			defaultContent: ""
		}, {
			data: "type",
			defaultContent: ""
		}, {
			data: "url",
			defaultContent: ""
		}, {
			data: "createTime",
			defaultContent: ""
		}, {
			data: "createName",
			defaultContent: ""
		}, {
			data: "sort",
			defaultContent: ""
		}, {
			data: "status",
			defaultContent: ""
		}, {
			data: null
		}],
		columnDefs: [{
			targets: [0],
			orderable:false,
			render: function(data, type, row, meta) {
				return '<input id="input-' + data + '" type="checkbox" name="single"><label for="input-' + data + '"></label>';
			}  
		}, {
			targets: [6],
			render: function(data, type, row, meta) {
				return data ? new Date(data).pattern("yyyy-MM-dd hh:mm:ss") : '';
			}
		},{
			targets: [9],
			render: function(data, type, row, meta) {
				var clazz = new Array('', 'success', 'danger');
				var text = new Array('', '显示', '隐藏');
				return '<span class="label label-' + clazz[data] + ' radius">' + text[data] + '</span>';
			}
		}, {
			targets: [10],
			orderable:false,
			responsivePriority: 1,
			render: function(data, type, row, meta) {
				var btns = new Array('edit','del');
				return getDTOperateBtn(btns, row.id, 'system-menu-add.jsp', null, '/menu/del/', reloadTable);
			}
		}],
/*        "fnServerData":function(XMLHttpRequest, textStatus) {
            // 通过XMLHttpRequest取得响应头，sessionstatus
            var sessionstatus = XMLHttpRequest.getResponseHeader("sessionstatus");
            if (sessionstatus == "TIMEOUT") {
                var win = window;
                while (win != win.top){
                    win = win.top;
                }
                $("#table666").dataTable().fnDestroy();
                win.location.href= XMLHttpRequest.getResponseHeader("CONTEXTPATH");
            }
        }*/

	});
});

/**
 * 刷新DT
 */
function reloadTable() {
	datatable.ajax.reload(null, false);
}

/**
 * 获取datatables选中行的ID
 */
function getDTSelect() {
	var lines = datatable.rows('.selected').data();
	for (var i = 0; i < lines.length; i++) {
		idList.push(lines[i].id);
	}
	return idList;
}
$.ajaxSetup( {
//设置ajax请求结束后的执行动作
    complete :
        function(XMLHttpRequest, textStatus) {
    	// 通过XMLHttpRequest取得响应头，sessionstatus
            var sessionstatus = XMLHttpRequest.getResponseHeader("sessionstatus");
            if (sessionstatus == "TIMEOUT") {
                var win = window;
                while (win != win.top){
                    win = win.top;
                }
                alert("请先登录");
                win.location.href= XMLHttpRequest.getResponseHeader("CONTEXTPATH");
            }
        }
});
