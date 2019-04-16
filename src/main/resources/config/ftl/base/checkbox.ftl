<#setting number_format="#">
<#if (param.label != '')>
<label>${param.label}</label>
</#if>
<input type="checkbox" 
<#if (param.id != '')>
id="${param.id}"
</#if>
<#if (param.name != '')>
name="${param.name}"
</#if>
<#if (param.extContent != '')>
${param.extContent}
</#if>
<#if (param.value)>
checked="true"
</#if>
value="${param.fieldKey}"

<#if (param.cssClass != '')>
class="${param.cssClass}"
</#if>

<#if (param.cssStyle != '')>
style="${param.cssStyle}"
</#if>

/>
<#if (param.fieldValue != '')>
<label
<#if (param.id != '')>
for="${param.id}"
</#if>
>${param.fieldValue}</label>
</#if>