<#setting number_format="#">
<#if (param.label != '')>
<label>${param.label}</label>
</#if>

<#list param.vos as beans>
<input type="checkbox" 
<#if (param.id != '')>
id="${param.id}_${beans_index + 1}"
</#if>
<#if (param.name != '')>
name="${param.name}"
</#if>
<#if (param.extContent != '')>
${param.extContent}
</#if>

<#list param.value as values>
<#if (values == beans.valueValue)>
checked="true"
</#if>
</#list>

<#if !(param.value??)>
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