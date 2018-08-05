<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.yjh.system.pub.print.GenXmlData"%>
<%@page import="com.yjh.system.pub.idu.Idu"%>
<%@page import="com.yjh.system.pub.bean.BeanBase"%>
<%@page import="java.util.List"%>
<%@page import="com.yjh.system.pub.svr.DbPool"%>
<%@page import="com.yjh.system.gl.gs.GsIn"%>
<%@page import="com.yjh.system.gl.gs.GsInLineView"%>
<%@page import="com.yjh.system.pub.inf.IIn"%>
<%@page import="com.yjh.system.pub.bean.IGoods"%>
<%@page import="com.yjh.system.action.gs.GsInLineViewAction"%>
<%
try {
String mainFlds[] = {"code","origForm","origFormNum","warehouse","createdTime","rem","createdBy","apprBy","origForm","origForm.tb.name"};
String linesFlds[] = {"qty","uom","location","goods.code","goods.name","goods.spec"};
GsIn mainGsIn=BeanBase.load(GsIn.class,request.getParameter("pkey"));
String oirgName = mainGsIn.gtOrigForm().getClass().getName();
Class dc = Class.forName(oirgName + "DAO");
IIn InLine = (IIn) dc.newInstance();
List<IGoods> view = InLine.getInLines(mainGsIn.gtOrigForm(), 0, 0);
List<GsInLineView>  listGsInLineView = GsInLineViewAction.transIGoods2GsInLineView(mainGsIn, view);
GenXmlData.GenParameterXmlData(response,mainGsIn,listGsInLineView,mainFlds,linesFlds);
} finally {
DbPool.getInstance().removeConn();
	}
%>
