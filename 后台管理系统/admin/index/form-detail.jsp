<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>网站后台管理模版</title>
		<link rel="stylesheet" type="text/css" href="../../static/admin/layui/css/layui.css" />
		<link rel="stylesheet" type="text/css" href="../../static/admin/css/admin.css" />
	</head>
	<script>
		function chaCloor(field){
			var pig = field.checked;
			pig?field.nextSibling.style.backgroundColor="skyblue":field.nextSibling.style.backgroundColor="white";
		}
	</script>
	<body>
		<div class="page-content-wrap">
			<form class="layui-form" action="">
				<div class="layui-form-item">
					<div class="layui-inline tool-btn">
					</div>
					<div class="layui-inline">
						<input type="text" name="title" placeholder="请输入标题" autocomplete="off" class="layui-input">
					</div>
					<button class="layui-btn layui-btn-normal" lay-submit="search">搜索</button>
				</div>
			</form>
			<div class="layui-form" id="table-list">
				<table class="layui-table" lay-even lay-skin="nob">
					<colgroup>
						<col width="50">
						<col class="hidden-xs" width="50">
						<col class="hidden-xs" width="100">
						<col>
						<col class="hidden-xs" width="200">
						<col width="80">
						<col width="150">
					</colgroup>
					<thead>
						<tr>
							<th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose"></th>
							<th class="hidden-xs">ID</th>
							<th class="hidden-xs">姓名</th>
							<th>学号</th>
							<th>学院</th>
							<th>报名时间</th>
						    <th>邮箱</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" onClick="chaCloor(this)" name="" lay-skin="primary" data-id="1"></td>
							<td>1</td>
							<td>黄晓明</td>
							<td>2017303055</td>
							<td>软件学院</td>
							<td>2016.09.06</td>
							<td>166453212313@qq.com</td>
							<td>
								<div class="layui-inline">
									
									<button class="layui-btn layui-btn-mini layui-btn-danger del-btn" data-id="1" data-url="del.jsp"><i class="layui-icon">&#xe640;</i></button>
								</div>
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="" lay-skin="primary" data-id="1"></td>
							<td>1</td>
							<td>黄晓明</td>
							<td>2017303055</td>
							<td>软件学院</td>
							<td>2016.09.06</td>
							<td>166453212313@qq.com</td>
							<td>
								<div class="layui-inline">
									
									<button class="layui-btn layui-btn-mini layui-btn-danger del-btn" data-id="1" data-url="del.jsp"><i class="layui-icon">&#xe640;</i></button>
								</div>
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="" lay-skin="primary" data-id="1"></td>
							<td>1</td>
							<td>黄晓明</td>
							<td>2017303055</td>
							<td>软件学院</td>
							<td>2016.09.06</td>
							<td>166453212313@qq.com</td>
							<td>
								<div class="layui-inline">
									
									<button class="layui-btn layui-btn-mini layui-btn-danger del-btn" data-id="1" data-url="del.jsp"><i class="layui-icon">&#xe640;</i></button>
								</div>
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="" lay-skin="primary" data-id="1"></td>
							<td>1</td>
							<td>黄晓明</td>
							<td>2017303055</td>
							<td>软件学院</td>
							<td>2016.09.06</td>
							<td>166453212313@qq.com</td>
							<td>
								<div class="layui-inline">
									
									<button class="layui-btn layui-btn-mini layui-btn-danger del-btn" data-id="1" data-url="del.jsp"><i class="layui-icon">&#xe640;</i></button>
								</div>
							</td>
						</tr>						
					</tbody>
				</table>
				<div class="page-wrap">
						<ul class="pagination">
							<li class="disabled"><span>«</span></li>
							<li class="active"><span>1</span></li>
							<li>
								<a href="#">2</a>
							</li>
							<li>
								<a href="#">»</a>
							</li>
						</ul>
					</div>
			</div>
		</div>
		<script src="../../static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="../../static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
		<script>
			layui.use(['form', 'jquery', 'layer', 'dialog'], function() {
				var $ = layui.jquery;

				//修改状态
				$('#table-list').on('click', '.table-list-status', function() {
					var That = $(this);
					var status = That.attr('data-status');
					var id = That.parent().attr('data-id');
					if(status == 1) {
						That.removeClass('layui-btn-normal').addClass('layui-btn-warm').jsp('隐藏').attr('data-status', 2);
					} else if(status == 2) {
						That.removeClass('layui-btn-warm').addClass('layui-btn-normal').jsp('显示').attr('data-status', 1);

					}
				})

			});
		</script>
	</body>

</html>