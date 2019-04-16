<#setting number_format="#">
<#list param.list as beans>
<input type="radio" 
<#if (param.id != '')>
id="${param.id}_${beans_index + 1}"
</#if>
<#if (param.name != '')>
name="${param.name}"
</#if>
<#if (param.extContent != '')>
${param.extContent}
</#if>
<#if (param.value == beans[param.listKey])>
checked="true"
</#if>
value="${beans[param.listKey]}"

<#if (param.cssClass != '')>
class="${param.cssClass}"
</#if>

<#if (param.cssStyle != '')>
style="${param.cssStyle}"
</#if>
/>
<label
<#if (param.id != '')>
for="${param.id}_${beans_index + 1}"
</#if>
>${beans[param.listValue]}</label>
${param.innerContent}
</#list>