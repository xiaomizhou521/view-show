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
class="table table-bordered table-hover <#if (param.cssClass != '')>${param.cssClass}</#if>"
<#if (param.cssStyle != '')>
style="${param.cssStyle}"
</#if>

>
<thead>
<tr>
<#list param.header as headerParam>
<th style="background-color:#fff;" ${headerParam.tdExt}>${headerParam.name}</th>
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