<#setting number_format="#">
<#assign index = 1> 
<#if (param.label != '')>
<label>${param.label}</label>
</#if>
<#list param.list?keys as key>
<input type="checkbox" 
<#if (param.id != '')>
id="${param.id}_${index}"
</#if>
<#if (param.name != '')>
name="${param.name}"
</#if>
<#if (param.extContent != '')>
${param.extContent}
</#if>
<#list param.value as values>
<#if (values == key)>
checked="true"
</#if>
</#list>
value="${key}"

<#if (param.cssClass != '')>
class="${param.cssClass}"
</#if>

<#if (param.cssStyle != '')>
style="${param.cssStyle}"
</#if>
/>
<label
<#if (param.id != '')>
for="${param.id}_${index}"
</#if>
>${param.list[key]}</label>
<#assign index = index + 1> 
${param.innerContent}
</#list>