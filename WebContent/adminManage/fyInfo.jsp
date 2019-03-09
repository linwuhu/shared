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
    <title>房源信息管理</title>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <style type="text/css">
    	.w_47{width:47px;}
    	.w_59{width:59px;}
    	.w_91{width:91px;}
    	.w_154{width:154px;}
    	.w_179{width:179px;}
    	.w_73{width:73px;}
    	.w_305{width:305px;}
    	.w_160{width:110px!important;text-align:center;}
    	#form_edit{display:none;margin-top:40px;}
    </style>
    <script src="../layui/layui.js"></script>
</head>
<body class="layui-layout-body">
<sql:setDataSource var="snapshot" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
     url="jdbc:sqlserver://localhost:1433;DatabaseName=share"
     user="sa"  password="123456"/>
   <!-- 查询fy表 -->   
<sql:query dataSource="${snapshot}" var="result">
		SELECT * from fy 
</sql:query>

<%-- <%
	String info =(String)session.getAttribute("info");
	if(info.equals("admin编辑房源信息成功")==true){
		out.print(info);
		
%>

<script>
layer.confirm('您是如何看待前端开发？', {
	  btn: ['重要','奇葩'] //按钮
	}, function(){
	  layer.msg('的确很重要', {icon: 1});
	}, function(){
	  layer.msg('也可以这样', {
	    time: 20000, //20s后自动关闭
	    btn: ['明白了', '知道了']
	  });
</script>	
<% 		
		
	}
%> --%>

<div style="padding: 15px;">房源信息</div>
<div class="layui-form layui-border-box layui-table-view" lay-filter="LAY-table-1"
     style=" height:515px;">
    <div class="layui-table-box">
        <div class="layui-table-header">
            <table cellspacing="0" cellpadding="0" border="0" class="layui-table">
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
                        <div class="layui-table-cell w_47">
								<span>
									ID
								</span>
                        </div>
                    </th>
                    <th data-field="username">
                        <div class="layui-table-cell w_73">
								<span>
									城市
								</span>
                        </div>
                    </th>
                    <th data-field="sex">
                        <div class="layui-table-cell w_160">
								<span>
									房源简介
								</span>
                        </div>
                    </th>
                    <th data-field="sign">
                        <div class="layui-table-cell w_305">
								<span>
									地址
								</span>
                        </div>
                    </th>
                    <th>
                        <div class="layui-table-cell w_91">
								<span>
									价格/每晚
								</span>
                        </div>
                    </th>
                    <th>
                        <div class="layui-table-cell w_154">
								<span>
									户型
								</span>
                        </div>
                    </th>
                    <th>
                        <div class="layui-table-cell w_59">
								<span>
									面积
								</span>
                        </div>
                    </th>
                    <th>
                        <div class="layui-table-cell w_73">
								<span>
									状态
								</span>
                        </div>
                    </th>
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
            <table cellspacing="0" cellpadding="0" border="0" class="layui-table">
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
                        <div class="layui-table-cell w_47">
                            <c:out value="${row.houseID}"/>
                        </div>
                    </td>
                    <td data-field="city">
                        <div class="layui-table-cell w_73">
                            	<c:out value="${row.city}"/>
                        </div>
                    </td>
                    <td data-field="intro">
                        <div class="layui-table-cell w_160">
                            	<c:out value="${row.hName}"/>
                        </div>
                    </td>
                    <td data-field="address">
                        <div class="layui-table-cell w_305">
                            <c:out value="${row.address}"/>
                        </div>
                    </td>
                    <td data-field="price">
                        <div class="layui-table-cell w_91">
                            	<c:out value="${row.price}"/>
                        </div>
                    </td>
          			<td data-field="area">
                        <div class="layui-table-cell w_154">
                            	<c:out value="${row.harea}"/>
                        </div>
                    </td>
                    <td data-field="size">
                        <div class="layui-table-cell w_59">
                            	<c:out value="${row.hsize}"/>
                        </div>
                    </td>
                    <td data-field="hired">
                        <div class="layui-table-cell w_73" data-state="<c:out value="${row.hired}"/>">
                            	<c:out value="${row.hired}"/>
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
                            <a data-id="<c:out value="${row.houseID}"/>"class="layui-btn layui-btn-danger layui-btn-xs del_btn" lay-event="del">
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

<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script src="../layui/layui.js"></script>
<script>

    layui.use('table', function(){
        var table = layui.table;
    });
    //删除
    $('.del_btn').click(function(){
    	//var hid=$(this).attr('data-id');
    	console.log(location.href);
    	layer.confirm('确认删除该房源？', {
    		  btn: ['是的','返回'] //按钮
    		}, function(){
    			var hid=$(this).attr('data-id');
    			window.location.href="../task3-6.jsp?para=deleteFy&id="+hid;
    		});
    	
    })
    
    //编辑
   $('.edit_btn').click(function(){
	   var index = $($(this).parents('.index')).index();
   	console.log(index);//获取tr的索引值
   	var info = $('.index').eq(index);//jq用eq(得到的是jq对象)&&js用get(得到的是DOM对象)
   	console.log(info); //获得当前元素的祖先元素tr
	   //去空格
   	function space(param){
		var result =	param.replace(/^\s*|\s*$/g, "");
		return result;
	}
   	var id =space(info.find('td[data-field="id"] div').text());
   	var city =space(info.find('td[data-field="city"] div').text());
   	var intro =space(info.find('td[data-field="intro"] div').text());
   	var address =space(info.find('td[data-field="address"] div').text());
   	var price =space(info.find('td[data-field="price"] div').text());
   	var area =space(info.find('td[data-field="area"] div').text());
   	var size =space(info.find('td[data-field="size"] div').text());
   	var hired =space(info.find('td[data-field="hired"] div').text());
   	
   	$('input[name="houseid"]').val(id);
   	$('input[name="city"]').val(city);
   	$('input[name="intro"]').val(intro);
   	$('input[name="address"]').val(address);
   	$('input[name="price"]').val(price);
   	$('input[name="area"]').val(area);
   	$('input[name="size"]').val(size);
   	$('input[name="hired"]').val(hired);
    	
    	
    	
	   layer.open({
 		  type: 1,
 		  skin: 'layui-layer-rim', //加上边框
 		  area: ['620px', '520px'], //宽高
 		  content: $('#form_edit')
 		});
   })
</script>
</body>
<form class="layui-form" action="fyUpdate.jsp" id="form_edit">
	<input type="hidden" name="houseid">
	  <div class="layui-form-item">
    <label class="layui-form-label">城市</label>
    <div class="layui-input-inline">
      <select name="city" lay-verify="required">
        <option value=""></option>
        <option value="芜湖">芜湖</option>
        <option value="合肥">合肥</option>
        <option value="北京">北京</option>
        <option value="深圳">深圳</option>
        <option value="杭州">杭州</option>
      </select>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">房源简介</label>
    <div class="layui-input-inline" style="width:300px;">
     <input type="text" name="intro" required lay-verify="required" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux">格式：【城市名】介绍~</div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">地址</label>
    <div class="layui-input-block" style="padding-right:20px;">
      <input type="text" name="address" required lay-verify="required" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">价格/每晚</label>
    <div class="layui-input-inline">
      <input type="text" name="price" required  lay-verify="required" class="layui-input">
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label">户型</label>
    <div class="layui-input-inline">
      <input type="text" name="area" required  lay-verify="required" class="layui-input">
    </div>
  </div>
   <div class="layui-form-item">
    <label class="layui-form-label">面积</label>
    <div class="layui-input-inline">
      <input type="text" name="size" required  lay-verify="required"  class="layui-input">
    </div>
  </div> 
    <div class="layui-form-item">
    <label class="layui-form-label">出租情况</label>
    <div class="layui-input-block">
      <input type="radio" name="hired" value="yes" title="已经出租">
      <input type="radio" name="hired" value="no" title="未出租" checked>
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