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
value="${param.fieldValue}"

<#if (param.cssClass != '')>
class="${param.cssClass}"
</#if>
<#if (param.cssStyle != '')>
style="${param.cssStyle}"
</#if>

/>
<#if (param.label != '')>
<label
<#if (param.id != '')>
for="${param.id}"
</#if>
>${param.label}</label>
</#if>