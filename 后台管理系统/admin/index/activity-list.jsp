<%@ page contentType="text/html; charset=UTF-8" %>
<html class="iframe-h">

	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>ç½ç«åå°ç®¡çæ¨¡ç</title>
		<link rel="stylesheet" type="text/css" href="../../static/admin/layui/css/layui.css" />
		<link rel="stylesheet" type="text/css" href="../../static/admin/css/admin.css" />
	</head>

	<body>
		<div class="wrap-container clearfix">
				<div class="column-content-detail">
					<form class="layui-form" action="">
						<div class="layui-form-item">
							<div class="layui-inline tool-btn">
								<button class="layui-btn layui-btn-small layui-btn-normal addBtn" data-url="activity-add.jsp"><i class="layui-icon">&#xe654;</i></button>
								<button class="layui-btn layui-btn-small layui-btn-danger delBtn"  data-url="activity-add.jsp"><i class="layui-icon">&#xe640;</i></button>
								<button class="layui-btn layui-btn-small layui-btn-warm listOrderBtn hidden-xs" data-url="activity-add.jsp"><i class="iconfont">&#xe656;</i></button>
							</div>
							<div class="layui-inline">
								<input type="text" name="title" required lay-verify="required" placeholder="è¯·è¾å¥æ é¢" autocomplete="off" class="layui-input">
							</div>
							<div class="layui-inline">
								<select name="states" lay-filter="status">
									<option value="">è¯·éæ©ä¸ä¸ªç¶æ</option>
									<option value="010">æ­£å¸¸</option>
									<option value="021">åæ­¢</option>
									<option value="0571">å é¤</option>
								</select>
							</div>
							<button class="layui-btn layui-btn-normal" lay-submit="search">æç´¢</button>
						</div>
					</form>
					<div class="layui-form" id="table-list">
						<table class="layui-table" lay-even lay-skin="nob">
							<colgroup>
								<col width="50">
								<col class="hidden-xs" width="50">
								<col class="hidden-xs" width="100">
								<col>
								<col class="hidden-xs" width="150">
								<col class="hidden-xs" width="150">
								<col width="80">
								<col width="150">
							</colgroup>
							<thead>
								<tr>
									<th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose"></th>
									<th class="hidden-xs">ID</th>
									<th class="hidden-xs">æåº</th>
									<th>åç§°</th>
									<th class="hidden-xs">åå»ºæ¶é´</th>
									<th class="hidden-xs">ä¿®æ¹æ¶é´</th>
									<th>ç¶æ</th>
									<th>æä½</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox" name="" lay-skin="primary" data-id="1"></td>
									<td class="hidden-xs">1</td>
									<td class="hidden-xs"><input type="text" name="title" autocomplete="off" class="layui-input" value="0" data-id="1"></td>
									<td>ç©å·</td>
									<td class="hidden-xs">1989-10-14</td>
									<td class="hidden-xs">1989-10-14</td>
									<td><button class="layui-btn layui-btn-mini layui-btn-normal">æ­£å¸¸</button></td>
									<td>
										<div class="layui-inline">
											<button class="layui-btn layui-btn-small layui-btn-normal go-btn" data-id="1" data-url="activity-detail.jsp"><i class="layui-icon">&#xe642;</i></button>
											<button class="layui-btn layui-btn-small layui-btn-danger del-btn" data-id="1" data-url="activity-detail.jsp"><i class="layui-icon">&#xe640;</i></button>
										</div>
									</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="" lay-skin="primary" data-id="1"></td>
									<td class="hidden-xs">1</td>
									<td class="hidden-xs"><input type="text" name="title" autocomplete="off" class="layui-input" value="0" data-id="1"></td>
									<td>ç©å·</td>
									<td class="hidden-xs">1989-10-14</td>
									<td class="hidden-xs">1989-10-14</td>
									<td><button class="layui-btn layui-btn-mini layui-btn-normal">æ­£å¸¸</button></td>
									<td>
										<div class="layui-inline">
											<button class="layui-btn layui-btn-small layui-btn-normal go-btn" data-id="1" data-url="article-detail.jsp"><i class="layui-icon">&#xe642;</i></button>
											<button class="layui-btn layui-btn-small layui-btn-danger del-btn" data-id="1" data-url="article-detail.jsp"><i class="layui-icon">&#xe640;</i></button>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="page-wrap">
							<ul class="pagination">
								<li class="disabled"><span>Â«</span></li>
								<li class="active"><span>1</span></li>
								<li>
									<a href="#">2</a>
								</li>
								<li>
									<a href="#">Â»</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
		</div>
		<script src="../../static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="../../static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
	</body>

</html>