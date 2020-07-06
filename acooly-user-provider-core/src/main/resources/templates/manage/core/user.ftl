<script type="text/javascript">
$(function() {
	$.acooly.framework.registerKeydown('manage_user_searchform','manage_user_datagrid');
});

</script>
<div class="easyui-layout" data-options="fit : true,border : false">
  <!-- 查询条件 -->
  <div data-options="region:'north',border:false" style="padding:5px; overflow: hidden;" align="left">
    <form id="manage_user_searchform" onsubmit="return false">
      <table class="tableForm" width="100%">
        <tr>
          <td align="left">
          	<div>
					user_name: <input type="text" class="text" size="15" name="search_LIKE_userName"/>
					password: <input type="text" class="text" size="15" name="search_LIKE_password"/>
					name: <input type="text" class="text" size="15" name="search_LIKE_name"/>
					birthday: <input size="15" class="text" id="search_GTE_birthday" name="search_GTE_birthday" onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd'})" />
					至<input size="15" class="text" id="search_LTE_birthday" name="search_LTE_birthday" onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd'})" />
					created: <input type="text" class="text" size="15" name="search_LIKE_created"/>
					updated: <input type="text" class="text" size="15" name="search_LIKE_updated"/>
          	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:false" onclick="$.acooly.framework.search('manage_user_searchform','manage_user_datagrid');"><i class="fa fa-search fa-lg fa-fw fa-col"></i>查询</a>
          	</div>
          </td>
        </tr>
      </table>
    </form>
  </div>

  <!-- 列表和工具栏 -->
  <div data-options="region:'center',border:false">
    <table id="manage_user_datagrid" class="easyui-datagrid" url="/manage/core/user/listJson.html" toolbar="#manage_user_toolbar" fit="true" border="false" fitColumns="false"
      pagination="true" idField="id" pageSize="20" pageList="[ 10, 20, 30, 40, 50 ]" sortName="id" sortOrder="desc" checkOnSelect="true" selectOnCheck="true" singleSelect="true">
      <thead>
        <tr>
        	<th field="showCheckboxWithId" checkbox="true" data-options="formatter:function(value, row, index){ return row.id }">编号</th>
			<th field="id" sortable="true" sum="true">id</th>
			<th field="userName">user_name</th>
			<th field="password">password</th>
			<th field="name">name</th>
			<th field="age" sortable="true">age</th>
			<th field="sex" sortable="true">sex</th>
		    <th field="birthday" formatter="dateFormatter">birthday</th>
		    <th field="created" formatter="dateTimeFormatter">created</th>
		    <th field="updated" formatter="dateTimeFormatter">updated</th>
          	<th field="rowActions" data-options="formatter:function(value, row, index){return formatAction('manage_user_action',value,row)}">动作</th>
        </tr>
      </thead>
    </table>

    <!-- 每行的Action动作模板 -->
    <div id="manage_user_action" style="display: none;">
      <a onclick="$.acooly.framework.edit({url:'/manage/core/user/edit.html',id:'{0}',entity:'user',width:500,height:500});" href="#" title="编辑"><i class="fa fa-pencil fa-lg fa-fw fa-col"></i></a>
      <a onclick="$.acooly.framework.show('/manage/core/user/show.html?id={0}',500,500);" href="#" title="查看"><i class="fa fa-file-o fa-lg fa-fw fa-col"></i></a>
      <a onclick="$.acooly.framework.remove('/manage/core/user/deleteJson.html','{0}','manage_user_datagrid');" href="#" title="删除"><i class="fa fa-trash-o fa-lg fa-fw fa-col"></i></a>
    </div>

    <!-- 表格的工具栏 -->
    <div id="manage_user_toolbar">
      <a href="#" class="easyui-linkbutton" plain="true" onclick="$.acooly.framework.create({url:'/manage/core/user/create.html',entity:'user',width:500,height:500})"><i class="fa fa-plus-circle fa-lg fa-fw fa-col"></i>添加</a>
      <a href="#" class="easyui-linkbutton" plain="true" onclick="$.acooly.framework.removes('/manage/core/user/deleteJson.html','manage_user_datagrid')"><i class="fa fa-trash-o fa-lg fa-fw fa-col"></i>批量删除</a>
      <a href="#" class="easyui-menubutton" data-options="menu:'#manage_user_exports_menu'"><i class="fa fa-arrow-circle-o-down fa-lg fa-fw fa-col"></i>批量导出</a>
      <div id="manage_user_exports_menu" style="width:150px;">
        <div onclick="$.acooly.framework.exports('/manage/core/user/exportXls.html','manage_user_searchform','tb_user')"><i class="fa fa-file-excel-o fa-lg fa-fw fa-col"></i>Excel</div>
        <div onclick="$.acooly.framework.exports('/manage/core/user/exportCsv.html','manage_user_searchform','tb_user')"><i class="fa fa-file-text-o fa-lg fa-fw fa-col"></i>CSV</div>
      </div>
      <a href="#" class="easyui-linkbutton" plain="true" onclick="$.acooly.framework.imports({url:'/manage/core/user/importView.html',uploader:'manage_user_import_uploader_file'});"><i class="fa fa-arrow-circle-o-up fa-lg fa-fw fa-col"></i>批量导入</a>
    </div>
  </div>

</div>
