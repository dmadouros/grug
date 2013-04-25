<html>
<head>
  <meta name="layout" content="main" />
</head>
<body>

<h1>Add Author</h1>

<g:form action="save">
  <g:renderErrors bean="${author}"/>
  <label for="name">Name</label>
  <g:textField name="name" size="30"/>
  <g:submitButton name="submit" value="Create Author"/>
</g:form>

</body>
</html>