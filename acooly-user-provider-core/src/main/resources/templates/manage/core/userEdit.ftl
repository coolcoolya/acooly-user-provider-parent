<#assign jodd=JspTaglibs["http://www.springside.org.cn/jodd_form"] />
<div>
    <form id="manage_user_editform" action="/manage/core/user/<#if action=='create'>saveJson<#else>updateJson</#if>.html" method="post">
		<@jodd.form bean="user" scope="request">
        <input name="id" type="hidden" />
        <table class="tableForm" width="100%">
			<tr>
				<th width="25%">user_name：</th>
				<td><input type="text" name="userName" placeholder="请输入user_name..." class="easyui-validatebox" data-options="validType:['length[1,32]']"/></td>
			</tr>					
			<tr>
				<th>password：</th>
				<td><input type="text" name="password" placeholder="请输入password..." class="easyui-validatebox" data-options="validType:['length[1,32]']"/></td>
			</tr>					
			<tr>
				<th>name：</th>
				<td><input type="text" name="name" placeholder="请输入name..." class="easyui-validatebox" data-options="validType:['length[1,32]']"/></td>
			</tr>					
			<tr>
				<th>age：</th>
				<td><input type="text" name="age" placeholder="请输入age..." class="easyui-numberbox" style="height: 30px;width: 260px;line-height: 1.3em;" data-options="validType:['number[0,999999999]']"/></td>
			</tr>					
			<tr>
				<th>sex：</th>
				<td><input type="text" name="sex" placeholder="请输入sex..." class="easyui-numberbox" style="height: 30px;width: 260px;line-height: 1.3em;" data-options="validType:['number[0,999999999]']"/></td>
			</tr>					
			<tr>
				<th>birthday：</th>
				<td><input type="text" name="birthday" placeholder="请输入birthday..." class="easyui-validatebox" value="<#if user.birthday??>${user.birthday?string('yyyy-MM-dd')}</#if>" onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd'})"  /></td>
			</tr>					
			<tr>
				<th>created：</th>
				<td><input type="text" name="created" placeholder="请输入created..." class="easyui-validatebox" value="<#if user.created??>${user.created?string('yyyy-MM-dd HH:mm:ss')}</#if>" onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"  /></td>
			</tr>					
			<tr>
				<th>updated：</th>
				<td><input type="text" name="updated" placeholder="请输入updated..." class="easyui-validatebox" value="<#if user.updated??>${user.updated?string('yyyy-MM-dd HH:mm:ss')}</#if>" onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"  /></td>
			</tr>					
        </table>
      </@jodd.form>
    </form>
</div>
