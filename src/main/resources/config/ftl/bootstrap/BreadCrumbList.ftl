<#setting number_format="#">
<div 
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

<ol class="breadcrumb">
<#list param.list as beans>
  <li <#if !beans_has_next>class="active"</#if> ><a href="#">Home</a></li>
  </#list>
</ol>

</div>

