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
		<link rel="stylesheet" type="text/css" href="../../static/admin/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="../../static/admin/css/admin.css"/>
	</head>
	<body>
		<div class="wrap-container welcome-container">
			<div class="row">
				<div class="welcome-left-container col-lg-9">
					<div class="data-show">
						<ul class="clearfix">
							<li class="col-sm-12 col-md-4 col-xs-12">
								<a href="javascript:;" class="clearfix">
									<div class="icon-bg bg-org f-l">
										<span class="iconfont">&#xe606;</span>
									</div>
									<div class="right-text-con">
									  <p class="name">关注人数</p>
									  <p><span class="color-org">89</span>数据<span class="iconfont">&#xe628;</span></p>
									</div>
								</a>
							</li>
							<li class="col-sm-12 col-md-4 col-xs-12">
								<a href="javascript:;" class="clearfix">
									<div class="icon-bg bg-blue f-l">
										<span class="iconfont">&#xe602;</span>
									</div>
									<div class="right-text-con">
									  <p class="name">图片数</p>
									  <p><span class="color-blue">189</span>数据<span class="iconfont">&#xe628;</span></p>
									</div>
								</a>
							</li>
							<li class="col-sm-12 col-md-4 col-xs-12">
								<a href="javascript:;" class="clearfix">
									<div class="icon-bg bg-green f-l">
										<span class="iconfont">&#xe605;</span>
									</div>
									<div class="right-text-con">
									  <p class="name">活动数</p>
									  <p><span class="color-green">221</span>数据<span class="iconfont">&#xe60f;</span></p>
									</div>
								</a>
							</li>
						</ul>
					</div>
					<!--图表-->
					<div class="chart-panel panel panel-default"> </div>
					<!--服务器信息-->				</div>
</div>
		</div>
		<script src="../../static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="../../static/admin/lib/echarts/echarts.js"></script>
		<script type="text/javascript">
			layui.use(['layer','jquery'], function(){
				var layer 	= layui.layer;
				var $=layui.jquery;
				//图表
				var myChart;
				require.config({
				    paths: {
				        echarts: '../../static/admin/lib/echarts'
				    }
				});
				require(
				    [
				        'echarts',
				        'echarts/chart/bar',
				        'echarts/chart/line',
				        'echarts/chart/map'
				    ],
				    function (ec) {
				        //--- 折柱 ---
				        myChart = ec.init(document.getElementById('chart'));
				        myChart.setOption(
				        	{
						     title: {
						        text: "数据统计",
						        textStyle: {
						            color: "rgb(85, 85, 85)",
						            fontSize: 18,
						            fontStyle: "normal",
						            fontWeight: "normal"
						        }
						    },
						    tooltip: {
						        trigger: "axis"
						    },
						    legend: {
						        data: ["会员", "文章", "评论"],
						        selectedMode: false,
						    },
						    toolbox: {
						        show: true,
						        feature: {
						            dataView: {
						                show: false,
						                readOnly: true
						            },
						            magicType: {
						                show: false,
						                type: ["line", "bar", "stack", "tiled"]
						            },
						            restore: {
						                show: true
						            },
						            saveAsImage: {
						                show: true
						            },
						            mark: {
						                show: false
						            }
						        }
						    },
						    calculable: false,
						    xAxis: [
						        {
						            type: "category",
						            boundaryGap: false,
						            data: ["周一", "周二", "周三", "周四", "周五", "周六", "周日"]
						        }
						    ],
						    yAxis: [
						        {
						            type: "value"
						        }
						    ],
						     grid: {
						        x2: 30,
						        x: 50
						    },
						    series: [
						        {
						            name: "会员",
						            type: "line",
						            smooth: true,
						            itemStyle: {
						                normal: {
						                    areaStyle: {
						                        type: "default"
						                    }
						                }
						            },
						            data: [10, 12, 21, 54, 260, 830, 710]
						        },
						        {
						            name: "文章",
						            type: "line",
						            smooth: true,
						            itemStyle: {
						                normal: {
						                    areaStyle: {
						                        type: "default"
						                    }
						                }
						            },
						            data: [30, 182, 434, 791, 390, 30, 10]
						        },
						        {
						            name: "评论",
						            type: "line",
						            smooth: true,
						            itemStyle: {
						                normal: {
						                    areaStyle: {
						                        type: "default"
						                    },
						                    color: "rgb(110, 211, 199)"
						                }
						            },
						            data: [1320, 1132, 601, 234, 120, 90, 20]
						        }
						    ]
						}
				        );
					}
				);
				$(window).resize(function(){
					myChart.resize();
				})
			});
		</script>
	</body>
</html>
