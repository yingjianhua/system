﻿<%@ page contentType="text/html; charset=utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>web报表(b/s报表)演示，在网页中应用报表设计器设计报表 - <%=request.getParameter("report")%></title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<script src="../../CreateControl.js" type="text/javascript"></script>
	<script type="text/javascript">
function OnSaveReport()
{
	//alert("为了保护报表的正常演示，这里放弃了对报表设计的保存！");
	//ReportDesigner.DefaultAction = false;
}
	</script>
    <style type="text/css">
        html,body {
            margin:0;
            height:100%;
        }
    </style>
</head>
<body style="margin:0">
	<script type="text/javascript">
	    var Report = "<%=request.getParameter("report")%>";
	    if (Report == "null")
			Report = "";
	    else if (Report != "")
	        Report = "../../grf/" + Report;
	        
		CreateDesignerEx("100%", "100%", Report, "../DesignReportSave.jsp?report=<%=request.getParameter("report")%>", "", "<param name=OnSaveReport value=OnSaveReport>");
	    
	    CreateReport("ReportObject");
	    ReportObject.LoadFromURL(Report);
		var QuerySQL = ReportObject.DetailGrid.Recordset.QuerySQL;
		ReportDesigner.DataURL = encodeURI("../../data/xmlSQLParam.jsp?QuerySQL=" + QuerySQL);
	</script>
</body>
</html> 