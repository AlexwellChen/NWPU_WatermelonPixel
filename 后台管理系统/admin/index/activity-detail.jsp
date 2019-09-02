<%@ page contentType="text/html; charset=UTF-8" %>
<html>

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
		<div class="page-content-wrap">
				<form class="layui-form">
					<div class="layui-tab" style="margin: 0;">
						<ul class="layui-tab-title">
						  <li><a href="activity-list.jsp">æ´»å¨åè¡¨</a></li>
						  <li class="layui-this">æ´»å¨è¯¦æ</li>
						</ul>
						<div class="layui-tab-content">
						  <div class="layui-tab-item"></div>
							<div class="layui-tab-item layui-show">
								<div class="layui-form-item">
								  <label class="layui-form-label">æ´»å¨åç§°ï¼</label>
								  <div class="layui-input-block">
										<input type="text" name="name" required lay-verify="required" placeholder="è¯·è¾å¥æ´»å¨åç§°" autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">åç±»æ ç®ï¼</label>
									<div class="layui-input-block">
										<select name="category" lay-verify="required">
											<option value="">è¯·éæ©åç±»æ ç®</option>
											<optgroup label="æ°é»ä¸­å¿">
												<option value="1" selected="">å¬å¸æ°é»</option>
												<option value="2">è¡ä¸æ°é»</option>
											</optgroup>
										</select>
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">å¾åä¸ä¼ ï¼</label>
									<div class="layui-input-block">
										<input type="file" name="fileï¼å¯éä¾¿å®ä¹ï¼" class="layui-upload-file">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">æ ç­¾ï¼</label>
									<div class="layui-input-block">
										<input type="checkbox" name="label[tj]" title="æ¨è" checked>
										<input type="checkbox" name="label[zd]" title="ç½®é¡¶">
										<input type="checkbox" name="label[hot]" title="ç­é¨">
									</div>
								</div>
								<div class="layui-form-item layui-form-text">
								  <label class="layui-form-label">æ´»å¨åå®¹ï¼</label>
								  <div class="layui-input-block">
										<textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor"></textarea>
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">å³é®å­ï¼</label>
									<div class="layui-input-block">
										<input type="text" name="laiyuan" placeholder="è¯·è¾å¥å³é®å­" autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-form-item layui-form-text">
									<label class="layui-form-label">æè¿°ï¼</label>
									<div class="layui-input-block">
										<textarea placeholder="è¯·è¾å¥åå®¹" class="layui-textarea"></textarea>
									</div>
								</div>
								<div class="layui-form-item">
								  <label class="layui-form-label">åå»ºäººï¼</label>
								  <div class="layui-input-block">
										<input type="text" name="laiyuan" required lay-verify="required" placeholder="è¯·è¾å¥åå»ºäºº" autocomplete="off" class="layui-input">
									</div>
								</div>
<div class="layui-form-item">
		    <label class="layui-form-label">ç¹å»æ°ï¼</label>
									<div class="layui-input-block">
										<input type="text" name="count" required lay-verify="required" placeholder="è¯·è¾å¥æç« ç¹å»æ°" autocomplete="off" class="layui-input" value="100">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="layui-form-item" style="padding-left: 10px;">
						<div class="layui-input-block">
							<button class="layui-btn layui-btn-normal" lay-submit lay-filter="formDemo">ç«å³æäº¤</button>
							<button type="reset" class="layui-btn layui-btn-primary">éç½®</button>
						</div>
					</div>
				</form>
		</div>
		<script type="text/javascript">
			var SCOPE = {
				static: '/static',
				index: '/admin/category/index.jsp',
				add: 'add.jsp',
				save: '/admin/category/save.jsp',
				edit: 'add.jsp',
				updateEdit: '/admin/category/updateedit.jsp',
				status: '/admin/category/updatestatus.jsp',
				del: '/admin/category/del.jsp',
				delAll: '/admin/category/deleteall.jsp',
				listOrderAll: '/admin/category/listorderall.jsp'
			}
		</script>
		<script src="../../static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="../../static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
		<script>
			
			layui.use(['form', 'jquery', 'laydate', 'layer', 'laypage', 'dialog',  'element', 'upload', 'layedit'], function() {
				var form = layui.form(),
					layer = layui.layer,
					$ = layui.jquery,
					laypage = layui.laypage,
					laydate = layui.laydate,
					layedit = layui.layedit,
					element = layui.element(),
					dialog = layui.dialog;

				//è·åå½åiframeçnameå¼
				var iframeObj = $(window.frameElement).attr('name');
				//åå»ºä¸ä¸ªç¼è¾å¨
				var editIndex = layedit.build('LAY_demo_editor', {
					tool: ['strong' //å ç²
						, 'italic' //æä½
						, 'underline' //ä¸åçº¿
						, 'del' //å é¤çº¿
						, '|' //åå²çº¿
						, 'left' //å·¦å¯¹é½
						, 'center' //å±ä¸­å¯¹é½
						, 'right' //å³å¯¹é½
						, 'link' //è¶é¾æ¥
						, 'unlink' //æ¸é¤é¾æ¥
						, 'image' //æå¥å¾ç
					],
					height: 100
				})
				//å¨é
				form.on('checkbox(allChoose)', function(data) {
					var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]');
					child.each(function(index, item) {
						item.checked = data.elem.checked;
					});
					form.render('checkbox');
				});
				form.render();

				layui.upload({
					url: 'ä¸ä¼ æ¥å£url',
					success: function(res) {
						console.log(res); //ä¸ä¼ æåè¿åå¼ï¼å¿é¡»ä¸ºjsonæ ¼å¼
					}
				});
			});
		</script>
	</body>

</html>