<div class="app-inner app-user-list">
	<h1>管理员列表</h1>
	<table class="table table-striped">
		<thead >
			<tr>
				<th>管理员ID</th>
				<th>用户名</th>
				<th>密码</th>
				<th>性别</th>
				<th>手机号</th>
				<th>邮箱</th>
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat="item in data">
				<td>{{item.id}}</td>
				<td>{{item.username}}</td>
				<td>{{item.password}}</td>
				<td>{{item.sex}}</td>
				<td>{{item.telephone}}</td>
				<td>{{item.email}}</td>
			</tr>
		</tbody>
	</table>
	<div class="pagination">
		<li><a ng-href="#/userlist/{{pageNum - 1 < 1 ? 1 : pageNum - 1}}">上一页</a></li>
		<li><a ng-href="#/userlist/{{+pageNum + 1}}">下一页</a></li>
	</div>
</div>