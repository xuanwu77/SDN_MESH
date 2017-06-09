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
  	var mesh2,mesh3,mesh4,mesh5;
  	var x = [-300,0,300,0];
  	var y = [-200,-350,-200,-50];
   	var xhr = new XMLHttpRequest();
	function createXhr() {
		xhr.onreadystatechange = function() {
			
			if (xhr.readyState == 4 && xhr.status == 200
					&& xhr.responseText != "") {
				var str = xhr.responseText;
				console.log(str);
				var arr = str.split("*");
				var arr1 = arr[0].split(":");
				var arr2 = arr[1].split(":");
				var arr3 = arr[2].split(":");
				var arr4 = arr[3].split(":");
				var arr5 = arr[4].split(":");
				
				//思路：先添加针对某个路由器的表内的数据
				//再把所有的东西都添加进来
				
				
				
				for(var i=0;i<arr1.length;i++){
					if(arr1[i]==3&&mesh3== null ){
						mesh3 = createMnode("Mesh3", x[1], y[1],'Q-exchanger2');
						edge = createDedge(controler,mesh3);
						
					}
					if(arr1[i]==2&&mesh2== null ){
						mesh2 = createMnode("Mesh2", x[0], y[0],'Q-exchanger2');
						/* graph.createEdge(mesh2, mesh3); */
					}
				
					if(arr1[i]==4&&mesh4== null ){
						mesh4 = createMnode("Mesh4", x[2], y[2],'Q-exchanger2');
						/* graph.createEdge(mesh4, mesh3); */
					}
					if(arr1[i]==5&&mesh5== null ){
						mesh5 = createMnode("Mesh5", x[3], y[3],'Q-exchanger2');
						/* graph.createEdge(mesh5, mesh3); */
					}
					
/* 					for(int j=2;j<=5;j++){
						if(arr1[i]==j){
							createMnode("Mesh"+j, x[j-2], y[j-2],'Q-exchanger2');
						}
					} */
				}
				for(var i=1;i<5;i++){
					var arr2 = arr[i].split(":");
					for(var j=0;j<arr2.length;j++){
						if(i==1){
							if(arr2[j]==4){
								graph.createEdge(mesh2, mesh4);
							}
                            if(arr2[j]==5){
                            	graph.createEdge(mesh2, mesh5);
							}
						}
                        if(i==3){
                        	if(arr2[j]==5){
                            	graph.createEdge(mesh4, mesh5);
							}
						}
					}
				}
				
				
				
				
		/* 	  	console.log();
				var arr = str.split("*");
				
				//3号节点邻居表的信息
				var arr3 = arr[2].split(':');
				if(!arr3.length == 0){
					if(mesh3== null ){
						mesh3 = createMnode("Mesh3", 0, -350,'Q-exchanger2');
						edge = createDedge(controler,mesh3);
					}
					var node3_arr = [];
					for (var i = 0; i < Math.floor(arr3.length /4); i++) {
						node3_arr.push(arr3[4*i]);
					}	
					for(var j=0;j<node3_arr.length;j++){
			            //先判断node3_arr[0]的数字
						if(node3_arr[j]==2&&mesh2==null){
							//显示
							mesh2 = createMnode("Mesh2", -300, -200,'Q-exchanger2');
							graph.createEdge(mesh3, mesh2); 
							//连线
						}
						if(node3_arr[j]==4&&mesh4==null){
							//显示
							mesh4 = createMnode("Mesh4", 300, -200,'Q-exchanger2');
							graph.createEdge(mesh3, mesh4); 
							//连线
						}
						if(node3_arr[j]==5&&mesh5==null){
							//显示
							mesh5 = createMnode("Mesh5", 0, -50,'Q-exchanger2');
							//连线
							graph.createEdge(mesh3, mesh5); 
					   }
					}
				}
				
				//2号节点邻居表的信息
			    var arr2 = arr[1].split(':');
				if(!arr2.length == 0){
				//var mesh2 = createMnode("Mesh", -300, -200,'Q-exchanger2');	
				var node2_arr = [];
				for (var i = 0; i < Math.floor(arr2.length /4); i++) {
					node2_arr.push(arr2[4*i]);
				}	
				for(var j=0;j<node2_arr.length;j++){
					//先判断node3_arr[0]的数字
					if(node2_arr[j]==3 && mesh3==null){
						//显示
	   					mesh3 = createMnode("Mesh", 0, -350,'Q-exchanger2');
						
					}
					if(node2_arr[j]==3 && mesh3!=null){
						//连线
	   					graph.createEdge( mesh2, mesh3); 
					}
					if(node2_arr[j]==4 && mesh4==null){
						//显示
						 mesh4 = createMnode("Mesh", 300, -200,'Q-exchanger2');
						 graph.createEdge(mesh2, mesh4); 
						//连线
					}
					if(node2_arr[j]==5&& mesh5==null){
							//显示
						mesh5 = createMnode("Mesh", 0, -50,'Q-exchanger2');
							//连线
						graph.createEdge(mesh2, mesh5); 
					}
					
				}
				}  */
				
				
				
				
			}
		}
		
		xhr.open("POST", "SDN_Servlet?para=topology", true);
		xhr.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded;charset=UTF-8");
		xhr.send();
		
	}
	setInterval(createXhr, 2000) 

  </script>

</body>

</html>