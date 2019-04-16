<#if (param.label != '')>
<label>${param.label}</label>
</#if>
<textarea
<#if (param.id != '')>
id="${param.id}"
</#if>
<#if (param.name != '')>
name="${param.name}"
</#if>
<#if (param.cols != '')>
cols="${param.cols}"
</#if>
<#if (param.rows != '')>
rows="${param.rows}"
</#if>
<#if (param.extContent != '')>
${param.extContent}
</#if>
class="form-control <#if (param.cssClass != '')>${param.cssClass}</#if>"
<#if (param.cssStyle != '')>
style="${param.cssStyle}"
</#if>
>
<#if (param.value != '')>
${param.value}
</#if>
</textarea>