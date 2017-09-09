<div class="app-inner app-home">
	<h1>北京时间: {{time | date : 'yyyy-MM-dd HH:mm:ss'}}</h1>
	<div class="panel panel-danger">
	    <div class="panel-heading">
	        <h3 class="panel-title">新闻列表</h3>
	    </div>
	    <div class="panel-body">
	        <li ng-repeat="item in list"><a href="#/newsdetail/:newsID">{{item.title}}</a></li>
	    </div>
	</div>
	<div class="panel panel-success">
	    <div class="panel-heading">
	        <h3 class="panel-title">栏目列表</h3>
	    </div>
	    <div class="panel-body">
	        <li ng-repeat="item in class"><a href="">{{item.title}}</a></li>
	    </div>
	</div>
	<div class="panel panel-info">
	    <div class="panel-heading">
	        <h3 class="panel-title">教师列表</h3>
	    </div>
	    <div class="panel-body">
	        <li ng-repeat="item in teacher"><a href="">{{item.username}}</a></li>
	    </div>
	</div>
	<div class="panel panel-warning">
	    <div class="panel-heading">
	        <h3 class="panel-title">管理员列表</h3>
	    </div>
	    <div class="panel-body">
	        <li ng-repeat="item in admin"><a href="">{{item.username}}</a></li>
	    </div>
	</div>
</div>