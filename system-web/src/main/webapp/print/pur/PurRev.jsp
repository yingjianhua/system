<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.yjh.system.pub.print.GenXmlData"%>
<%@page import="com.yjh.system.pub.idu.Idu"%>
<%@page import="com.yjh.system.pub.bean.BeanBase"%>
<%@page import="java.util.List"%>
<%@page import="com.yjh.system.pub.svr.DbPool"%>
<%@page import="com.yjh.system.pss.pur.PurRev"%>
<%@page import="com.yjh.system.pss.pur.PurRevLine"%>
<%
try {
String mainFlds[] = {"org","code","supname","amt","ord","warehouse","createdTime","buyer","rem"};
String linesFlds[] = {"pkey","qty","uom","price","amt","goods.code","goods.name","goods.spec"};
PurRev mainPurRev=BeanBase.load(PurRev.class,request.getParameter("pkey"));
List<PurRevLine> listPurRevLine = Idu.getLinesTid(mainPurRev, PurRevLine.class);
GenXmlData.GenParameterXmlData(response,mainPurRev,listPurRevLine,mainFlds,linesFlds);
} finally {
DbPool.getInstance().removeConn();
	}
%>
