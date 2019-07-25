<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="css/admin.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY>
<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
    <TD background=images/title_bg1.jpg>当前位置:---》》${title }</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=images/shadow_bg.jpg></TD></TR></TABLE>

<form action="${url }" method="post">



车牌号：<input name="chepai" type="text"  value="${chepai }">
品牌：<input name="pinpai" type="text"  value="${pinpai }">
型号：<input name="xinghao" type="text"  value="${xinghao }">
颜色：<input name="yanse" type="text"  value="${yanse }">
<input type="submit"  value="查询"/>


</form>

<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=1>
  	
  	<TR >
    <TD align="center" >车牌号</TD>
    <TD align="center" >车架号</TD>
    <TD align="center" >品牌</TD>
    <TD align="center" >型号</TD>
    <TD align="center" >颜色</TD>
    <TD align="center" >租金(元/天)</TD>
    <TD align="center" >车辆状态</TD>
    <TD align="center"> 
  	操作
    </TD>
    </TR>
    <c:forEach items="${list}"  var="bean">

    <TR >
    <TD align="center" >${bean.chepai }</TD>
    <TD align="center" >${bean.chejia }</TD>
    <TD align="center" >${bean.pinpai }</TD>
    <TD align="center" >${bean.xinghao }</TD>
    <TD align="center" >${bean.yanse }</TD>
    <TD align="center" >${bean.zujin }</TD>
    <TD align="center" >${bean.status }</TD>
    <TD align="center"> 
  	
	  <a href="${url2 }update3.do?id=${bean.id }"><span style="font-size: 12px;">查看详情</span></a>
      &nbsp;
      <c:if test="${bean.status=='待租赁'}">
      <a href="jiluadd.do?carid=${bean.id }"><span style="font-size: 12px;">车辆租赁</span></a>
     
 	  </c:if>
    </TD>
    </TR>
    </c:forEach>
    
    <TR >
    <TD align="center" colspan="21" >${pagerinfo }</TD>

  	
    </TR>
    
    
    </TABLE>

 </BODY></HTML>
