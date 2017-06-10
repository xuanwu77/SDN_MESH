<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8" />
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />

	 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    

    <title>软件定义Mesh网络</title>
    <!-- Bootstrap Styles-->
    <link href="./assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="./assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="./assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="./assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
   <!--  <link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' /> --> 
    <link rel="stylesheet" href="./assets/js/Lightweight-Chart/cssCharts.css"> 
	
	




</head>
<body>
   <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><strong>软件定义Mesh网络</strong></a>
				
		<div id="sideNav" >
		<i class="fa fa-bars icon"></i> 
		</div>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                   
                    
                </li>
             
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                   
                </li> 
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                   
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                   
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a  href="Topology.jsp"><i class="fa fa-dashboard"></i> 网络拓扑</a>
                    </li>
                   
					 
					 <li>
                        <a href="#"><i class="fa fa-sitemap"></i> 信息图表<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="active-menu" href="#"> 路由器信息</a> 

                            </li>
                            <li>
                                <a href="#"> 用户信息</a>
                            </li>
							</ul>
						</li>	
 
                    
                    <li>
                        <a href="table.html"><i class="fa fa-table"></i> 路由控制 </a>
                    </li>
                    <li>
                        <a href="form.html"><i class="fa fa-edit"></i> 负载均衡</a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
      
<div id="page-wrapper" >
		  <div class="header"> 
                        <h1 class="page-header">路由器信息
                            <small>Responsive tables</small>
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Home</a></li>
					  <li><a href="#">Tables</a></li>
					  
					</ol> 
									
		</div>
		
            <div id="page-inner"> 
               
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             路由器资源信息表
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>路由器编号</th>
                                            <th>路由器IP</th>
                                            <th>内存使用率(%)</th>
                                            <th>CPU占用率(%)</th>
                                            <th>接收速率(kB/s)</th>
                                            <th>发送速率(kB/s)</th>
                                        </tr>
                                    </thead>
                                    <tbody id="router_table">
                                  
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
                <!-- /. ROW  -->
            <div class="row">
                <div class="col-md-6" >
                  <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            2号路由器相邻节点信息
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>延迟(ms)</th>
                                            <th>丢包率(%)</th>
                                            <th>信号强度(dBm)</th>
                                        </tr>
                                    </thead>
                                    <tbody id="nb_2">
                                        
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                     <!-- End  Kitchen Sink -->
                </div>
                <div class="col-md-6">
                     <!--   Basic Table  -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            3号路由器相邻节点信息
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table  table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                           <th>#</th>
                                            <th>延迟(ms)</th>
                                            <th>丢包率(%)</th>
                                            <th>信号强度(dBm)</th>
                                        </tr>
                                    </thead>
                                    <tbody id="nb_3">
                                       
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                      <!-- End  Basic Table  -->
                </div>
            </div>
                <!-- /. ROW  -->
            <div class="row">
                <div class="col-md-6">
                      <!--    Striped Rows Table  -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            4号路由器相邻节点信息
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>延迟(ms)</th>
                                            <th>丢包率(%)</th>
                                            <th>信号强度(dBm)</th>
                                        </tr>
                                    </thead>
                                    <tbody id="nb_4">
                                    
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--  End  Striped Rows Table  -->
                </div>
                <div class="col-md-6">
                      <!--    Striped Rows Table  -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            5号路由器相邻节点信息
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>延迟(ms)</th>
                                            <th>丢包率(%)</th>
                                            <th>信号强度(dBm)</th>
                                        </tr>
                                    </thead>
                                    <tbody id="nb_5">
                                    
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--  End  Striped Rows Table  -->
                </div>
            </div>
               
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
		var xhr = new XMLHttpRequest();
		function createXhr() {
			xhr.onreadystatechange = function() {
				console.log(xhr.responseText);
				if (xhr.readyState == 4 && xhr.status == 200
						&& xhr.responseText != "") {
					var str = xhr.responseText;
					var arr = str.split("*");
					var arr1 = arr[0].split(':');
					var table = document.getElementById("router_table");
					table.innerHTML = "";
					for (var i = 0; i < Math.floor(arr1.length /6); i++) {
						var str1 = "";
						for (var j = 0; j < 6; j++) {
							str1 += "<td>" + arr1[6 * i + j] + "</td>";
						}
						var tr = document.createElement("tr");
						tr.innerHTML = str1;
						table.appendChild(tr);
					}
					
					var arr2 = arr[1].split(':');
					var table = document.getElementById("nb_2");
					table.innerHTML = "";
					for (var i = 0; i < Math.floor(arr2.length /4); i++) {
						var str1 = "";
						for (var j = 0; j < 4; j++) {
							str1 += "<td>" + arr2[4 * i + j] + "</td>";
						}
						var tr = document.createElement("tr");
						tr.innerHTML = str1;
						table.appendChild(tr);
					}
					
					var arr3 = arr[2].split(':');
					var table = document.getElementById("nb_3");
					table.innerHTML = "";
					for (var i = 0; i < Math.floor(arr3.length /4); i++) {
						var str1 = "";
						for (var j = 0; j < 4; j++) {
							str1 += "<td>" + arr3[4 * i + j] + "</td>";
						}
						var tr = document.createElement("tr");
						tr.innerHTML = str1;
						table.appendChild(tr);
					}
					
					var arr4 = arr[3].split(':');
					var table = document.getElementById("nb_4");
					table.innerHTML = "";
					for (var i = 0; i < Math.floor(arr4.length /4); i++) {
						var str1 = "";
						for (var j = 0; j < 4; j++) {
							str1 += "<td>" + arr4[4 * i + j] + "</td>";
						}
						var tr = document.createElement("tr");
						tr.innerHTML = str1;
						table.appendChild(tr);
					}
					
					var arr5 = arr[4].split(':');
					var table = document.getElementById("nb_5");
					table.innerHTML = "";
					for (var i = 0; i < Math.floor(arr5.length /4); i++) {
						var str1 = "";
						for (var j = 0; j < 4; j++) {
							str1 += "<td>" + arr5[4 * i + j] + "</td>";
						}
						var tr = document.createElement("tr");
						tr.innerHTML = str1;
						table.appendChild(tr);
					}
				}
			}
			
			xhr.open("POST", "SDN_Servlet?para=router", true);
			xhr.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded;charset=UTF-8");
			xhr.send();
		}
		setInterval(createXhr, 1000)
	</script>
</body>
</html>