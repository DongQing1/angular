<div class="app-inner app-news-list">
	<h1>栏目列表</h1>
	<table class="table table-striped">
		<thead >
			<tr>
				<th>栏目ID</th>
				<th>栏目标题</th>
				<th>发布时间</th>
				<th>栏目备注</th>
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat="item in data">
				<td><a ng-href="#classdetail/{{item.id}}">{{item.id}}</a></td>
				<td>{{item.title}}</td>
				<td>{{item.date | date : 'yyyy-MM-dd HH:mm:ss'}}</td>
				<td>{{item.content}}</td>
			</tr>
		</tbody>
	</table>
	<div class="pagination">
		<li><a ng-href="#/classlist/{{pageNum - 1 < 1 ? 1 : pageNum - 1}}">上一页</a></li>
		<li><a ng-href="#/classlist/{{+pageNum + 1}}">下一页</a></li>
	</div>
</div>