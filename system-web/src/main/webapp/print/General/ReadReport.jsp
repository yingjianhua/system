﻿<%@ page import="java.io.*" %>
<%
    //打开文件准备读取数据
    String FileName = request.getRealPath("grf") + "\\" + request.getParameter("report");
    FileInputStream fis = new FileInputStream(FileName);
    //清除已经在缓冲区中的数据，因为这里的响应数据只要文件数据
    response.resetBuffer();
    
    ServletOutputStream sos = response.getOutputStream();
    
    byte[] DataBuf = new byte[1024*5];
    
    //读文件数据，并写入响应流中
    int ReadBytes = fis.read(DataBuf);
    while (ReadBytes > 0)
    {
        sos.write(DataBuf, 0, ReadBytes);
        ReadBytes = fis.read(DataBuf);
    }
    
    fis.close();
    sos.flush();
%> 