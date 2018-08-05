<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.yjh.system.pub.print.GenXmlData"%>
<%@page import="com.yjh.system.pub.idu.Idu"%>
<%@page import="com.yjh.system.pub.bean.BeanBase"%>
<%@page import="java.util.List"%>
<%@page import="com.yjh.system.pub.svr.DbPool"%>
<%@page import="com.yjh.system.gl.gs.GsLoss"%>
<%@page import="com.yjh.system.gl.gs.GsLossLine"%>
<%
try {
String mainFlds[] = {"org","code","status","warehouse","apprBy","apprTime","createdBy","createdTime","rem","org.com.name","org.com.addr","org.com.tel1","org.com.fax"};
String linesFlds[] = {"qty","uom","goods.code","goods.name","goods.spec"};
GsLoss mainGsLoss=BeanBase.load(GsLoss.class,request.getParameter("pkey"));
List<GsLossLine> listGsLossLine = Idu.getLinesTid(mainGsLoss, GsLossLine.class);
GenXmlData.GenParameterXmlData(response,mainGsLoss,listGsLossLine,mainFlds,linesFlds);
} finally {
DbPool.getInstance().removeConn();
	}
%>
