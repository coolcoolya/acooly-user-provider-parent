<div style="padding: 5px;font-family:微软雅黑;">
<table class="tableForm" width="100%">
	<tr>
		<th>id:</th>
		<td>${user.id}</td>
	</tr>					
	<tr>
		<th width="25%">user_name:</th>
		<td>${user.userName}</td>
	</tr>					
	<tr>
		<th>password:</th>
		<td>${user.password}</td>
	</tr>					
	<tr>
		<th>name:</th>
		<td>${user.name}</td>
	</tr>					
	<tr>
		<th>age:</th>
		<td>${user.age}</td>
	</tr>					
	<tr>
		<th>sex:</th>
		<td>${user.sex}</td>
	</tr>					
	<tr>
		<th>birthday:</th>
		<td>${user.birthday?string('yyyy-MM-dd HH:mm:ss')}</td>
	</tr>					
	<tr>
		<th>created:</th>
		<td>${user.created}</td>
	</tr>					
	<tr>
		<th>updated:</th>
		<td>${user.updated}</td>
	</tr>					
</table>
</div>
