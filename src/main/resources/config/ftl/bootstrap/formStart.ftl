<form
<#if (param.id != '')>
id="${param.id}"
</#if>
<#if (param.name != '')>
name="${param.name}"
</#if>
<#if (param.extContent != '')>
${param.extContent}
</#if>
<#if (param.cssClass != '')>
class="${param.cssClass}"
</#if>
<#if (param.cssStyle != '')>
style="${param.cssStyle}"
</#if>
<#if (param.action != '')>
action="${param.action}"
</#if>
<#if (param.enctype != '')>
enctype="${param.enctype}"
</#if>
method="${param.method}"

<#if (param.target != '')>
target="${param.target}"
</#if>
>
