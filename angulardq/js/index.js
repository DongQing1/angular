//引入程序
angular.module('app',['ui.router'])
//定义配置
.config(function($stateProvider,$urlRouterProvider){
	$stateProvider
		// 首页
		.state('home',{
			url:'/',
			templateUrl:'view/home.tpl',
			controller:'homeCtrl'
		})
		// 登录页面
		.state('login',{
			url:'/login',
			templateUrl:'view/login.tpl',
			controller:'loginCtrl'
		})

		//学校概况
		//学校简介
		.state('introduce',{
			url:'/introduce',
			templateUrl:'view/survey/introduce.tpl',
			controller:'introduceCtrl'
		})
		//历史沿革
		.state('history',{
			url:'/history',
			templateUrl:'view/survey/history.tpl',
			controller:'historyCtrl'
		})

		//内容发布
		//创建新闻
		.state('createNews',{
			url:'/createnews',
			templateUrl:'view/news/create.tpl',
			controller:'createNewsCtrl'
		})	
		//新闻列表
		.state('newsList',{
			url:'/newslist/:pageNum',
			templateUrl:'view/news/list.tpl',
			controller:'newsListCtrl'
		})
		//新闻详情
		.state('newsDetail',{
			url:'/newsdetail/:newsID',
			templateUrl:'view/news/detail.tpl',
			controller:'newsDetailCtrl'
		})

		//栏目管理
		//创建栏目
		.state('createClass',{
			url:'/createclass',
			templateUrl:'view/class/create.tpl',
			controller:'createClassCtrl'
		})	
		//栏目列表
		.state('classList',{
			url:'/classlist/:pageNum',
			templateUrl:'view/class/list.tpl',
			controller:'classListCtrl'
		})	
		//栏目详情
		.state('classDetail',{
			url:'/classdetail/:classID',
			templateUrl:'view/class/detail.tpl',
			controller:'classDetailCtrl'
		})	

		// 添加教师
		.state('createTeacher',{
			url:'/createteacher',
			templateUrl:'view/teacher/create.tpl',
			controller:'createTeacherCtrl'
		})
		//教师列表
		.state('teacherList',{
			url:'/teacherlist/:pageNum',
			templateUrl:'view/teacher/list.tpl',
			controller:'teacherListCtrl'
		})
		//创建管理员
		.state('createAdmin',{
			url:'/createuser',
			templateUrl:'view/admin/create.tpl',
			controller:'createAdminCtrl'
		})
		//管理员列表
		.state('adminList',{
			url:'/userlist/:pageNum',
			templateUrl:'view/admin/list.tpl',
			controller:'adminListCtrl'
		})
		//默认路由
		$urlRouterProvider.otherwise('/')
})
// 定义控制器
//管理员
//管理员列表
.controller('adminListCtrl',function($scope,$http,$stateParams){
	//存储页码
	$scope.pageNum = $stateParams.pageNum
	$http.get('action/adminlist.php',{
		params:{
			num:$scope.pageNum
		}
		// console.log(params)
	})
		.success(function(res){
			if(res && res.errno === 0){
				$scope.data = res.data;
			}
		})
})
// 创建管理员
.controller('createAdminCtrl',function($scope,$http,$location){
	$scope.createAdmin = function(){
		$http.post('action/createadmin.php',$scope.data)
			.success(function(res){
				console.log(res)
				if(res && res.errno === 0){
					// 进入列表页
					$location.url('/adminlist/1')
				}
			})
	}
})

//师资队伍
//教师列表
.controller('teacherListCtrl',function($scope,$http,$stateParams){
	//存储页码
	$scope.pageNum = $stateParams.pageNum
	$http.get('action/teacherlist.php',{
		params:{
			num:$scope.pageNum
		}
		// console.log(params)
	})
		.success(function(res){
			if(res && res.errno === 0){
				$scope.data = res.data;
				// console.log(scope.data)
			}
		})
})
//添加教师
.controller('createTeacherCtrl',function($scope,$http,$location){
	$scope.createTeacher = function(){
		$http.post('action/createteacher.php',$scope.data)
			.success(function(res){
				console.log(res)
				if(res && res.errno === 0){
					// 进入列表页
					$location.url('/teacherlist/1')
				}
			})
	}
	$scope.data = {
		sex: 'man'
	}
})
//栏目详情
.controller('classDetailCtrl',function($scope,$http,$stateParams){
	$scope.classID = $stateParams.classID;
	$http.get('action/classdetail.php',{
		params:{
			id:$scope.classID
		}
	})
		.success(function(res){
			// console.log(res)
			if(res && res.errno === 0){
				$scope.data = res.data;
			}
		})
})
//栏目列表
.controller('classListCtrl',function($scope,$http,$stateParams){
	//存储页码
	$scope.pageNum = $stateParams.pageNum
	$http.get('action/classlist.php',{
		params:{
			num:$scope.pageNum
		}
		// console.log(params)
	})
		.success(function(res){
			if(res && res.errno === 0){
				$scope.data = res.data;
			}
		})
})
//创建栏目
.controller('createClassCtrl',function($scope,$http,$location){
	$scope.createClass = function(){
		$http.post('action/createclass.php',$scope.data)
			.success(function(res){
				console.log(res)
				if(res && res.errno === 0){
					// 进入列表页
					$location.url('/classlist/1')
				}
			})
	}
})

