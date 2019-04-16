<#setting number_format="#">
<div 
<#if (param.extContent != '')>
${param.extContent}
</#if>
<#if (param.cssClass != '')>
class="${param.cssClass}"
</#if>
<#if (param.cssClass == '')>
class="breadMenu"
</#if>
<#if (param.cssStyle != '')>
style="${param.cssStyle}"
</#if>
>
<#list param.list as beans>
<a href="${beans[param.listKey]}">${beans[param.listValue]}</a>
<#if beans_has_next>
<em> </em>
</#if> 
</#list>

</div>