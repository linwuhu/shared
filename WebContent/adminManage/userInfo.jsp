<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="sharedhouse.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>layout 后台大布局 - Layui</title>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <style type="text/css">
    	.w_160{width:229px!important;text-align:center;}
    	#form_edit{display:none;margin-top:40px;}
    	
    </style>
</head>
<body class="layui-layout-body">
<sql:setDataSource var="snapshot" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
     url="jdbc:sqlserver://localhost:1433;DatabaseName=share"
     user="sa"  password="123456"/>
     
<sql:query dataSource="${snapshot}" var="result">
		SELECT * from 用户表 
</sql:query>


<div style="padding: 15px;">用户信息</div>
<div class="layui-form layui-border-box layui-table-view" lay-filter="LAY-table-1"
     style=" height:515px;">
    <div class="layui-table-box">
        <div class="layui-table-header">
            <table cellspacing="0" cellpadding="0" border="0" class="layui-table" lay-filter="test">
                <thead>
                <tr>
                    <th data-field="0" data-unresize="true">
                        <div class="layui-table-cell laytable-cell-1-0 laytable-cell-checkbox">
                            <input type="checkbox" name="layTableCheckbox" lay-skin="primary" lay-filter="layTableAllChoose">
                            <div class="layui-unselect layui-form-checkbox" lay-skin="primary">
                                <i class="layui-icon">
                                    
                                </i>
                            </div>
                        </div>
                    </th>
                    <th data-field="id">
                        <div class="layui-table-cell laytable-cell-1-id w_160">
								<span>
									用户ID
								</span>
								<span class="layui-table-sort layui-inline">
									<i class="layui-edge layui-table-sort-asc">
                                    </i>
									<i class="layui-edge layui-table-sort-desc">
                                    </i>
								</span>
                        </div>
                    </th>
                    <th data-field="username">
                        <div class="layui-table-cell laytable-cell-1-username w_160">
								<span>
									用户名
								</span>
                        </div>
                    </th>
                    <th data-field="password">
                        <div class="layui-table-cell laytable-cell-1-sex w_160">
								<span>
									密码
								</span>
								<span class="layui-table-sort layui-inline">
									<i class="layui-edge layui-table-sort-asc">
                                    </i>
									<i class="layui-edge layui-table-sort-desc">
                                    </i>
								</span>
                        </div>
                    </th>
                    <th data-field="email">
                        <div class="layui-table-cell laytable-cell-1-sign w_160">
								<span>
									email
								</span>
                        </div>
                    </th>
                    <!-- <th data-field="experience">
                        <div class="layui-table-cell laytable-cell-1-experience">
								<span>
									积分
								</span>
								<span class="layui-table-sort layui-inline">
									<i class="layui-edge layui-table-sort-asc">
                                    </i>
									<i class="layui-edge layui-table-sort-desc">
                                    </i>
								</span>
                        </div>
                    </th>
                    <th data-field="classify">
                        <div class="layui-table-cell laytable-cell-1-classify">
								<span>
									职业
								</span>
                        </div>
                    </th>
                    <th data-field="wealth">
                        <div class="layui-table-cell laytable-cell-1-wealth">
								<span>
									财富
								</span>
								<span class="layui-table-sort layui-inline">
									<i class="layui-edge layui-table-sort-asc">
                                    </i>
									<i class="layui-edge layui-table-sort-desc">
                                    </i>
								</span>
                        </div>
                    </th>
                    <th data-field="score"> 
                        <div class="layui-table-cell laytable-cell-1-score">
								<span>
									评分
								</span>
								<span class="layui-table-sort layui-inline">
									<i class="layui-edge layui-table-sort-asc">
                                    </i>
									<i class="layui-edge layui-table-sort-desc">
                                    </i>
								</span>
                        </div>
                    </th>  -->
                    <th data-field="9">
                        <div class="layui-table-cell laytable-cell-1-9" align="center">
								<span>
								操作
								</span>
                        </div>
                    </th>
                </tr>
                </thead>
            </table>
        </div>
        <div class="layui-table-body layui-table-main" style="height: 434px;">
            <table cellspacing="0" cellpadding="0" border="0" class="layui-table" lay-filter="demo" >
                <tbody>
                
                    <c:forEach var="row" items="${result.rows}" varStatus="i">
                    <tr data-index="<c:out value="${i.index}"/>" class="index">
                    <td data-field="0">
                        <div class="layui-table-cell laytable-cell-1-0 laytable-cell-checkbox">
                            <input type="checkbox" name="layTableCheckbox" lay-skin="primary">
                            <div class="layui-unselect layui-form-checkbox" lay-skin="primary">
                                <i class="layui-icon">
                                    
                                </i>
                            </div>
                        </div>
                    </td>
                    <td data-field="id">
                        <div class="layui-table-cell laytable-cell-1-id w_160">
                            <c:out value="${row.用户ID}"/>
                        </div>
                    </td>
                    <td data-field="username">
                        <div class="layui-table-cell laytable-cell-1-username w_160">
                           <c:out value="${row.用户名}"/>
                        </div>
                    </td>
                    <td data-field="password">
                        <div class="layui-table-cell laytable-cell-1-sex w_160">
                            	<c:out value="${row.密码}"/>
                        </div>
                    </td>
                    <td data-field="email">
                        <div class="layui-table-cell laytable-cell-1-sign w_160">
                            		<c:out value="${row.Email}"/>
                        </div>
                    </td>
          
           
                    
                    <td data-field="9" align="center" data-off="true">
                        <div class="layui-table-cell laytable-cell-1-9">
                            <a class="layui-btn layui-btn-primary layui-btn-xs check_btn" lay-event="detail">
                                查看
                            </a>
                            <a class="layui-btn layui-btn-xs edit_btn" lay-event="edit">
                                编辑
                            </a>
                            <a href="../task3-6.jsp?para=deleteUser&id=<c:out value="${row.用户ID}"/> " onClick=" return confirm('你确定要删除该用户吗？')" class="layui-btn layui-btn-danger layui-btn-xs del_btn" lay-event="del">
                                删除
                            </a>
                        </div>
                    </td>
                </tr>
                    </c:forEach>
                
                </tbody>
            </table>
        </div>
    </div>

    <style>
        .laytable-cell-1-0{ width: 48px; }.laytable-cell-1-id{ width: 80px; }.laytable-cell-1-username{
                                                                                 width: 80px; }.laytable-cell-1-sex{ width: 80px; }.laytable-cell-1-sign{
                                                                                                                                       width: 160px; }.laytable-cell-1-experience{ width: 80px; }.laytable-cell-1-classify{
                                                                                                                                                                                                     width: 80px; }.laytable-cell-1-wealth{ width: 135px; }.laytable-cell-1-score{
                                                                                                                                                                                                                                                               width: 80px; }.laytable-cell-1-9{ width: 178px; }
    </style>
