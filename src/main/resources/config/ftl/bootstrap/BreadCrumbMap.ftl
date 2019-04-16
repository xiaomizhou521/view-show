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
<#assign length=param.list?size/>
<#assign temp=1/>
<#list param.list?keys as key>
  <li <#if (length==temp)>class="active"</#if> ><a href="#">Home</a></li>
  <#assign temp=temp+1/>
</#list>

</ol>
</div>