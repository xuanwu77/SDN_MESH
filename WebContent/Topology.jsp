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
<!--  <link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />  -->
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
				
		<div id="sideNav" href="">
		<i class="fa fa-bars icon"></i> 
		</div>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
<!--                     <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Doe</strong>
                                    <span class="pull-right text-muted">
                                        <em>Today</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since the...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
 -->                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
<!--                     <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">28% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100" style="width: 28%">
                                            <span class="sr-only">28% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">85% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                            <span class="sr-only">85% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
 -->                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
<!--                     <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
 -->                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
<!--                     <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
 -->                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a class="active-menu" href="Topology.jsp"><i class="fa fa-dashboard"></i> 网络拓扑</a>
                    </li>
                   
					 
					 <li>
                        <a href="#"><i class="fa fa-sitemap"></i> 信息图表<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="Router.jsp"> 路由器信息</a> 

                            </li>
                            <li>
                                <a href="#"> 用户信息</a>
                            </li>
							</ul>
						</li>	
 
                    
                    <li>
                        <a href="#"><i class="fa fa-table"></i> 路由控制 </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-edit"></i> 负载均衡</a>
                    </li>


                    
                    
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        
      
		<div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            网络拓扑 <small></small>
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Home</a></li>
					  <li><a href="#">Network Topology</a></li>
					  
					</ol> 
									
		</div>
            <div id="page-inner" style="height:400px;">
	
              
         
			
		
				
				
        
			
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="./assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="./assets/js/bootstrap.min.js"></script>
	 
    <!-- Metis Menu Js -->
    <script src="./assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="./assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="./assets/js/morris/morris.js"></script>
	
	
	<script src="./assets/js/easypiechart.js"></script>
	<script src="./assets/js/easypiechart-data.js"></script>
	
	 <script src="./assets/js/Lightweight-Chart/jquery.chart.js"></script>
	
    <!-- Custom Js -->
    <script src="./assets/js/custom-scripts.js"></script>

      
   


    







    <script src="./Qunee-H5-v2.6.04/demos/lib/qunee-min.js"></script>
	<script src="./Qunee-H5-v2.6.04/demos/lib/PC.js"></script>
  	<script src="./Qunee-H5-v2.6.04/demos/lib/Mobile.js"></script>
  	<script>
  	var graph = new Q.Graph('page-inner');
  	//定义双向箭头连线
    function createDedge(from,to){
        var edge = graph.createEdge(from,to);
        edge.setStyle(Q.Styles.ARROW_FROM, true);  
        return edge;
    }  
    //定义图标
    function createMnode(name,x,y,image){
        var node = graph.createNode(name,x,y);
        if(image){
            node.image = image;
        }
        return node;
    }  
  	var controler = createMnode("Controler", 0, -500,'Q-server');
  	var xhr = new XMLHttpRequest();
	function createXhr() {
		xhr.onreadystatechange = function() {
			console.log(xhr.responseText);
			if (xhr.readyState == 4 && xhr.status == 200
					&& xhr.responseText != "") {
				var str = xhr.responseText;
				var arr = str.split("*");
				
				//3号节点邻居表的信息
				var arr3 = arr[2].split(':');
				if(!arr3.length == 0){
					var mesh3 = createMnode("Mesh", 0, -350,'Q-exchanger2');
					createDedge(controller,mesh3);
					var node3_arr = [];
					for (var i = 0; i < Math.floor(arr3.length /4); i++) {
						node3_arr.push(arr1[4*i]);
					}		
					for(var j=0;j<node3_arr.length;j++){
						//先判断node3_arr[0]的数字
						if(node3_arr[j]==2){
							//显示
		   					var mesh2 = createMnode("Mesh", -300, -200,'Q-exchanger2');
							//连线
		   					createDedge( mesh3, mesh2); 
						}
						if(node3_arr[j]==4){
							//显示
							 var mesh4 = createMnode("Mesh", 300, -200,'Q-exchanger2');
							 graph.createEdge(mesh3, mesh4); 
							//连线
						}
						if(node3_arr[j]==5){
							//显示
							var mesh5 = createMnode("Mesh", 0, -50,'Q-exchanger2');
								//连线
							graph.createEdge(mesh3, mesh5); 
						}
						
					}
					
					
				}
				
				//2号节点邻居表的信息
				var arr2 = arr[1].split(':');
				if(!arr2.length == 0){
				var mesh2 = createMnode("Mesh", -300, -200,'Q-exchanger2');	
				var node2_arr = [];
				for (var i = 0; i < Math.floor(arr2.length /4); i++) {
					node2_arr.push(arr2[4*i]);
				}		
				for(var j=0;j<node2_arr.length;j++){
					//先判断node3_arr[0]的数字
					if(node2_arr[j]==3){
						//显示
	   					var mesh3 = createMnode("Mesh", 0, -350,'Q-exchanger2');
						//连线
	   					graph.createEdeg( mesh2, mesh3); 
					}
					if(node2_arr[j]==4){
						//显示
						 var mesh4 = createMnode("Mesh", 300, -200,'Q-exchanger2');
						 graph.createEdeg(mesh2, mesh4); 
						//连线
					}
					if(node2_arr[j]==5){
							//显示
						var mesh5 = createMnode("Mesh", 0, -50,'Q-exchanger2');
							//连线
						graph.createEdeg(mesh2, mesh5); 
					}
					
				}
				}
				
				//4号节点邻居表的信息
				var arr4 = arr[3].split(':');
				if(!arr4.length == 0){
				var node4_arr = [];
				for (var i = 0; i < Math.floor(arr4.length /4); i++) {
					node4_arr.push(arr4[4*i]);
				}		
				for(var j=0;j<node4_arr.length;j++){
					//先判断node3_arr[0]的数字
					if(node4_arr[j]==3){
						//显示
	   					var mesh3 = createMnode("Mesh", 0, -350,'Q-exchanger2');
						//连线
	   					graph.createEdeg( mesh4, mesh3); 
					}
					if(node4_arr[j]==2){
						//显示
					 var mesh2 = createMnode("Mesh", -300, -200,'Q-exchanger2');
					//连线
					 graph.createEdeg(mesh4, mesh2); 
					}
					if(node4_arr[j]==5){
						//显示
					var mesh5 = createMnode("Mesh", 0, -50,'Q-exchanger2');
						//连线
					graph.createEdeg(mesh2, mesh5); 
					}
					
				}
				}
				//5号节点邻居表的信息
				var arr5 = arr[4].split(':');
				if(!arr5.length == 0){
				var node5_arr = [];
				for (var i = 0; i < Math.floor(arr5.length /4); i++) {
					node5_arr.push(arr5[4*i]);
				}		
				for(var j=0;j<node5_arr.length;j++){
					
					//先判断node3_arr[0]的数字
					if(node5_arr[j]==3){
						//显示
	   					var mesh3 = createMnode("Mesh", 0, -350,'Q-exchanger2');
						//连线
	   					graph.createEdeg( mesh5, mesh3); 
					}
					if(node5_arr[j]==2){
						//显示
					 var mesh2 = createMnode("Mesh", -300, -200,'Q-exchanger2');
					 graph.createEdeg(mesh5, mesh2); 
						//连线
					}
					if(node5_arr[j]==4){
						//显示
					var mesh4 = createMnode("Mesh", 300,-200,'Q-exchanger2');
						//连线
					graph.createEdeg(mesh5, mesh4); 
					}
					
				}
				}
				
		}
		
		xhr.open("POST", "SDN_Servlet", true);
		xhr.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded;charset=UTF-8");
		xhr.send();

	}
	setInterval(createXhr, 1000);

  </script>-->

</body>

</html>