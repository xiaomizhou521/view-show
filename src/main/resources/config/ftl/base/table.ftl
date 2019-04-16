<#setting number_format="#">
<table cellspacing="1" cellpadding="0" bgcolor="#d3d3d3" align="center" width="100%" border="0"
<#if (param.id != '')>
id="${param.id}"
</#if>
<#if (param.name != '')>
name="${param.name}"
</#if>
<#if (param.extContent != '')>
${param.extContent}
</#if>
<#if (param.cssClass != '')>
class="${param.cssClass}"
</#if>

<#if (param.cssStyle != '')>
style="${param.cssStyle}"
</#if>

>
<thead>
<tr>
<#list param.header as headerParam>
<th style="background-color:#fff;" ${headerParam.tdExt}>

<#if (headerParam.sortField!=null)&&(headerParam.sortSqlName == headerParam.sortField)&&(headerParam.sortSqlName!=null)>
<#if headerParam.sortSqlOrder=='desc'>
<#assign nextOrder="asc"/>
</#if>
<#if headerParam.sortSqlOrder=='asc'>
<#assign nextOrder="desc"/>
</#if>
<a href="${param.sortUrl}${param.orderBySqlParamName}=${headerParam.sortSqlName} ${nextOrder}" onclick="javascript:void(0)">

${headerParam.name}
</a></#if>

<#if (headerParam.sortField!=null)&&(headerParam.sortSqlName == headerParam.sortField)&&(headerParam.sortSqlName!=null)>
<#if (headerParam.sortSqlOrder=='desc')><img src="${param.baseUrl}/tagx/base/images/down.png" width="15px" height="15px"/></#if>
<#if (headerParam.sortSqlOrder=='asc')><img src="${param.baseUrl}/tagx/base/images/up.png" width="15px" height="15px"/></#if>
</#if>

<#if (headerParam.sortField!=null)&&(headerParam.sortSqlName != headerParam.sortField)&&(headerParam.sortSqlName!=null)>
<#assign nextOrder="asc"/>
<a href="${param.sortUrl}${param.orderBySqlParamName}=${headerParam.sortField} ${nextOrder}" onclick="javascript:void(0)">

${headerParam.name}
</a></#if>

<#if (headerParam.sortField==null)>
${headerParam.name}
</#if>

</th>
</#list>
</tr>
</thead>

<tbody>
<#list param.data?keys as key>
<#assign item = param.data[key]> 
<tr
<#if ((key?eval)%2=0)>
style="background-color:#C5DBF0;"
</#if>
<#if ((key?eval)%2=1)>
style="background-color:#fff;"
</#if>
>
<#list param.header as sParam>
<td align="center" ${sParam.tdExt}>${item[(sParam_index+1)?string]}</td>
</#list>
</tr>
</#list>
</tbody>

</table>