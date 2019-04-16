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
>
<#if (param.headerKey !="" || param.headerValue!="")>
<option value="${param.headerKey}">${param.headerValue}</option>
</#if>

<#list param.vos as beans>
<option value="${beans.valueValue}"
<#if (param.value != '')>
<#if (param.value == beans.valueValue)>
selected="selected"
</#if>
</#if>

<#if (param.value == '')>
<#if (beans.isDefault==1)>
selected="selected"
</#if>
</#if>
>${beans.valueCaption}</option>
</#list>
</select>
