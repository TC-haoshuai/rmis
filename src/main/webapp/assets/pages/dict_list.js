/**
 * DataTables
 */
var datatable = null,idList=[];

$(function() {
	datatable = $('.table-sort').DataTable({
		order: [
			[0, 'asc']
		],
		ajax: {
			url: contextPath + "/dict/getPageList",
			type: 'post',
			data: function(d) {
				d.search = $('#search').val();
			},
            error: function (xhr, textStatus) {
                console.log("xhr:"+xhr);
                console.log("textStatus:"+textStatus);
                xhr.statusCode();
                console.log(xhr.statusCode());
            }
		},

		columns: [{
			data: "id"
		}, {
			data: "dictName",
			defaultContent: ""
		}, {
			data: "dictTabname",
			defaultContent: ""
		}, {
			data: "dictColname",
			defaultContent: ""
		}, {
			data: "dictOption",
			defaultContent: ""
		}, {
			data: "dictText",
			defaultContent: ""
		}, {
			data: "dictSort",
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
			targets: [7],
			orderable:false,
			responsivePriority: 1,
			render: function(data, type, row, meta) {
				var btns = new Array('edit','del');
				return getDTOperateBtn(btns, row.id, 'system-dict-add.jsp', null, '/dict/del/', reloadTable);
			}
		}]
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
                /* $("#table666").dataTable().fnDestroy();*/
                win.location.href= XMLHttpRequest.getResponseHeader("CONTEXTPATH");
            }
        }
});