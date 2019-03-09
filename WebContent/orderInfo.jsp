<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>layout 后台大布局 - Layui</title>
    <link rel="stylesheet" href="layui/css/layui.css">
</head>
<body class="layui-layout-body">
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
                        <div class="layui-table-cell laytable-cell-1-id">
								<span>
									ID
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
                        <div class="layui-table-cell laytable-cell-1-username">
								<span>
									用户名
								</span>
                        </div>
                    </th>
                    <th data-field="sex">
                        <div class="layui-table-cell laytable-cell-1-sex">
								<span>
									性别
								</span>
								<span class="layui-table-sort layui-inline">
									<i class="layui-edge layui-table-sort-asc">
                                    </i>
									<i class="layui-edge layui-table-sort-desc">
                                    </i>
								</span>
                        </div>
                    </th>
                    <th data-field="sign">
                        <div class="layui-table-cell laytable-cell-1-sign">
								<span>
									签名
								</span>
                        </div>
                    </th>
                    <th data-field="experience">
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
                    </th>
                    <th data-field="9">
                        <div class="layui-table-cell laytable-cell-1-9" align="center">
								<span>
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
                <tr data-index="0" class="">
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
                        <div class="layui-table-cell laytable-cell-1-id">
                            10000
                        </div>
                    </td>
                    <td data-field="username">
                        <div class="layui-table-cell laytable-cell-1-username">
                            user-0
                        </div>
                    </td>
                    <td data-field="sex">
                        <div class="layui-table-cell laytable-cell-1-sex">
                            女
                        </div>
                    </td>
                    <td data-field="sign">
                        <div class="layui-table-cell laytable-cell-1-sign">
                            签名-0
                        </div>
                    </td>
                    <td data-field="experience">
                        <div class="layui-table-cell laytable-cell-1-experience">
                            499
                        </div>
                    </td>
                    <td data-field="classify">
                        <div class="layui-table-cell laytable-cell-1-classify">
                            词人
                        </div>
                    </td>
                    <td data-field="wealth">
                        <div class="layui-table-cell laytable-cell-1-wealth">
                            62007298
                        </div>
                    </td>
                    <td data-field="score">
                        <div class="layui-table-cell laytable-cell-1-score">
                            11.47
                        </div>
                    </td>
                    <td data-field="9" align="center" data-off="true">
                        <div class="layui-table-cell laytable-cell-1-9">
                            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">
                                查看
                            </a>
                            <a class="layui-btn layui-btn-xs" lay-event="edit">
                                编辑
                            </a>
                            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">
                                删除
                            </a>
                        </div>
                    </td>
                </tr>
                <tr data-index="1" class="">
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
                        <div class="layui-table-cell laytable-cell-1-id">
                            10001
                        </div>
                    </td>
                    <td data-field="username">
                        <div class="layui-table-cell laytable-cell-1-username">
                            user-1
                        </div>
                    </td>
                    <td data-field="sex">
                        <div class="layui-table-cell laytable-cell-1-sex">
                            男
                        </div>
                    </td>
                    <td data-field="sign">
                        <div class="layui-table-cell laytable-cell-1-sign">
                            签名-1
                        </div>
                    </td>
                    <td data-field="experience">
                        <div class="layui-table-cell laytable-cell-1-experience">
                            960
                        </div>
                    </td>
                    <td data-field="classify">
                        <div class="layui-table-cell laytable-cell-1-classify">
                            诗人
                        </div>
                    </td>
                    <td data-field="wealth">
                        <div class="layui-table-cell laytable-cell-1-wealth">
                            71513669
                        </div>
                    </td>
                    <td data-field="score">
                        <div class="layui-table-cell laytable-cell-1-score">
                            28.34
                        </div>
                    </td>
                    <td data-field="9" align="center" data-off="true">
                        <div class="layui-table-cell laytable-cell-1-9">
                            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">
                                查看
                            </a>
                            <a class="layui-btn layui-btn-xs" lay-event="edit">
                                编辑
                            </a>
                            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">
                                删除
                            </a>
                        </div>
                    </td>
                </tr>
                <tr data-index="2" class="">
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
                        <div class="layui-table-cell laytable-cell-1-id">
                            10002
                        </div>
                    </td>
                    <td data-field="username">
                        <div class="layui-table-cell laytable-cell-1-username">
                            user-2
                        </div>
                    </td>
                    <td data-field="sex">
                        <div class="layui-table-cell laytable-cell-1-sex">
                            女
                        </div>
                    </td>
                    <td data-field="sign">
                        <div class="layui-table-cell laytable-cell-1-sign">
                            签名-2
                        </div>
                    </td>
                    <td data-field="experience">
                        <div class="layui-table-cell laytable-cell-1-experience">
                            911
                        </div>
                    </td>
                    <td data-field="classify">
                        <div class="layui-table-cell laytable-cell-1-classify">
                            作家
                        </div>
                    </td>
                    <td data-field="wealth">
                        <div class="layui-table-cell laytable-cell-1-wealth">
                            12867792
                        </div>
                    </td>
                    <td data-field="score">
                        <div class="layui-table-cell laytable-cell-1-score">
                            25.85
                        </div>
                    </td>
                    <td data-field="9" align="center" data-off="true">
                        <div class="layui-table-cell laytable-cell-1-9">
                            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">
                                查看
                            </a>
                            <a class="layui-btn layui-btn-xs" lay-event="edit">
                                编辑
                            </a>
                            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">
                                删除
                            </a>
                        </div>
                    </td>
                </tr>
                <tr data-index="3" class="">
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
                        <div class="layui-table-cell laytable-cell-1-id">
                            10003
                        </div>
                    </td>
                    <td data-field="username">
                        <div class="layui-table-cell laytable-cell-1-username">
                            user-3
                        </div>
                    </td>
                    <td data-field="sex">
                        <div class="layui-table-cell laytable-cell-1-sex">
                            男
                        </div>
                    </td>
                    <td data-field="sign">
                        <div class="layui-table-cell laytable-cell-1-sign">
                            签名-3
                        </div>
                    </td>
                    <td data-field="experience">
                        <div class="layui-table-cell laytable-cell-1-experience">
                            112
                        </div>
                    </td>
                    <td data-field="classify">
                        <div class="layui-table-cell laytable-cell-1-classify">
                            作家
                        </div>
                    </td>
                    <td data-field="wealth">
                        <div class="layui-table-cell laytable-cell-1-wealth">
                            6736741
                        </div>
                    </td>
                    <td data-field="score">
                        <div class="layui-table-cell laytable-cell-1-score">
                            95.36
                        </div>
                    </td>
                    <td data-field="9" align="center" data-off="true">
                        <div class="layui-table-cell laytable-cell-1-9">
                            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">
                                查看
                            </a>
                            <a class="layui-btn layui-btn-xs" lay-event="edit">
                                编辑
                            </a>
                            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">
                                删除
                            </a>
                        </div>
                    </td>
                </tr>
                <tr data-index="4" class="">
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
                        <div class="layui-table-cell laytable-cell-1-id">
                            10004
                        </div>
                    </td>
                    <td data-field="username">
                        <div class="layui-table-cell laytable-cell-1-username">
                            user-4
                        </div>
                    </td>
                    <td data-field="sex">
                        <div class="layui-table-cell laytable-cell-1-sex">
                            女
                        </div>
                    </td>
                    <td data-field="sign">
                        <div class="layui-table-cell laytable-cell-1-sign">
                            签名-4
                        </div>
                    </td>
                    <td data-field="experience">
                        <div class="layui-table-cell laytable-cell-1-experience">
                            695
                        </div>
                    </td>
                    <td data-field="classify">
                        <div class="layui-table-cell laytable-cell-1-classify">
                            酱油
                        </div>
                    </td>
                    <td data-field="wealth">
                        <div class="layui-table-cell laytable-cell-1-wealth">
                            70617394
                        </div>
                    </td>
                    <td data-field="score">
                        <div class="layui-table-cell laytable-cell-1-score">
                            42.48
                        </div>
                    </td>
                    <td data-field="9" align="center" data-off="true">
                        <div class="layui-table-cell laytable-cell-1-9">
                            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">
                                查看
                            </a>
                            <a class="layui-btn layui-btn-xs" lay-event="edit">
                                编辑
                            </a>
                            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">
                                删除
                            </a>
                        </div>
                    </td>
                </tr>
                <tr data-index="5" class="">
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
                        <div class="layui-table-cell laytable-cell-1-id">
                            10005
                        </div>
                    </td>
                    <td data-field="username">
                        <div class="layui-table-cell laytable-cell-1-username">
                            user-5
                        </div>
                    </td>
                    <td data-field="sex">
                        <div class="layui-table-cell laytable-cell-1-sex">
                            女
                        </div>
                    </td>
                    <td data-field="sign">
                        <div class="layui-table-cell laytable-cell-1-sign">
                            签名-5
                        </div>
                    </td>
                    <td data-field="experience">
                        <div class="layui-table-cell laytable-cell-1-experience">
                            407
                        </div>
                    </td>
                    <td data-field="classify">
                        <div class="layui-table-cell laytable-cell-1-classify">
                            词人
                        </div>
                    </td>
                    <td data-field="wealth">
                        <div class="layui-table-cell laytable-cell-1-wealth">
                            98900963
                        </div>
                    </td>
                    <td data-field="score">
                        <div class="layui-table-cell laytable-cell-1-score">
                            77.31
                        </div>
                    </td>
                    <td data-field="9" align="center" data-off="true">
                        <div class="layui-table-cell laytable-cell-1-9">
                            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">
                                查看
                            </a>
                            <a class="layui-btn layui-btn-xs" lay-event="edit">
                                编辑
                            </a>
                            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">
                                删除
                            </a>
                        </div>
                    </td>
                </tr>
                <tr data-index="6" class="">
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
                        <div class="layui-table-cell laytable-cell-1-id">
                            10006
                        </div>
                    </td>
                    <td data-field="username">
                        <div class="layui-table-cell laytable-cell-1-username">
                            user-6
                        </div>
                    </td>
                    <td data-field="sex">
                        <div class="layui-table-cell laytable-cell-1-sex">
                            男
                        </div>
                    </td>
                    <td data-field="sign">
                        <div class="layui-table-cell laytable-cell-1-sign">
                            签名-6
                        </div>
                    </td>
                    <td data-field="experience">
                        <div class="layui-table-cell laytable-cell-1-experience">
                            230
                        </div>
                    </td>
                    <td data-field="classify">
                        <div class="layui-table-cell laytable-cell-1-classify">
                            酱油
                        </div>
                    </td>
                    <td data-field="wealth">
                        <div class="layui-table-cell laytable-cell-1-wealth">
                            4063839
                        </div>
                    </td>
                    <td data-field="score">
                        <div class="layui-table-cell laytable-cell-1-score">
                            72.66
                        </div>
                    </td>
                    <td data-field="9" align="center" data-off="true">
                        <div class="layui-table-cell laytable-cell-1-9">
                            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">
                                查看
                            </a>
                            <a class="layui-btn layui-btn-xs" lay-event="edit">
                                编辑
                            </a>
                            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">
                                删除
                            </a>
                        </div>
                    </td>
                </tr>
                <tr data-index="7" class="">
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
                        <div class="layui-table-cell laytable-cell-1-id">
                            10007
                        </div>
                    </td>
                    <td data-field="username">
                        <div class="layui-table-cell laytable-cell-1-username">
                            user-7
                        </div>
                    </td>
                    <td data-field="sex">
                        <div class="layui-table-cell laytable-cell-1-sex">
                            女
                        </div>
                    </td>
                    <td data-field="sign">
                        <div class="layui-table-cell laytable-cell-1-sign">
                            签名-7
                        </div>
                    </td>
                    <td data-field="experience">
                        <div class="layui-table-cell laytable-cell-1-experience">
                            1042
                        </div>
                    </td>
                    <td data-field="classify">
                        <div class="layui-table-cell laytable-cell-1-classify">
                            词人
                        </div>
                    </td>
                    <td data-field="wealth">
                        <div class="layui-table-cell laytable-cell-1-wealth">
                            9805772
                        </div>
                    </td>
                    <td data-field="score">
                        <div class="layui-table-cell laytable-cell-1-score">
                            2.88
                        </div>
                    </td>
                    <td data-field="9" align="center" data-off="true">
                        <div class="layui-table-cell laytable-cell-1-9">
                            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">
                                查看
                            </a>
                            <a class="layui-btn layui-btn-xs" lay-event="edit">
                                编辑
                            </a>
                            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">
                                删除
                            </a>
                        </div>
                    </td>
                </tr>
                <tr data-index="8" class="">
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
                        <div class="layui-table-cell laytable-cell-1-id">
                            10008
                        </div>
                    </td>
                    <td data-field="username">
                        <div class="layui-table-cell laytable-cell-1-username">
                            user-8
                        </div>
                    </td>
                    <td data-field="sex">
                        <div class="layui-table-cell laytable-cell-1-sex">
                            女
                        </div>
                    </td>
                    <td data-field="sign">
                        <div class="layui-table-cell laytable-cell-1-sign">
                            签名-8
                        </div>
                    </td>
                    <td data-field="experience">
                        <div class="layui-table-cell laytable-cell-1-experience">
                            942
                        </div>
                    </td>
                    <td data-field="classify">
                        <div class="layui-table-cell laytable-cell-1-classify">
                            作家
                        </div>
                    </td>
                    <td data-field="wealth">
                        <div class="layui-table-cell laytable-cell-1-wealth">
                            96230862
                        </div>
                    </td>
                    <td data-field="score">
                        <div class="layui-table-cell laytable-cell-1-score">
                            79.54
                        </div>
                    </td>
                    <td data-field="9" align="center" data-off="true">
                        <div class="layui-table-cell laytable-cell-1-9">
                            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">
                                查看
                            </a>
                            <a class="layui-btn layui-btn-xs" lay-event="edit">
                                编辑
                            </a>
                            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">
                                删除
                            </a>
                        </div>
                    </td>
                </tr>
                <tr data-index="9" class="">
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
                        <div class="layui-table-cell laytable-cell-1-id">
                            10009
                        </div>
                    </td>
                    <td data-field="username">
                        <div class="layui-table-cell laytable-cell-1-username">
                            user-9
                        </div>
                    </td>
                    <td data-field="sex">
                        <div class="layui-table-cell laytable-cell-1-sex">
                            男
                        </div>
                    </td>
                    <td data-field="sign">
                        <div class="layui-table-cell laytable-cell-1-sign">
                            签名-9
                        </div>
                    </td>
                    <td data-field="experience">
                        <div class="layui-table-cell laytable-cell-1-experience">
                            1014
                        </div>
                    </td>
                    <td data-field="classify">
                        <div class="layui-table-cell laytable-cell-1-classify">
                            酱油
                        </div>
                    </td>
                    <td data-field="wealth">
                        <div class="layui-table-cell laytable-cell-1-wealth">
                            55726955
                        </div>
                    </td>
                    <td data-field="score">
                        <div class="layui-table-cell laytable-cell-1-score">
                            64.30
                        </div>
                    </td>
                    <td data-field="9" align="center" data-off="true">
                        <div class="layui-table-cell laytable-cell-1-9">
                            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">
                                查看
                            </a>
                            <a class="layui-btn layui-btn-xs" lay-event="edit">
                                编辑
                            </a>
                            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">
                                删除
                            </a>
                        </div>
                    </td>
                </tr>
                <tr data-index="10" class="">
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
                        <div class="layui-table-cell laytable-cell-1-id">
                            10010
                        </div>
                    </td>
                    <td data-field="username">
                        <div class="layui-table-cell laytable-cell-1-username">
                            user-10
                        </div>
                    </td>
                    <td data-field="sex">
                        <div class="layui-table-cell laytable-cell-1-sex">
                            女
                        </div>
                    </td>
                    <td data-field="sign">
                        <div class="layui-table-cell laytable-cell-1-sign">
                            签名-10
                        </div>
                    </td>
                    <td data-field="experience">
                        <div class="layui-table-cell laytable-cell-1-experience">
                            700
                        </div>
                    </td>
                    <td data-field="classify">
                        <div class="layui-table-cell laytable-cell-1-classify">
                            酱油
                        </div>
                    </td>
                    <td data-field="wealth">
                        <div class="layui-table-cell laytable-cell-1-wealth">
                            93316089
                        </div>
                    </td>
                    <td data-field="score">
                        <div class="layui-table-cell laytable-cell-1-score">
                            94.40
                        </div>
                    </td>
                    <td data-field="9" align="center" data-off="true">
                        <div class="layui-table-cell laytable-cell-1-9">
                            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">
                                查看
                            </a>
                            <a class="layui-btn layui-btn-xs" lay-event="edit">
                                编辑
                            </a>
                            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">
                                删除
                            </a>
                        </div>
                    </td>
                </tr>
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
<script src="layui/layui.js"></script>
<script>
    layui.use('table', function(){
        var table = layui.table;
        //监听表格复选框选择
        table.on('checkbox(demo)', function(obj){
            console.log(obj)
        });
        //监听工具条
        table.on('tool(demo)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
                layer.msg('ID：'+ data.id + ' 的查看操作');
            } else if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                layer.alert('编辑行：<br>'+ JSON.stringify(data))
            }
        });




    });
    layui.use('element', function() {    //加载菜单hover动态效果
        var element = layui.element;

        //一些事件监听
        element.on('nav(test)', function(data){
            console.log(data);
        });

    });
</script>
</body>
</html>