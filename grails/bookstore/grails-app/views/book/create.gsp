<html>
<head>
  <meta name="layout" content="main" />
</head>
<body>

<h1>Add Book <small>(${author.name})</small></h1>

<g:form action="save">
  <g:render template="/shared/errorMessages" bean="${book}"/>
  <g:hiddenField name="author.id" value="${author.id}"/>
  <label for="title">Title</label>
  <g:textField name="title" size="30"/>
  <g:submitButton name="submit" value="Create Book"/>
</g:form>

</body>
</html>