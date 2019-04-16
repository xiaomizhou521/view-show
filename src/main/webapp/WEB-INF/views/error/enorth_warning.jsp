<%@page import="cn.com.enorth.utility.Beans"%>
<%@page import="cn.com.enorth.utility.app.web.strutsx.config.ConfigStrutsX"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<script>
function showMsg(){
    document.getElementById('content').style.display='';
}
</script>

<style>
body {
  background-color: #ECECEC;
  font-family: 'Open Sans', sans-serif;
  font-size: 14px;
  color: #3c3c3c;
}

.demo p:first-child {
  text-align: center;
  font-family: cursive;
  font-size: 60px;
  font-weight: bold;
  line-height: 100px;
  letter-spacing: 5px;
  color: #fff;
}

.demo p:first-child span {
  cursor: pointer;
  text-shadow: 0px 0px 2px #686868,
    0px 1px 1px #ddd,
    0px 2px 1px #d6d6d6,
    0px 3px 1px #ccc,
    0px 4px 1px #c5c5c5,
    0px 5px 1px #c1c1c1,
    0px 6px 1px #bbb,
    0px 7px 1px #777,
    0px 8px 3px rgba(100, 100, 100, 0.4),
    0px 9px 5px rgba(100, 100, 100, 0.1),
    0px 10px 7px rgba(100, 100, 100, 0.15),
    0px 11px 9px rgba(100, 100, 100, 0.2),
    0px 12px 11px rgba(100, 100, 100, 0.25),
    0px 13px 15px rgba(100, 100, 100, 0.3);
  -webkit-transition: all .1s linear;
  transition: all .1s linear;
}

.demo p:first-child span:hover {
  text-shadow: 0px 0px 2px #686868,
    0px 1px 1px #fff,
    0px 2px 1px #fff,
    0px 3px 1px #fff,
    0px 4px 1px #fff,
    0px 5px 1px #fff,
    0px 6px 1px #fff,
    0px 7px 1px #777,
    0px 8px 3px #fff,
    0px 9px 5px #fff,
    0px 10px 7px #fff,
    0px 11px 9px #fff,
    0px 12px 11px #fff,
    0px 13px 15px #fff;
  -webkit-transition: all .1s linear;
  transition: all .1s linear;
}

.demo p:not(:first-child) {
  text-align: center;
  color: #666;
  font-family: cursive;
  font-size: 20px;
  text-shadow: 0 1px 0 #fff;
  letter-spacing: 1px;
  line-height: 2em;
  margin-top: -50px;
}
</style>

<div class="demo">
    <p><span>操</span><span>作</span><span>警</span><span>告</span></p>
    <p>可能因为：<%=((Throwable)request.getAttribute(ConfigStrutsX.REQUEST_ATT_NAME_EXCEPTION)).getMessage()%></p>
    <br/>
    <p>点此查看<a href="javascript:showMsg()">详细</a></p>
  </div>
  
<div style="display:none;" id="content">
<%=Beans.strUtil.HTMLEncode(Beans.convertUtil.exceptionToString(((Throwable)request.getAttribute(ConfigStrutsX.REQUEST_ATT_NAME_EXCEPTION))).replace("\r\n", "<br>").replace("\n", "<br>")) %>
</div>