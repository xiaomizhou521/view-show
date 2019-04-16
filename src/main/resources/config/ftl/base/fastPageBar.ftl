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
<li><a href="${param.url}${param.pageNoName}=${param.page-1}">上一页</a></li>
</#if>
<#if (param.page<=1)>
<li class="disabled"><span>上一页</span></li>
</#if>
</#if>


<#if param.stepPage>
<#if (param.curPageSize>=param.pageSize)>
<li><a href="${param.url}${param.pageNoName}=${param.page+1}">下一页</a></li>
</#if>
<#if (param.curPageSize<param.pageSize)>
<li class="disabled"><span>下一页</span></li>
</#if>
</#if>

</ul>
</td>
<td>
<#if param.jumpField>
<input type='text' size=3 id='${param.id}' value='${param.page}' class="form-control" style="width:50px;height:35px;" onkeypress="javascript:return EnterPress_${param.id}(event)" onkeydown="javascript:return EnterPress_${param.id}()">
<script>
function f_skip_page_${param.id}(){
var desPage=document.getElementById("${param.id}").value;
if(!isNaN(desPage)){
if(parseInt(desPage)<=0){
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

<#if param.pageInfoSimple>
第 ${param.page} 页 每页 ${param.pageSize} 条
</#if>
</td>
</tr>
</table>