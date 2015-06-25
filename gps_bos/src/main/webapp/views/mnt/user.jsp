<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>星通车辆监控系统</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/easyui/themes/default/easyui.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/easyui/themes/icon.css" /> ">
<script type="text/javascript"
	src="<c:url value="/js/jquery-2.1.3.min.js" /> "></script>
<script type="text/javascript"
	src="<c:url value="/easyui/jquery.easyui.min.js" />"></script>
</head>
<body>
	<div style="margin: 2px 0;"></div>
	<!-- 数据表 -->
	<table id="dataGrid" class="easyui-datagrid" title="车辆列表"
		style="width: 100%; height: 450px; margin-left: 4px;"
		data-options="rownumbers:true,singleSelect:true,url:'/gps_bos/ws/0.1/user/page',method:'get',toolbar:'#tb',footer:'#ft',pagination:true,
				pageSize:10">
		<thead>
			<tr>
				<th data-options="field:'userName',width:120,align:'center'">车主/业户</th>
				<th data-options="field:'telephone',width:200,align:'center'">联系电话</th>
				<th data-options="field:'account',width:200,align:'center'">帐号</th>
				<th data-options="field:'roleId',width:80,align:'center',formatter:function(value,row,index){ return formatterUserType(value,row,index);}">用户类型</th>
				<th data-options="field:'status',width:100,align:'center',formatter:function(value,row,index){ return formatterUserStatus(value,row,index);}">帐号状态</th>
				<th data-options="field:'lastLoginTime',width:100,align:'center'">最后登录时间</th>
			</tr>
		</thead>
	</table>
	<!-- 搜索信息 -->
	<div id="tb" style="padding: 2px 5px;">
		用户类型: <input class="easyui-searchbox"
			data-options="prompt:'请输入车主/业主名称',menu:'#mm',searcher:doSearch"
			style="width: 300px"></input>
		<div id="mm">
			<div data-options="name:'0',iconCls:'icon-ok'">全部</div>
			<div data-options="name:'2'">车主</div>
			<div data-options="name:'3'">司机</div>
		</div>
		&nbsp;&nbsp;&nbsp; 
	<a href="javascript:openWin(1);" class="easyui-linkbutton" iconCls="icon-add" plain="true">增加车主帐号</a>
	<a href="javascript:openWin(2);" class="easyui-linkbutton" iconCls="icon-edit" plain="true">增加司机帐号</a>
	</div>
	
	<script type="text/javascript">
	//  格式化用户类型 
	function formatterUserType(value,row,index){
		if(value == '2'){
			return '车主';
		} else if(value == '3'){
			return '司机'
		} else {
			return value;
		}
	}
	//格式化帐号状态
	function formatterUserStatus(value,row,index){
		if(value ==0){
			return '正常';
		} else {
			return '停用';
		}
	}
	function update(){
		var data = $('#dataGrid').datagrid('getSelected');
		if(data){
			$('#ff').form('load','/gps_bos/ws/0.1/vehicle/get?vid='+data.vid);
			openForm();
		}
	}
	//r搜索
	function doSearch(value,name){
		alert(name);
		$('#dataGrid').datagrid("load",{
			licensePlate:value,
			status:name
		});
	}
	//增加车主帐号
	function openWin(type){
		if(type == 1){
	      $('#userWin').window("open");
			
		} else if(type == 2){
	        $('#driverWin').window("open");			
		}
	}
	function closeWin(type){
		if(type == 1){
			$('#userWin').window('close');
		} else if(type == 2){
			$('#driverWin').window('close');
		}
	}
	$.fn.datebox.defaults.formatter = function(date){
		var y = date.getFullYear();
		var m = date.getMonth()+1;
		var d = date.getDate();
		return y+'-'+m+'-'+d;
	}
	function submitForm(){
		var data = $("#ff").serializeArray(); //自动将form表单封装成json
		var d = {};
		//将form转换成json
		$.each(data,function(){
			d[this.name] = this.value;
		});
		$.ajax({
	           type: 'post',
	           url: '/gps_bos/ws/0.1/vehicle/add',
	           async: false,
	           data: JSON.stringify(d),
	           dataType : 'JSON',
	           cache: false,
	           contentType: 'application/json;charset=utf-8',
	           success: function(result) {
	        	   if(result.flag == 'success'){
	        		   closeForm();
	        		   $.messager.alert('增加车辆',"增加车辆成功",'info');
	        	   } else {
	        		   $.messager.alert('增加车辆',result.msg,'warning');
	        	   }
	           },
	           error:function(e){
	        	   $.messager.alert('增加车辆',"系统错误，请与管理员联系",'error');
	           }
		});
	}
	</script>
	<div id="userWin" class="easyui-window" " title="增加车主帐号" closed="true"
		modal="true" shadow="true" collapsible="false" minimizable="false"
		maximizable="false"
		style="width: 550px; height: 300px; background: #fafafa;"">
		<div class="easyui-layout" fit="true" align="center">
			<form id="userForm" method="post">
				<table cellpadding="5">
					<tr>
						<td>车主/业户名称:</td>
						<td><input class="easyui-textbox" type="text"
							name="userName"
							data-options="required:true,missingMessage:'车主/业户不能为空'"></input></td>
						<td>帐号:</td>
						<td><input class="easyui-textbox" type="text" name="account" 
							data-options="required:true,missingMessage:'发动机号不能为空',prompt:'车主手机号'"></input></td>
					</tr>
					<tr>
						<td>联系电话:</td>
						<td><input class="easyui-textbox" type="text" name="telephone"></input></td>
						<td>帐号状态:</td>
						<td><select class="easyui-combobox" name="status">
								<option value="0">正常</option>
								<option value="1">停用</option>
						</select></td>
					</tr>
					<tr>
						<td>密码:</td>
						<td><input class="easyui-textbox" type="password" name="password"></input></td>
						<td>确认密码:</td>
						<td><input class="easyui-textbox" type="password" name="password1"></input></td>
					</tr>
				</table>
			</form>
			<div style="text-align: center; padding: 20px">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					onclick="submitForm()">保存</a> <a href="javascript:void(0)"
					class="easyui-linkbutton" onclick="closeWin()">取消</a>
			</div>
		</div>
	</div>
	<!-- 司机页面 -->
	<div id="driverWin" class="easyui-window" " title="增加司机帐号" closed="true"
        modal="true" shadow="true" collapsible="false" minimizable="false"
        maximizable="false"
        style="width: 550px; height: 300px; background: #fafafa;"">
        <div class="easyui-layout" fit="true" align="center">
            <form id="driverForm" method="post">
                <table cellpadding="5">
	                <tr>
	                   <td>车主/业户:</td>
	                   <td>
	                       <input class="easyui-combobox" name="language" data-options="
		                    url:'/gps_bos/ws/0.1/user/owner',
		                    method:'get',
		                    valueField:'userId',
		                    textField:'userName',
		                    panelHeight:'auto'
		                     ">
	                   </td>
	                </tr>
                    <tr>
                        <td>车主/业户名称:</td>
                        <td><input class="easyui-textbox" type="text"
                            name="userName"
                            data-options="required:true,missingMessage:'车主/业户不能为空'"></input></td>
                        <td>帐号:</td>
                        <td><input class="easyui-textbox" type="text" name="account" 
                            data-options="required:true,missingMessage:'发动机号不能为空',prompt:'车主手机号'"></input></td>
                    </tr>
                    <tr>
                        <td>联系电话:</td>
                        <td><input class="easyui-textbox" type="text" name="telephone"></input></td>
                        <td>帐号状态:</td>
                        <td><select class="easyui-combobox" name="status">
                                <option value="0">正常</option>
                                <option value="1">停用</option>
                        </select></td>
                    </tr>
                    <tr>
                        <td>密码:</td>
                        <td><input class="easyui-textbox" type="password" name="password"></input></td>
                        <td>确认密码:</td>
                        <td><input class="easyui-textbox" type="password" name="password1"></input></td>
                    </tr>
                </table>
            </form>
            <div style="text-align: center; padding: 20px">
                <a href="javascript:void(0)" class="easyui-linkbutton"
                    onclick="submitForm()">保存</a> <a href="javascript:void(0)"
                    class="easyui-linkbutton" onclick="closeWin()">取消</a>
            </div>
        </div>
    </div>

</body>
</html>