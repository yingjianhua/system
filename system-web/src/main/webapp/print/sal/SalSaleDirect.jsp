<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.yjh.system.pub.print.GenXmlData"%>
<%@page import="com.yjh.system.pub.idu.Idu"%>
<%@page import="com.yjh.system.pub.bean.BeanBase"%>
<%@page import="java.util.List"%>
<%@page import="com.yjh.system.pub.svr.DbPool"%>
<%@page import="com.yjh.system.pss.sal.SalSaleDirect"%>
<%@page import="com.yjh.system.pss.sal.SalSaleDirectLine"%>
<%
try {
String mainFlds[] = {"org","code","cust","custName","status","amt","amtCost","ord","apprBy","apprTime","createdBy","createdTime","shipingMode","operator","rem","org.com.name","org.com.addr","org.com.tel1","org.com.fax","shiping.addr","shiping.name","shiping.mobile","operator.tbObj.person.peMobile"};
String linesFlds[] = {"qty","uom","price","amt","goods.code","goods.name","goods.spec"};
SalSaleDirect mainSalSaleDirect=BeanBase.load(SalSaleDirect.class,request.getParameter("pkey"));
List<SalSaleDirectLine> listSalSaleDirectLine = Idu.getLinesTid(mainSalSaleDirect, SalSaleDirectLine.class);
GenXmlData.GenParameterXmlData(response,mainSalSaleDirect,listSalSaleDirectLine,mainFlds,linesFlds);
} finally {
DbPool.getInstance().removeConn();
	}
%>
