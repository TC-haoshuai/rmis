<%@ page import="java.util.concurrent.atomic.AtomicInteger" %>
<%@ page import="java.util.concurrent.ConcurrentHashMap" %>
<%@ page import="com.lanou.main.util.IPUtils" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.alibaba.fastjson.JSON" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%!
    // 访问计数器Map<IP地址, 次数>
    private static ConcurrentHashMap<String, AtomicInteger> visitCounterMap
            = new ConcurrentHashMap<String, AtomicInteger>();

    // 增加并获取最新的访问次数
    private static int incrementCounter(String clientIp) {
        //
        AtomicInteger visitCounter = visitCounterMap.get(clientIp);
        if (null == visitCounter) {
            visitCounter = new AtomicInteger();
            AtomicInteger oldValue = visitCounterMap.putIfAbsent(clientIp, visitCounter);
            if (null != oldValue) {
                // 使用 putIfAbsent 时注意: 判断是否有并发导致的原有值。
                visitCounter = oldValue;
            }
        }
        // 先增加, 再返回
        int count = visitCounter.incrementAndGet();
        return count;
    }

    // 清除某个IP的访问次数
    private static int clearCounter(String clientIp) {
        visitCounterMap.remove(clientIp);
        return 0;
    }

    //
    private static final String CONST_PARAM_NAME_ACTION = "action";
    private static final String CONST_ACTION_VALUE_CLEAR = "clear";
    //
    private static final String CONST_PARAM_NAME_FORMAT = "format";
    private static final String CONST_FORMAT_VALUE_JSON = "json";
    //
    private static final String CONST_ATTR_NAME_CLIENTIP = "clientIp";
    private static final String CONST_ATTR_NAME_VISITCOUNT = "visitCount";
    private static final String CONST_ATTR_NAME_DATEFORMAT = "dateformat";
%>
<%
    // 获取客户端IP地址
    String clientIp = IPUtils.getClientIp(request);
    Integer visitCount = 0;
    String dateformat = null;
    if (null != clientIp) {
        // 获取访问次数
        visitCount = incrementCounter(clientIp);
        //获取当前时间
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat();
        dateformat = simpleDateFormat.format(date);
    }

    // 如果需要清空数据
    String action = request.getParameter(CONST_PARAM_NAME_ACTION);
    if (CONST_ACTION_VALUE_CLEAR.equalsIgnoreCase(action)) {
        visitCount = clearCounter(clientIp);
    }
    // 如果需要返回JSON格式的数据
    String format = request.getParameter(CONST_PARAM_NAME_FORMAT);
    if (CONST_FORMAT_VALUE_JSON.equalsIgnoreCase(format)) {
        // 返回JSON
        Map<String, Object> result = new HashMap<String, Object>();
        result.put(CONST_ATTR_NAME_CLIENTIP, clientIp);
        result.put(CONST_ATTR_NAME_VISITCOUNT, visitCount);
        result.put(CONST_ATTR_NAME_DATEFORMAT,dateformat);
%>
<%=JSON.toJSONString(result)%>
<%
        return; // 如果返回JSON数据, 则不往下执行
    }
%>

<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="stylesheet" type="text/css" href="../assets/static/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/static/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/lib/Hui-iconfont/1.0.7/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/static/h-ui.admin/skin/default/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css" href="../assets/static/h-ui.admin/css/style.css"/>
    <title>我的桌面</title>
    <TITLE>统计页面访问次数</TITLE>
    <style>
        body {
            word-wrap: break-word;
            word-break: break-all;
        }
    </style>
