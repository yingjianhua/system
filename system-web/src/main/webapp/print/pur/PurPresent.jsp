<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.yjh.system.pub.print.GenXmlData"%>
<%@page import="com.yjh.system.pub.idu.Idu"%>
<%@page import="com.yjh.system.pub.bean.BeanBase"%>
<%@page import="java.util.List"%>
<%@page import="com.yjh.system.pub.svr.DbPool"%>
<%@page import="com.yjh.system.pss.pur.PurPresent"%>
<%@page import="com.yjh.system.pss.pur.PurPresentLine"%>
<%
try {
String mainFlds[] = {"org","code","supplier","supname","createdTime","rem","org.code","org.com.name","org.com.addr","org.com.tel1","org.com.fax","supplier_SysPersonLink.name","supplier_SysPersonLink.peMobile"};
String linesFlds[] = {"pkey","qty","uom","price","amt","goods.code","goods.name","goods.spec"};
PurPresent mainPurPresent=BeanBase.load(PurPresent.class,request.getParameter("pkey"));
List<PurPresentLine> listPurPresentLine = Idu.getLinesTid(mainPurPresent, PurPresentLine.class);
GenXmlData.GenParameterXmlData(response,mainPurPresent,listPurPresentLine,mainFlds,linesFlds);
} finally {
DbPool.getInstance().removeConn();
	}
%>
