<span class='pagebar'>
<#if param.stepPage>
<#if (param.page>1)>
<a href="${param.url}${param.pageNoName}=1" >首页</a>
</#if>
<#if param.page<=1>
首页
</#if>
<#if (param.page>1)>
<a href="${param.url}${param.pageNoName}=${param.page-1}" >上一页</a>
</#if>
<#if (param.page<=1)>
上一页
</#if>
</#if>

<#if param.numPage>
<#list param.startPage..param.endPage as i>
<#if (param.page!=i)>
<a href="${param.url}${param.pageNoName}=${i}">${i}</a>
</#if>
<#if (param.page==i)>
<FONT class='pagebar_cur_page'>[${i}]</FONT>
</#if>
</#list>
</#if>

<#if param.stepPage>
<#if (param.page<param.countPages)>
<a href="${param.url}${param.pageNoName}=${param.page+1}" >下一页</a>
</#if>
<#if (param.page>=param.countPages)>
下一页
</#if>

<#if (param.page<param.countPages)>
<a href="${param.url}${param.pageNoName}=${param.countPages}" >尾页</a>
</#if>
<#if (param.page>=param.countPages)>
尾页
</#if>
</#if>

<#if param.jumpField>
<input type='text' size=3 id='${param.id}' value='${param.page}'>
<script>
function isPositiveNum(s){//是否为正整数 
var re = /^[0-9]*[1-9][0-9]*$/ ; 
return re.test(s) 
} 
function f_skip_page_${param.id}(){
var desPage=document.getElementById("${param.id}").value;

if(isPositiveNum(desPage)){
if(parseInt(desPage)>${param.countPages}){
desPage=1;
}else if(parseInt(desPage)<=0){
desPage=1;
}
}else{
desPage=1;
}
var turl="${param.url}${param.pageNoName}="+desPage;
window.location.href=turl;
}

function EnterPress_${param.id}(e){
var e = e || window.event; 
if(e.keyCode == 13){ 
f_skip_page_${param.id}();
return false;
} 
}
</script>
<input type='button' value='跳转' onclick='f_skip_page_${param.id}();'>
</#if>
<#if param.pageInfoAll>
共 ${param.rowCount} 条记录 第 ${param.page}/${param.countPages} 页 每页 ${param.pageSize} 条
</#if>

<#if param.pageInfoSimple>
第 ${param.page} 页 每页 ${param.pageSize} 条
</#if>

</span>