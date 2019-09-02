
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<body>

	<form name="form1" method="post" action="uptodb.jsp">

		<div class="upload_box">
			<b>上传图片</b> <input type="file" name="image" id="file"
				accept="image/*" onchange="imgChange(this);" />
			<!--文件上传选择按钮-->
			<div id="preview">
				<img id="imghead" src="/style/images/blank.gif" width="260"
					height="180" />
				<!--图片显示位置-->
			</div>
		</div>
		<p>

			<input type="submit" name="Submit" value="提交">

		</p>
	</form>
	<script type="text/javascript">
		// 选择图片显示
		function imgChange(obj) {
			//获取点击的文本框
			var file = document.getElementById("file");
			var imgUrl = window.URL.createObjectURL(file.files[0]);
			var img = document.getElementById('imghead');
			img.setAttribute('src', imgUrl); // 修改img标签src属性值
		};
	</script>
</body>

</html>
