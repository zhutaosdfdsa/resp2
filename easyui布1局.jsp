<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html >
<html>
  <head>
    <base href="<%=basePath%>">
    <title>项目管理列表</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="styles/system/css/system.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>main/css/icon.css" />
    <script type="text/javascript" src="web-resources/require/require.js" defer async="true" data-main="js/module/project/projectManageList"></script>
  </head>
  <body class="easyui-layout">
         <div data-options="region:'north',border:false" id="tb" style="height:70px;">
                                查询条件
         </div>
         
        <div data-options="region:'center',border:false" id="tb">
	        <div class="easyui-layout" data-options="fit:true,border:false">
	             <div data-options="region:'north',border:false" id="tb" style="height:20%;">
	             grid
	             </div>
	             <div data-options="region:'center',border:false" id="tb">
			         <div class="easyui-layout" data-options="fit:true,border:false">
			              <div data-options="region:'west',border:false" id="tb" style="width:15%;">
			                                     树
			              </div>
			              <div data-options="region:'center',border:false" id="tb">
			                                         又grid
			             </div>
			         </div>
			     </div>
	        </div>
        </div>

    <!-- <div data-options="region:'center',split:true">
        <div class="easyui-layout" data-options="fit:true,border:false">
            <div data-options="region:'north',border:false" id="tb" style="height:70px;">
                <div class="query-body">
                                           项目名称：<input class="easyui-textbox" type="text" name="proName" id="proName"></input>
                                          项目类型：<input class="easyui-textbox" type="text" name="proType" id="proType"></input>
                                          项目进展：<input class="easyui-textbox" type="text" name="proState" id="proState"></input>
                    <span class="new-qry-float">
                    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" id="queryList">查询</a>
                    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" id="updateList">修改</a>
                    </span>
                    <input type="hidden" id="id" value="0"></input>
                    <input type="hidden" id="proUserId" name="proUserId"></input>
                </div>
            </div> -->
            
            <!-- 数据展示区域  -->
     <!--        <div data-options="region:'center',border:false">
                <div style="height: 20%;">
                  <table id="grid" data-options="fit:true"></table>
                </div>
                
                <div style="height: 80%;width: 100%">
                   <div style="width: 15%;">
                            <ul id="tree"></ul>
                       </div>
                       <div style="float: right;width: 85%;">
                            <img class="new_qry_home">
                            <span class="new_qry_title">展示机构：</span>
                            <span class="new_qry_title" id="menu_name">机构</span>
                            <table id="treeGrid" data-options="fit:true"></table> 
                       </div>
                    
                </div>
               
                
            </div>
        </div>
    </div> -->
  
  
<!--     <div data-options="region:'center',split:true">
        <div class="easyui-layout" data-options="fit:true,border:false">
            <div data-options="region:'north',border:false" id="tb" style="height:70px;">
                <div class="query-body">
                                          项目名称：<input class="easyui-textbox" type="text" name="proName" id="proName"></input>
                                          项目类型：<input class="easyui-textbox" type="text" name="proType" id="proType"></input>
                                          项目进展：<input class="easyui-textbox" type="text" name="proState" id="proState"></input>
                    <span class="new-qry-float">
                    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" id="queryList">查询</a>
                    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" id="updateList">修改</a>
                    </span>
                    <input type="hidden" id="id" value="0"></input>
                    <input type="hidden" id="proUserId" name="proUserId"></input>
                </div>
            </div>
	            <div data-options="region:'center',border:false">
	                <div style="height: 20%;">
	                   <table id="grid" data-options="fit:true"></table>
	                </div>
	                </div> 
                </div>
	             </div> -->
	             
   
	             
	        <!--        <div data-options="region:'west',split:true" style="height: 80%;">
                       
                       <div style="width: 15%;">
                            <ul id="tree"></ul>
                       </div>
                       <div style="float: right;width: 85%;">
                            <table id="treeGrid" data-options="fit:true"></table> 
                       </div>
	                </div>
	                
	               
	            </div> 
	            </div>
            </div> -->
        <!--引入添加页面  -->
        <jsp:include page="/jsp/module/project/projectWin/addReleConWin.html"></jsp:include>
        <jsp:include page="/jsp/module/project/projectWin/conWin.html"></jsp:include>
</body>
</html>