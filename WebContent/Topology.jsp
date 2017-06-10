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
    function createMnode(name,node,image){
        var node = graph.createNode(name,node[0],node[1]);
        if(image){
            node.image = image;
        }
        return node;
    }  
  	var controller = createMnode("Controller", [0, -500],'Q-server');
  	
  	var mesh2,mesh3,mesh4,mesh5;
  	var dic_position = new Array();
  	dic_position["2"] = [-300,-200];
  	dic_position["3"] = [0,-350];
  	dic_position["4"] = [300,-200];
  	dic_position["5"] = [0,-50];
  	
  	/* var x = [-300,0,300,0];
  	var y = [-200,-350,-200,-50]; */
   	var xhr = new XMLHttpRequest();
	function createXhr() {
		xhr.onreadystatechange = function() {
			
			if (xhr.readyState == 4 && xhr.status == 200
					&& xhr.responseText != "") {
				var rec_str = xhr.responseText;  //str11 + ";" + res;
				console.log(rec_str);
				var arr = rec_str.split(";");
				var router_node = arr[0]; //2345""
				var nb_router_node = arr[1].split("#"); 
				nb_router_node.forEach(function(item){
					console.log(item);
				})
				var dic_createMnode = new Array();
				graph.clear();
				var controller = createMnode("Controller", [0, -500],'Q-server');
				for(var i = 0;i <router_node.length;i++){
					var curr_node_id =  router_node[i];
					console.log("1111");
					//createMnode("Mesh3",0,-350,'Q-exchanger2');
					dic_createMnode[curr_node_id] = createMnode("Mesh",dic_position[curr_node_id],'Q-exchanger2');
					if(router_node[i] == "3"){
						createDedge(controller,dic_createMnode[curr_node_id]);
					}
					
				}
				
				for(var j = 0;j < nb_router_node.length-1;j++ ){
					console.log("2222222222");
					var first = nb_router_node[j][0];
					var sec = nb_router_node[j][1];
					createDedge(dic_createMnode[first],dic_createMnode[sec]);
					
				}
			}
		}
		xhr.open("POST", "SDN_Servlet?para=topology", true);
		xhr.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded;charset=UTF-8");
		xhr.send();
		
	}
	setInterval(createXhr, 1000) 
	

  </script>

</body>

</html>