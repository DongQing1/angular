<div class="app-inner app-news-list">
	<h1>新闻列表</h1>
	<table class="table table-striped">
		<thead >
			<tr>
				<th>新闻ID</th>
				<th>新闻标题</th>
				<th>新闻作者</th>
				<th>发布时间</th>
				<th>新闻内容</th>
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat="item in list">
				<td><a ng-href="#newsdetail/{{item.id}}">{{item.id}}</a></td>
				<td>{{item.title}}</td>
				<td>{{item.writer}}</td>
				<td>{{item.date | date : 'yyyy-MM-dd HH:mm:ss'}}</td>
				<td>{{item.content}}</td>
			</tr>
		</tbody>
	</table>
	<div class="pagination">
		<li><a ng-href="#/newslist/{{pageNum - 1 < 1 ? 1 : pageNum - 1}}">上一页</a></li>
		<li><a ng-href="#/newslist/{{+pageNum + 1}}">下一页</a></li>
	</div>
</div>