//新闻详情
.controller('newsDetailCtrl',function($scope,$http,$stateParams){
	$scope.newsID = $stateParams.newsID;
	// console.log($stateParams.newsID)
	$http.get('action/newsdetail.php',{
		params:{
			id:$scope.newsID
		}
	})
		.success(function(res){
			// console.log(res)
			if(res && res.errno === 0){
				$scope.data = res.data;
			}
		})
})
//新闻列表
.controller('newsListCtrl',function($scope,$http,$stateParams){
	// console.log($stateParams)
	$scope.pageNum = $stateParams.pageNum;
	$http.get('action/newslist.php',{
		params:{
			num:$scope.pageNum
		}
	})
		.success(function(res){
			// console.log(res)
			if(res && res.errno === 0){
				$scope.list = res.data;
			}
		})
})
//创建新闻
.controller('createNewsCtrl',function($scope,$http,$location){
	$scope.createNews = function(){
		$http.post('action/createnews.php',$scope.data)
			.success(function(res){
				console.log(res)
				if(res && res.errno === 0){
					// 进入列表页
					$location.url('/newslist/1')
				}
			})
	}
	var E = window.wangEditor;
    var editor = new E('#editor');
    editor.create();
})
//学校简介控制器
.controller('introduceCtrl',function($scope,$http,$element){
	$http.get('action/introduce.json')
		.success(function(res){
			// console.log(res)
			if(res.errno === 0){
				$scope.data = res.data;
				$element.find("p").html($scope.data.content)
			}
		})
})
//历史沿革控制器
.controller('historyCtrl',function($scope,$http,$element){
	$http.get('action/history.json')
		.success(function(res){
			// console.log(res)
			if(res.errno === 0){
				$scope.data = res.data;
				// console.log(res.data)
				$element.find("p").html($scope.data.content)
			}
		})
})
// 登录
.controller('loginCtrl',function($scope,$rootScope,$http,$location){
	$scope.goToLogin = function(){
		$http
			.post('action/login.php',$scope.data)
			.then(function(res) {				
				if (res.data.errno === 0) {
					$rootScope.username = res.data.data.username;
					$location.path('/');
				}
			})
	}
})
//首页
.controller('homeCtrl',function($scope,$interval,$http){
	$scope.time = new Date();
	// console.log($scope.time)
	$interval(function(){
		$scope.time = new Date();
	},1000)
	$http.get('action/newslist.php')
		.success(function(res){
			console.log(res)
			if(res && res.errno === 0){
				$scope.list = res.data;
			}
		})
	$http.get('action/classlist.php')
		.success(function(res){
			console.log(res)
			if(res && res.errno === 0){
				$scope.class = res.data;
			}
		})
	$http.get('action/teacherlist.php')
		.success(function(res){
			console.log(res)
			if(res && res.errno === 0){
				$scope.teacher = res.data;
			}
		})
	$http.get('action/adminlist.php')
		.success(function(res){
			console.log(res)
			if(res && res.errno === 0){
				$scope.admin = res.data;
			}
		})
})
//导航
.controller('navCtrl',function($scope,$element){
	// 定义数据
	$scope.list = [
		{
			title:'学校概况',
			children:[
				{title:'学校简介',url:'#/introduce'},
				{title:'历史沿革',url:'#/history'}
			]	
		},
		{
			title:'内容发布',
			children:[
				{title:'添加新闻',url:'#/createnews'},
				{title:'新闻列表',url:'#/newslist/:pageNum'}
			]	
		},
		{
			title:'栏目管理',
			children:[
				{title:'添加栏目',url:'#/createclass'},
				{title:'栏目列表',url:'#/classlist/:pageNum'}
			]	
		},
		{
			title:'师资队伍',
			children:[
				{title:'添加教师',url:'#/createteacher'},
				{title:'教师列表',url:'#/teacherlist/:pageNum'}
			]	
		},
		{
			title:'管理员',
			children:[
				{title:'添加用户',url:'#/createuser'},
				{title:'用户列表',url:'#/userlist/:pageNum'}
			]	
		}		
	]
	// 切换显隐
	$scope.toggleList = function(e){
		$element
			.find(e.target)
			// 寻找兄弟元素
			.siblings('ul')
			// 切换显隐
			.slideToggle(400)
	}
})
// 定义根作用域，判断登录状态
.run(function($rootScope,$http,$location){
	$rootScope.$on('stateChangeSuccess',function(){
		if(!$rootScope.username){
			console.log(111)
			$location.url('/login')
		}
	})
	$http.get('action/checkLogin.php')
		.then(function(res){
			// console.log(res)
			if(res.data.data && res.data.errno === 0){
				$rootScope.username = res.data.data.username;
			}else{
				$location.url('/login')
			}
			$rootScope.isShow = 'block';
		})
})