</div>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script src="../layui/layui.js"></script>

<script>

    layui.use('table', function(){
        var table = layui.table;
        console.log(table);
        //layer.msg('Hello World');
    });
  //编辑
    $('.edit_btn').on('click', function() {
    	var index = $($(this).parents('.index')).index();
    	console.log(index);//获取tr的索引值
    	var info = $('.index').eq(index);//jq用eq(得到的是jq对象)&&js用get(得到的是DOM对象)
    	console.log(info); //获得当前元素的祖先元素tr
    	//去掉空格
    	var id = info.find('td[data-field="id"] div').text().replace(/^\s*|\s*$/g, "");
    	var name=info.find('td[data-field="username"] div').text().replace(/^\s*|\s*$/g, "");
    	var password = info.find('td[data-field="password"] div').text().replace(/^\s*|\s*$/g, "");
    	var email = info.find('td[data-field="email"] div').text().replace(/^\s*|\s*$/g, "");
    	$('input[name="id"]').val(id);
    	$('input[name="userName"]').val(name);
    	$('input[name="password"]').val(password);
    	$('input[name=Email]').val(email);
    	layer.open({
    		  type: 1,
    		  skin: 'layui-layer-rim', //加上边框
    		  area: ['420px', '340px'], //宽高
    		  content: $('#form_edit')
    		});
	});
</script>
</body>
<form class="layui-form" action="userUpdate.jsp" id="form_edit">
	<input type="hidden" name="id">
  <div class="layui-form-item">
    <label class="layui-form-label">用户名</label>
    <div class="layui-input-inline">
      <input type="text" name="userName" required  lay-verify="required"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">密码</label>
    <div class="layui-input-inline">
      <input type="text" name="password" required lay-verify="required" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">Email</label>
    <div class="layui-input-inline">
      <input type="text" name="Email" required  lay-verify="required" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
</html>