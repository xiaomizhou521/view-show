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
<#assign length=param.list?size/>
<#assign temp=1/>
<#list param.list?keys as key>
<a href="${key}">${param.list[key]}</a>
<#if (length!=temp)>
<em> </em>
</#if>
<#assign temp=temp+1/>
</#list>

</div>