</head>
<body>
<div class="page-container">
    <p class="f-20 text-success">欢迎使用小区业主服务平台后台管理系统！</p>

    <H1>统计页面访问次数</H1>
    <table border="1" width="100%">

        <thead>
        <tr>
            <td align="center">
                <h3>IP地址</h3>
            </td>
            <td align="center">
                <h3>访问次数</h3>
            </td>
        </tr>
        </thead>
        <tbody>
        <%
            Set<String> keySet = visitCounterMap.keySet();
            // 排序?
            // 根据值排序?
            for (String key : keySet) {
        %>
        <tr>
            <td>
                <%=key%>
            </td>
            <td>
                <%=visitCounterMap.getOrDefault(key, new AtomicInteger(0)).intValue()%>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>

    <table class="table table-border table-bordered table-bg">
        <thead>
        <tr>
            <th colspan="7" scope="col">信息统计</th>
        </tr>
        <tr class="text-c">
            <th>统计</th>
            <th>资讯库</th>
            <th>图片库</th>
            <th>产品库</th>
            <th>用户</th>
            <th>管理员</th>
        </tr>
        </thead>
        <tbody>
        <tr class="text-c">
            <td>总数</td>
            <td>92</td>
            <td>9</td>
            <td>0</td>
            <td>8</td>
            <td>20</td>
        </tr>
        <tr class="text-c">
            <td>今日</td>
            <td>0</td>
            <td>0</td>
            <td>0</td>
            <td>0</td>
            <td>0</td>
        </tr>
        <tr class="text-c">
            <td>昨日</td>
            <td>0</td>
            <td>0</td>
            <td>0</td>
            <td>0</td>
            <td>0</td>
        </tr>
        <tr class="text-c">
            <td>本周</td>
            <td>2</td>
            <td>0</td>
            <td>0</td>
            <td>0</td>
            <td>0</td>
        </tr>
        <tr class="text-c">
            <td>本月</td>
            <td>2</td>
            <td>0</td>
            <td>0</td>
            <td>0</td>
            <td>0</td>
        </tr>
        </tbody>
    </table>
    <table class="table table-border table-bordered table-bg mt-20">
        <thead>
        <tr>
            <th colspan="2" scope="col">服务器信息</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th width="30%">服务器计算机名</th>
            <td><span id="lbServerName">http://127.0.0.1/</span></td>
        </tr>
        <tr>
            <td>服务器IP地址</td>
            <td>192.168.1.1</td>
        </tr>
        <tr>
            <td>服务器域名</td>
            <td>www.h-ui.net</td>
        </tr>
        <tr>
            <td>服务器端口</td>
            <td>80</td>
        </tr>
        <tr>
            <td>服务器IIS版本</td>
            <td>Microsoft-IIS/6.0</td>
        </tr>
        <tr>
            <td>本文件所在文件夹</td>
            <td>D:\WebSite\HanXiPuTai.com\XinYiCMS.Web\</td>
        </tr>
        <tr>
            <td>服务器操作系统</td>
            <td>Microsoft Windows NT 5.2.3790 Service Pack 2</td>
        </tr>
        <tr>
            <td>系统所在文件夹</td>
            <td>C:\WINDOWS\system32</td>
        </tr>
        <tr>
            <td>服务器脚本超时时间</td>
            <td>30000秒</td>
        </tr>
        <tr>
            <td>服务器的语言种类</td>
            <td>Chinese (People's Republic of China)</td>
        </tr>
        <tr>
            <td>.NET Framework 版本</td>
            <td>2.050727.3655</td>
        </tr>
        <tr>
            <td>服务器当前时间</td>
            <td>2014-6-14 12:06:23</td>
        </tr>
        <tr>
            <td>服务器IE版本</td>
            <td>6.0000</td>
        </tr>
        <tr>
            <td>服务器上次启动到现在已运行</td>
            <td>7210分钟</td>
        </tr>
        <tr>
            <td>逻辑驱动器</td>
            <td>C:\</td>
        </tr>
        <tr>
            <td>CPU 总数</td>
            <td>4</td>
        </tr>
        <tr>
            <td>CPU 类型</td>
            <td>x86 Family 6 Model 42 Stepping 1, GenuineIntel</td>
        </tr>
        <tr>
            <td>虚拟内存</td>
            <td>52480M</td>
        </tr>
        <tr>
            <td>当前程序占用内存</td>
            <td>3.29M</td>
        </tr>
        <tr>
            <td>Asp.net所占内存</td>
            <td>51.46M</td>
        </tr>
        <tr>
            <td>当前Session数量</td>
            <td>8</td>
        </tr>
        <tr>
            <td>当前SessionID</td>
            <td>gznhpwmp34004345jz2q3l45</td>
        </tr>
        <tr>
            <td>当前系统用户名</td>
            <td>NETWORK SERVICE</td>
        </tr>
        </tbody>
    </table>
</div>
<footer class="footer mt-20">
    <div class="container">
        <p>
            感谢jQuery、layer、laypage、Validform、UEditor、My97DatePicker、iconfont、Datatables、WebUploaded、icheck、highcharts、bootstrap-Switch<br>
            Copyright 2016 All Rights Reserved.<br>
            本后台系统由Smail提供前端技术支持</p>
    </div>
</footer>
<script type="text/javascript" src="../assets/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="../assets/static/h-ui/js/H-ui.js"></script>
</body>
</html>