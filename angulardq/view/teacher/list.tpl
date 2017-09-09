<div class="app-inner app-teacher-list">
	<h1>教师列表</h1>
	<table class="table table-striped">
		<thead >
			<tr>
				<th>教师ID</th>
				<th>姓名</th>
				<th>年龄</th>
				<th>性别</th>
				<th>手机号</th>
				<th>邮箱</th>
				<th>科目</th>
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat="item in data">
				<td>{{item.id}}</td>
				<td>{{item.username}}</td>
				<td>{{item.age}}</td>
				<td>{{item.sex}}</td>
				<td>{{item.telephone}}</td>
				<td>{{item.email}}</td>
				<td>{{item.class}}</td>
			</tr>
		</tbody>
	</table>
	<div class="pagination">
		<li><a ng-href="#/teacherlist/{{pageNum - 1 < 1 ? 1 : pageNum - 1}}">上一页</a></li>
		<li><a ng-href="#/teacherlist/{{+pageNum + 1}}">下一页</a></li>
	</div>
</div>