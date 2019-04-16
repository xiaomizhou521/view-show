<#setting number_format="#">
<#if (param.label != '')>
<label>${param.label}</label>
</#if>
<select
<#if (param.id != '')>
id="${param.id}"
</#if>
<#if (param.name != '')>
name="${param.name}"
</#if>
<#if (param.size != '')>
size="${param.size}"
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
<#if (param.disabled != '')>
disabled="${param.disabled}"
</#if>
>
<#if (param.headerValue!="")>
<option value="${param.headerKey}">${param.headerValue}</option>
</#if>
<#list param.list?keys as key>
<option value="${key}"
<#if (param.value == key)>
selected="selected"
</#if>
>${param.list[key]}</option>
</#list>
</select>
