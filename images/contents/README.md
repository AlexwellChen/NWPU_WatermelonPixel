```
by Steve X
Updated on Aug.14/2019
```
## 图片素材上传要求

### 内容要求
- home
	- 短边不超过400px或文件不超过500K(减小体积并防止盗图)
	- 画面居中打摄学logo白色半透明水印

- picture
	- 短边不超过600px或文件不超过1M(减小体积并防止盗图)
	- 画面居中打摄学logo白色半透明水印

- [screenshot](../screenshot)
	- 文件不超过1M
	- 使用Markdown的`![](图片目录)`语法进行调用,不可重复上传

### 命名要求
- 根据首页标题和内容位置找到对应文件夹:
	- 最新作品:	[./home/latest_work](home/latest_work)
	- 置顶作品:	[./home/top_work](home/top_work)

- 修改并运行`rename.py`进行批量命名(或手动命名)  
`注:rename.py目前仅为一个临时的脚本,便于进行批量命名,未必严谨,使用前请自行修改代码`
	- 前2项(大图):	`img1.jpg`和`img2.jpg`
	- 其余项(小图):	`img_small`+序号+`.jpg`,序号范围为1-8

- 尽量用下划线`_`代替横杠`-`和空格` `
- 素材一律用英文命名,不要出现中文或拼音

#### 为方便素材管理,请严格遵守命名要求,否则可能会出错。
#### 上传之前请压缩图片素材,否则会造成项目体积急剧增大。
---
`NPUPhoto/images/contents/README.md`