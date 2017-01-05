<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/common.jsp"%>
<!DOCTYPE html>
<html>
  <head>

	<style type="text/css">
		a:link {
			text-decoration: none;
			color:black;
		}
		a:visited {
			text-decoration: none;
			color:black;
		}
		a:hover {
			text-decoration: none;
			color:black;
		}
		a:active {
			text-decoration: none;
			color:black;
		}
	</style>
		<title>日志主页</title>
    
    <script type="text/javascript">
		
	
	// 条件搜索日志信息
	function searchLog() {
		$('#dg').datagrid('load', {
			userName : $("#s_userName").val(),
			module : $("#s_module").val(),
			operation : $("#s_operation").val(),
			start : $('#s_start').datetimebox('getValue'),
			end : $('#s_end').datetimebox('getValue')
		});
	}


	
	// 日志删除
	function deleteLog() {
		var selectedRows = $("#dg").datagrid('getSelections');
		if (selectedRows.length == 0) {
			$.messager.alert('系统提示', '请选择要删除的数据！');
			return;
		}
		var strIds = [];
		for ( var i = 0; i < selectedRows.length; i++) {
			strIds.push(selectedRows[i].logId);
		}
		var ids = strIds.join(",");
		$.messager.confirm("系统提示", "您确认要删除这<font color=red>" + selectedRows.length
				+ "</font>条数据吗？", function(r) {
			if (r) {
				$.post("deleteLog.htm", {ids : ids}, function(result) {
					if (result.success) {
						$.messager.alert('系统提示', "您已成功删除<font color=red>"
								+ result.delNums + "</font>条数据！");
						$("#dg").datagrid("reload");
					} else {
						$.messager.alert('系统提示', result.errorMsg);
					}
				}, "json");
			}
		});
	}



	// 手动备份
	function manualBackup(){
		$.messager.confirm("系统提示", "备份之后会将原来的日志删除。确定吗？", function(r) {
			if (r) {
				$.post("backup.htm", function(result) {
					if (result.success) {
						$.messager.alert("系统提示","<a href='javascript:downloadLogBus()'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备份成功点击查看备份</a>");
						$("#dg").datagrid("reload");
					} else {
						$.messager.alert('系统提示', result.errorMsg);
					}
				}, "json");
			}
		});
	}


	// 查看所有的备份列表
	function downloadLogBus(){
		$("#backupLog").dialog("open").dialog("setTitle","日志下载");
		$('#backupTable').datagrid({       
		        nowrap : false,//设置为true，当数据长度超出列宽时将会自动截取  
		        striped : true,//设置为true将交替显示行背景。  
		        collapsible : true,//显示可折叠按钮 
		    	url:"../attachment/attachmentList.htm",//url调用Action方法  
		        singleSelect:false,//为true时只能选择单行  
		        fitColumns:true,//允许表格自动缩放，以适应父容器  
		        remoteSort : false, 
		        pagination : true,//分页  
		        rownumbers : true//行数  
		 });  
	}


	
	// 下载Log4j文件
	function downloadLog4j(){
		location.href="../log/downloadLog4j.htm";
	}
</script>
    </head>
 
 
<body style="margin:1px">

<!-- 加载数据表格 -->
<table  id="dg" class="easyui-datagrid" fitColumns="true"  nowrap="false"
   	    pagination="true" rownumbers="true" url="logList.htm" fit="true" toolbar="#tb">
        <thead>
            	<tr>
            		<th data-options="field:'ck',checkbox:true"></th>
            		<th data-options="field:'logId',hidden:'true'">
                	<th data-options="field:'userName',width:80" align="center">操作人</th>
                	<th field="createTime" width="150" align="center"  >操作时间</th>
                	<th field="operation" width="80" align="center">操作类型</th>
                	<th field="ip" width="100" align="center">地址</th>
                	<th field="module" width="80" align="center">操作模块</th>
                	<th field="content" width="680" align="center">日志详情</th>
            	</tr>
        </thead>
</table>

	
<!-- 表格上方菜单 -->
<div id="tb" >
	<div class="updownInterval"> </div>
	<div>
		<privilege:operation operationId="10013" clazz="easyui-linkbutton" onClick="deleteLog()"       name="删除"              iconCls="icon-remove" ></privilege:operation>
		<privilege:operation operationId="10011" clazz="easyui-linkbutton" onClick="downloadLog4j()"   name="后台日志下载"      iconCls="icon-edit" ></privilege:operation>
		<privilege:operation operationId="10012" clazz="easyui-linkbutton" onClick="manualBackup()"    name="手动备份"          iconCls="icon-remove" ></privilege:operation>
		<privilege:operation operationId="10015" clazz="easyui-linkbutton" onClick="downloadLogBus()"  name="备份下载"          iconCls="icon-edit" ></privilege:operation>
	</div>
	<div class="updownInterval"> </div>
	<div>
		&nbsp;操作人：     &nbsp;<input type="text" name="s_userName" id="s_userName" size="20" onkeydown="if(event.keyCode==13) searchLog()"/>
		&nbsp;操作类型：&nbsp;<input type="text" name="s_operation" id="s_operation" size="20" onkeydown="if(event.keyCode==13) searchLog()"/>
		&nbsp;所属模块：&nbsp;<input type="text" name="s_module" id="s_module" size="20" onkeydown="if(event.keyCode==13) searchLog()"/>
		&nbsp;开始时间：&nbsp;<input class="easyui-datetimebox" name="s_start" id="s_start" />
		&nbsp;结束时间：&nbsp;<input class="easyui-datetimebox" id="s_end" name="s_end"  />
		<div class="updownInterval"> </div>
		<a href="javascript:searchLog()" class="easyui-linkbutton" iconCls="icon-search" >搜索</a>
	</div>
	<div class="updownInterval"> </div>
</div>




<!-- 备份下载展示列表 -->
<div id="backupLog" class="easyui-dialog" style="width: 650px;height: 400px;padding: 10px 20px" closed="true" >
<table  class="easyui-datagrid" id="backupTable" >
    <thead>
    	<tr>
    		<th field="attachmentId"   width="30"  align="center" data-options="hidden:true"></th>
    		<th field="attachmentPath" width="100" align="center" >日志路径</th>
    		<th field="attachmentName" width="100" align="center" data-options="formatter:formatDownload">日志名称</th>
    		<th field="attachmentTime" width="100" align="center" >备份时间</th>
    	</tr>
    </thead>
</table>
</div>

	<!-- 格式化备份表行，变成下载a标签 -->
	<script type="text/javascript">
    		function formatDownload(val,row){
				return "<a href='../logs/backup/"+val+"'>"+val+"</a>";
        	}
	</script>


</body>
</html>
