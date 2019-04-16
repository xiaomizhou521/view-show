<#setting number_format="#">
<table>
<tr style="line-height: 10px;">
<td>
<ul class="pagination">
<#if param.stepPage>
<#if (param.page>1)>
<li><a href="${param.url}${param.pageNoName}=1">首页</a></li>
</#if>
<#if param.page<=1>
<li class="disabled"><span>首页</span></li>
</#if>
<#if (param.page>1)>
<li><a href="${param.url}${param.pageNoName}=${param.page-1}">&laquo;</a></li>
</#if>
<#if (param.page<=1)>
<li class="disabled"><span>&laquo;</span></li>
</#if>
</#if>


<#if param.numPage>
<#if (param.countPages != 0)>
<#list param.startPage..param.endPage as i>
<#if (param.page!=i)>
<li><a href="${param.url}${param.pageNoName}=${i}">${i}</a></li>
</#if>
<#if (param.page==i)>
<li class="active"><span>${i} <span class="sr-only">(current)</span></span></li>
</#if>
</#list>
</#if>
</#if>


<#if param.stepPage>
<#if (param.page<param.countPages)>
<li><a href="${param.url}${param.pageNoName}=${param.page+1}">&raquo;</a></li>
</#if>
<#if (param.page>=param.countPages)>
<li class="disabled"><span>&raquo;</span></li>
</#if>

<#if (param.page<param.countPages)>
<li><a href="${param.url}${param.pageNoName}=${param.countPages?c}">尾页</a></li>
</#if>
<#if (param.page>=param.countPages)>
<li class="disabled"><span>尾页</span></li>
</#if>
</#if>
</ul>
</td>
<td>
<#if param.jumpField>
<input type='text' size=3 id='${param.id}' value='${param.page}' class="form-control" style="width:50px;;height:35px;display:inline;" onkeypress="javascript:return EnterPress_${param.id}(event)" onkeydown="javascript:return EnterPress_${param.id}()" >
<input type='text' style="display:none;" id="hiddenText"/>
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
<input type='button' value='跳转' onclick='f_skip_page_${param.id}();' class="btn btn-primary">
</#if>
<#if param.pageInfoAll>
<#if param.rowCount == 0>
 共 ${param.rowCount} 条记录 第 0/0 页 每页 ${param.pageSize} 条
</#if>
<#if param.rowCount != 0>
 共 ${param.rowCount} 条记录 第 ${param.page}/${param.countPages} 页 每页 ${param.pageSize} 条
 </#if>
</#if>

<#if param.pageInfoSimple>
<#if param.rowCount == 0>
第 0 页 每页 ${param.pageSize} 条
</#if>
<#if param.rowCount != 0>
第 ${param.page} 页 每页 ${param.pageSize} 条
</#if>
</#if>
</td>
</tr>
</table>