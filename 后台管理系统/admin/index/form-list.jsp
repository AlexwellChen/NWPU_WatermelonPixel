<%@ page contentType="text/html; charset=UTF-8" %>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>表单列表</title>
		<link rel="stylesheet" type="text/css" href="../../static/admin/layui/css/layui.css" />
		<link rel="stylesheet" type="text/css" href="../../static/admin/css/admin.css" />
	</head>

	<body>
		<div class="page-content-wrap">
			<form class="layui-form" action="">
				<div class="layui-form-item">
					<div class="layui-inline tool-btn">
						<button class="layui-btn layui-btn-small layui-btn-normal go-btn hidden-xs" data-url="danye-detail.jsp"><i class="layui-icon">&#xe654;</i></button>
						<button class="layui-btn layui-btn-small layui-btn-warm listOrderBtn hidden-xs" data-url="/admin/category/listorderall.jsp"><i class="iconfont">&#xe656;</i></button>
					</div>
					<div class="layui-inline">
						<input type="text" name="title" placeholder="输入需要查询的表单" autocomplete="off" class="layui-input">
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
							<th>表单名称</th>
							<th>创建时间</th>
							<th>查看</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" name="" lay-skin="primary" data-id="1"></td>
							<td class="hidden-xs">1</td>
							<td>迎新报名</td>
							<td>2019-08-30</td>
							<td>
							  <div class="layui-inline">
								<button class="layui-btn layui-btn-mini layui-btn-normal  go-btn" data-id="1" data-url="form-detail.jsp"><i class="layui-icon">&#xe642;</i></button>
</div>
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="" lay-skin="primary" data-id="1"></td>
							<td class="hidden-xs">2</td>	
							<td>培训讲座</td>
							<td>2016-09-06 20:46:16</td>
							<td>
							  <div class="layui-inline">
								<button class="layui-btn layui-btn-mini layui-btn-normal  go-btn" data-id="1" data-url="form-detail.jsp"><i class="layui-icon">&#xe642;</i></button>
</div>
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="" lay-skin="primary" data-id="1"></td>
							<td class="hidden-xs">3</td>
							<td>外拍活动</td>
							<td>2016-09-06 20:46:16</td>
							<td>
							  <div class="layui-inline">
								<button class="layui-btn layui-btn-mini layui-btn-normal  go-btn" data-id="1" data-url="form-detail.jsp"><i class="layui-icon">&#xe642;</i></button>
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

				$('#table-list').on('click', '.table-list-status', function() {
					var That = $(this);
					var status = That.attr('data-status');
					var id = That.parent().attr('data-id');
					if(status == 1) {
						That.removeClass('layui-btn-normal').addClass('layui-btn-warm').jsp('éè').attr('data-status', 2);
					} else if(status == 2) {
						That.removeClass('layui-btn-warm').addClass('layui-btn-normal').jsp('æ¾ç¤º').attr('data-status', 1);

					}
				})

			});
		</script>
	</body>

</html>