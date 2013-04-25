<g:hasErrors bean="${it}">
<div id="error_explanation">
   <div class="alert alert-error">
      The form contains ${it.errors.getErrorCount()} error(s).
   </div>
   <ul>
      <g:eachError var="err" bean="${it}">
         <li><g:message error="${err}"/></li>
      </g:eachError>
   </ul>
</div>
</g:hasErrors>