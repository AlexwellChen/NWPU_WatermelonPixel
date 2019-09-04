<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>活动发布</title>
		<link rel="stylesheet" type="text/css" href="../../static/admin/layui/css/layui.css" />
		<link rel="stylesheet" type="text/css" href="../../static/admin/css/admin.css" />
		<style>
.inputfile {
    width: 0.1px; 
    height: 0.1px; 
    opacity: 0; 
    overflow: hidden; 
    position: absolute; 
    z-index: -1;
}
.inputfile + label {
    height:100px;
    width:180px;
    color: white;
    background-color: #ffffff;
    display: inline-block;
    border:2px solid #CCCCCC;
}
.inputfile:focus + label,
.inputfile + label:hover {
    


}
.line_heng{
		
		margin: 2.3% 50% ;
		width: 4px;
		height: 40px; 
		background: #ccc;
}
.line_shu{
		
		margin: -13% 36% ;
		width: 60px;
		height: 4px; 
		background: #ccc;
}
.img_po{
border:0.1px solid #CCCCCC;
		margin:-4.3% 0%;
		width:181px;
		height:103px;
}
</style>
	</head>

	<body>
		<div class="page-content-wrap">
				<form  method="post" action="../../../activity/uptodb.jsp" enctype="multipart/form-data">
					<div class="layui-tab" style="margin: 0;">
						<ul class="layui-tab-title">
						  <li><a href="activity-list.jsp">活动列表</a></li>
						  <li class="layui-this">活动详情</li>
						</ul>
						<div class="layui-tab-content">
						  <div class="layui-tab-item"></div>
							<div class="layui-tab-item layui-show">
							
								<div class="layui-form-item">
								  <label class="layui-form-label">活动名称：</label>
								  <div class="layui-input-block">
										<input type="text" name="name" required lay-verify="required" placeholder="请输入活动名称" autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">教程分类：</label>
									<div class="layui-input-block">
										<select name="category" >
											
												<option value="lecture">培训讲座</option>
												<option value="outside">外拍活动</option>
											
										</select>
									</div>
								</div>
								
								<div class="layui-form-item">
									<label class="layui-form-label">图像上传：</label>
									<div class="form-group" >
        									<input type="file" name="image" accept="image/*" onchange="imgChange(this);" id="file" class="inputfile" />
											<label for="file"><div class="line_heng"></div>
											<div class="line_shu"></div>
											<div id="preview">
												<img id="imghead"src="/style/images/blank.gif" class="img_po"/> <!--图片显示位置-->
											</div>
											</label>
											
											
        
   									 </div>
								</div>
								
								
								<div class="layui-form-item layui-form-text">
								  <label class="layui-form-label">活动内容：</label>
								  <div class="layui-input-block">
										<textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor"></textarea>
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">关键字：</label>
									<div class="layui-input-block">
										<input type="text" name="key" placeholder="请输入关键字" autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-form-item layui-form-text">
									<label class="layui-form-label">描述：</label>
									<div class="layui-input-block">
										<textarea placeholder="请输入内容"  name="description" class="layui-textarea"></textarea>
									</div>
								</div>
								<div class="layui-form-item">
								  <label class="layui-form-label">作者：</label>
								  <div class="layui-input-block">
										<input type="text" name="writer" required lay-verify="required" placeholder="请输入创建人" autocomplete="off" class="layui-input">
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="layui-form-item" style="padding-left: 10px;">
						<div class="layui-input-block">
							<button class="layui-btn layui-btn-normal" type="submit" name="Submit" lay-filter="formDemo">立即提交</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
		</div>
	</body>
</html>