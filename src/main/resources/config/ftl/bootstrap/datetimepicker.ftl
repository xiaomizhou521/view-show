<#if (param.label != '')>
<label>${param.label}</label>
</#if>
<input type="text" 
<#if (param.id != '')>
id="${param.id}"
</#if>
<#if (param.name != '')>
name="${param.name}"
</#if>
<#if (param.size != '')>
size="${param.size}"
</#if>
<#if (param.value != '')>
value="${param.value}"
</#if>

<#if (param.format != '')>
onclick="WdatePicker({dateFmt:'${param.format}'})"
</#if>

<#if (param.format == '')>
onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"
</#if>
/>