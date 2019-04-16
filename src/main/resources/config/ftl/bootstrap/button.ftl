<input type="button" 
<#if (param.id != '')>
id="${param.id}"
</#if>
<#if (param.name != '')>
name="${param.name}"
</#if>

<#if (param.extContent != '')>
${param.extContent}
</#if>


<#if (param.value != '')>
value="${param.value}"
</#if>

<#if (param.onclick != '')>
onclick="${param.onclick}"
</#if>

class="btn btn-primary <#if (param.cssClass != '')>${param.cssClass}</#if>"
<#if (param.cssStyle != '')>
style="${param.cssStyle}"
</#if>

/>