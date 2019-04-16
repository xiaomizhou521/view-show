<#if (param.label != '')>
<label>${param.label}</label>
</#if>
<input type="text" 
<#if (param.id != '')>
id="${param.id}"
</#if>
<#if (param.name != '')>
name="${param.name}"
</#if>
<#if (param.size != '')>
size="${param.size}"
</#if>
<#if (param.value != '')>
value="${param.value}"
</#if>

<#if (param.cssClass != '')>
class="${param.cssClass}"
</#if>
<#if (param.cssStyle != '')>
style="${param.cssStyle}"
</#if>


<#if (param.format != ''&&param.extContent=='')>
onclick="WdatePicker({dateFmt:'${param.format}',startDate:'${param.startDate}', minDate:'${param.minDate}',maxDate:'${param.maxDate}'})"
</#if>

<#if (param.format == ''&&param.extContent=='')>
onclick="WdatePicker({dateFmt:'yyyy-MM-dd',startDate:'${param.startDate}',minDate:'${param.minDate}',maxDate:'${param.maxDate}'})"
</#if>

<#if (param.format != ''&&param.extContent!='')>
onclick="WdatePicker({dateFmt:'${param.format}',startDate:'${param.startDate}', minDate:'${param.minDate}',maxDate:'${param.maxDate}',${param.extContent}})"
</#if>

<#if (param.format == ''&&param.extContent!='')>
onclick="WdatePicker({dateFmt:'yyyy-MM-dd',startDate:'${param.startDate}',minDate:'${param.minDate}',maxDate:'${param.maxDate}',${param.extContent}})"
</#if>


<#if (param.onfocus != '')>
onfocus="param.onfocus"
</#if>
/>