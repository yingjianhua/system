<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.yjh.system.pub.print.GenXmlData"%>
<%@page import="com.yjh.system.pub.idu.Idu"%>
<%@page import="com.yjh.system.pub.bean.BeanBase"%>
<%@page import="java.util.List"%>
<%@page import="com.yjh.system.pub.svr.DbPool"%>
<%@page import="com.yjh.system.gl.gs.GsOut"%>
<%@page import="com.yjh.system.gl.gs.GsOutLineView"%>
<%@page import="com.yjh.system.pub.inf.IOut"%>
<%@page import="com.yjh.system.pub.bean.IGoods"%>
<%@page import="com.yjh.system.action.gs.GsOutLineViewAction"%>
<%
try {
String mainFlds[] = {"code","origForm","origFormNum","warehouse","createdTime","rem","createdBy","apprBy","origForm","origForm.tb.name"};
String linesFlds[] = {"qty","uom","location","goods.code","goods.name","goods.spec"};
GsOut mainGsOut=BeanBase.load(GsOut.class,request.getParameter("pkey"));
String oirgName = mainGsOut.gtOrigForm().getClass().getName();
Class dc = Class.forName(oirgName + "DAO");
IOut OutLine = (IOut) dc.newInstance();
List<IGoods> view = OutLine.getOutLines(mainGsOut.gtOrigForm(), 0, 0);
List<GsOutLineView>  listGsOutLineView = GsOutLineViewAction.transIGoods2GsOutLineView(mainGsOut, view);
GenXmlData.GenParameterXmlData(response,mainGsOut,listGsOutLineView,mainFlds,linesFlds);
} finally {
DbPool.getInstance().removeConn();
	}
%>
