<#setting number_format="#">
<#list param.vos as beans>
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

<#if (param.value != '')>
<#if (param.value == beans.valueValue)>
checked="true"
</#if>
</#if>

<#if (param.value == '')>
<#if (beans.isDefault==1)>
checked="true"
</#if>
</#if>

value="${beans.valueValue}"

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
>${beans.valueCaption}</label>
${param.innerContent}
</#list>