<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.yjh.system.pub.print.GenXmlData"%>
<%@page import="com.yjh.system.pub.idu.Idu"%>
<%@page import="com.yjh.system.pub.bean.BeanBase"%>
<%@page import="java.util.List"%>
<%@page import="com.yjh.system.pub.svr.DbPool"%>
<%@page import="com.yjh.system.pss.sal.SalRtn"%>
<%@page import="com.yjh.system.pss.sal.SalRtnLine"%>
<%
try {
String mainFlds[] = {"org","code","cust","custName","status","amt","amtCost","warehouse","apprBy","apprTime","createdBy","createdTime","operator","rem","org.com.name","org.com.addr","org.com.tel1","org.com.fax","operator.tbObj.person.peMobile"};
String linesFlds[] = {"qty","uom","price","amt","goods.code","goods.name","goods.spec"};
SalRtn mainSalRtn=BeanBase.load(SalRtn.class,request.getParameter("pkey"));
List<SalRtnLine> listSalRtnLine = Idu.getLinesTid(mainSalRtn, SalRtnLine.class);
GenXmlData.GenParameterXmlData(response,mainSalRtn,listSalRtnLine,mainFlds,linesFlds);
} finally {
DbPool.getInstance().removeConn();
	}
%>
