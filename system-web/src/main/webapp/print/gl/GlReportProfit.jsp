<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.yjh.system.pub.print.GenXmlData"%>
<%@page import="com.yjh.system.pub.idu.Idu"%>
<%@page import="com.yjh.system.pub.bean.BeanBase"%>
<%@page import="java.util.List"%>
<%@page import="com.yjh.system.gl.gl.GlReportProfit"%>
<%@page import="com.yjh.system.gl.gl.GlReportProfitLine"%>
<%@page import="com.yjh.system.pub.svr.DbPool"%>
<%
try {
	String mainFlds[] = {"org","beginDate","endDate","rem","createBy","createTime","rowVersion"};
	String linesFlds[] = {"keyName","keyValue","amtBegin","amtEnd"};
	GlReportProfit mainGlReportProfit=BeanBase.load(GlReportProfit.class,request.getParameter("pkey"));
	List<GlReportProfitLine> listGlReportProfitLine = Idu.getLinesTid(mainGlReportProfit, GlReportProfitLine.class);
	for(GlReportProfitLine line:listGlReportProfitLine) line.setKeyName(line.getKeyName().replaceAll("&nbsp&nbsp&nbsp", " "));//&nbsp会解析出错
	GenXmlData.GenParameterXmlData(response,mainGlReportProfit,listGlReportProfitLine,mainFlds,linesFlds);
} finally {
	DbPool.getInstance().removeConn();
}
%>
