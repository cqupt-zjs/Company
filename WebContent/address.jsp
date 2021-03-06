<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.util.List"%>
<%@page import="java.util.Hashtable"%>
<%@page import="java.util.Iterator"%>
<html>
<head>
<base href="<%=basePath%>">

<title>企业信息管理系统 - 通讯录管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="企业,信息,管理">
<meta http-equiv="description" content="企业信息管理系统 - 通讯录管理">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="css/styles.css">

</head>
<body>
<div align="center">

<table height="100%" width="100%" border="0" cellspacing="0"
	cellpadding="0">
	<tr>
		<td colspan="2" height="108">
		<table height="108" background="images/banner.jpg" border="0"
			cellspacing="0" cellpadding="0" width="100%">
			<tr>
				<td></td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td width="160" bgcolor="#EEEEEE" valign="top" height="100%"><%@ include
			file="inc/menu.jsp"%></td>
		<td align="left" valign="top">
		<%
			request.setCharacterEncoding("UTF-8"); 
			String pageSize = (String) request.getAttribute("pageSize");
			String pageNo = (String) request.getAttribute("pageNo");
		%>
		<TABLE width="100%" class="position">
			<TR>
				<TD>当前位置：通讯录管理</TD>
				<TD align="right"><a
					href="address.do?method=add&pageSize=<%=pageSize%>&pageNo=<%=pageNo%>">新增联系人</a></TD>
				<TD width="20"></TD>
			</TR>
		</TABLE>
		<b></b>
		<TABLE border="0" width="100%">
			<TR class="tableheader">
				<TD>姓名</TD>
				<TD>性别</TD>
				<TD>手机</TD>
				<TD>Email</TD>
				<TD>QQ号码</TD>
				<TD>工作单位</TD>
				<TD>地址</TD>
				<TD>邮编</TD>
				<TD>操作</TD>
			</TR>

			<%
				List<Hashtable<String, String>> list = (List<Hashtable<String, String>>) request
						.getAttribute("list");
				Iterator<Hashtable<String, String>> it = list.iterator();
				while (it.hasNext()) {
					Hashtable<String, String> hash = it.next();
					String id = hash.get("id");
			%>
			<TR>
				<TD><%=hash.get("name")%></TD>
				<TD><%=hash.get("sex")%></TD>
				<TD><%=hash.get("mobile")%></TD>
				<TD><%=hash.get("email")%></TD>
				<TD><%=hash.get("qq")%></TD>
				<TD><%=hash.get("company")%></TD>
				<TD><%=hash.get("address")%></TD>
				<TD><%=hash.get("postcode")%></TD>
				<TD><a
					href='address.do?method=edit&id=<%=id %>&pageSize=<%=pageSize%>&pageNo=<%=pageNo%>'>修改</a>
				<a
					href="address.do?method=delete&id=<%=id %>&pageSize=<%=pageSize%>&pageNo=<%=pageNo%>">删除</a></TD>
			</TR>
			<%
				}
			%>
		</TABLE>


		<form name="form1" action="address.do?method=list"
			method="post">
		<TABLE border="0" width="100%" class="pager">
			<TR>
				<TD align="left">每页记录数： <select name="pageSize"
					onchange="document.all.pageNo.value='1';document.all.form1.submit();">
					<option value="10" <%if(pageSize.equals("10")){%>
						selected="selected" <%}%>>10</option>
					<option value="25" <%if(pageSize.equals("25")){%>
						selected="selected" <%}%>>25</option>
					<option value="50" <%if(pageSize.equals("50")){%>
						selected="selected" <%}%>>50</option>
					<option value="100" <%if(pageSize.equals("100")){%>
						selected="selected" <%}%>>100</option>
					<option value="200" <%if(pageSize.equals("200")){%>
						selected="selected" <%}%>>200</option>
					<option value="300" <%if(pageSize.equals("300")){%>
						selected="selected" <%}%>>300</option>
					<option value="500" <%if(pageSize.equals("500")){%>
						selected="selected" <%}%>>500</option>
				</select></TD>
				<TD align="center">总记录数：<%=request.getAttribute("rowCount")%></TD>
				<TD align="right"><a
					href="javascript:document.all.pageNo.value='<%=request.getAttribute("pageFirstNo") %>';document.all.form1.submit();">首页</a>
				<a
					href="javascript:document.all.pageNo.value='<%=request.getAttribute("pagePreNo") %>';document.all.form1.submit();">前一页</a>
				<a
					href="javascript:document.all.pageNo.value='<%=request.getAttribute("pageNextNo") %>';document.all.form1.submit();">后一页</a>
				<a
					href="javascript:document.all.pageNo.value='<%=request.getAttribute("pageLastNo") %>';document.all.form1.submit();">尾页</a>
				<select name="pageNo" onChange="document.all.form1.submit();">
					<%
						int pageCount = (Integer) request.getAttribute("pageCount");
					%>
					<%
						for (int i = 1; i <= pageCount; i++) {
					%>
					<option value="<%=i%>" <%if(pageNo.equals(i+"")){%>
						selected="selected" <%}%>><%=i%></option>
					<%
						}
					%>
				</select></TD>
				<TD width="20"></TD>
			</TR>
		</TABLE>
		</form>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center"><%@ include file="inc/foot.jsp"%>
		</td>
	</tr>
</table>
</div>
</body>
</html>
