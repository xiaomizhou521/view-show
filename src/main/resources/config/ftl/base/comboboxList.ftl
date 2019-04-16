<#setting number_format="#">
<#if (param.label != '')>
<label>${param.label}</label>
</#if>
<div style="width:${param.width}px;height:${param.height}px;">
<select
<#if (param.id != '')>
id="${param.id}_c"
</#if>
<#if (param.name != '')>
name="${param.name}"
</#if>
<#if (param.size != '')>
size="${param.size}"
</#if>
<#if (param.extContent != '')>
${param.extContent}
</#if>
>
<#if (param.headerKey !="" && param.headerValue!="")>
<option value="${param.headerKey}">${param.headerValue}</option>
</#if>
<#list param.list as beans>
<option value="${beans[param.listKey]}">${beans[param.listValue]}</option>
</#list>
</select>
<input type="hidden" 
<#if (param.id != '')>
id="${param.id}"
</#if>
<#if (param.name != '')>
name="${param.name}"
</#if>/>
<script>
$('#${param.id}_c').scombobox();
<#if (param.headerKey !="" && param.headerValue!="")>
$('#${param.id}_c').scombobox('val',${param.headerKey});
$('#${param.id}').val(${param.headerKey});
</#if>
<#if (param.value != '')>
$('#${param.id}_c').scombobox('val',${param.value});
$('#${param.id}').val(${param.value});
</#if>
$('#${param.id}_c').scombobox('change', function() {
alert($('#${param.id}_c').scombobox('val'));
$('#${param.id}').val($('#${param.id}_c').scombobox('val'));
});
</script>
</div>

