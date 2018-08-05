﻿<%@ page contentType="text/html; charset=utf-8"%>
<%
	response.resetBuffer();
	response.setHeader("Pragma","No-cache");	
	response.setHeader("Cache-Control","no-cache");
	response.setDateHeader("Expires", 0); 
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>web报表(b/s报表)演示 - <%=request.getParameter("report")%></title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<script src="../CreateControl.js" type="text/javascript"></script>
<style type="text/css">
html, body {
	margin: 0;
	height: 100%;
}
</style>
</head>
<body style="margin: 0">
	<script type="text/javascript">
	    var Report = "<%=request.getParameter("report")%>";
	    if (Report == "null")
			Report = "";
	    else if (Report != "") {
	    	for(var i=0;i<Report.length;i++){
	    		var c=Report.charAt(i);
	    		if(c >= 'A' && c <= 'Z' && i != 0) {
	        		Report = "../" + Report.substring(0,i).toLowerCase() + "/" + Report;
	    			break;
	    		}
	    	}
	    }
	        
	    var Data = "<%=request.getParameter("data")%>";
	    var arg = "<%=request.getParameter("pkey")%>";
	    var startDate = "<%=request.getParameter("startDate")%>";
	    var endDate = "<%=request.getParameter("endDate")%>";
		if (Data == "null")
			Data = "";
		else if (Data != "") {
			for (var i = 0; i < Data.length; i++) {
				var c = Data.charAt(i);
				if (c >= 'A' && c <= 'Z' && i != 0) {
					Data = "../" + Data.substring(0, i).toLowerCase() + "/" + Data + "?pkey=" + arg;
					break;
				}
			}
		}
		if (startDate != null) {
			Data += "&startDate=" + startDate;
		}
		if (endDate != null) {
			Data += "&endDate=" + endDate;
		}
		CreatePrintViewerEx("100%", "100%", "POST::" + Report, Data, true, "");
	</script>
</body>
</html>
 
