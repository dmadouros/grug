<html>
<head>
  <meta name="layout" content="main" />
</head>
<body>
  
<h1>Authors</h1>

<p>
  <g:link action="create">Add Author</g:link>
</p>
<table border="1">
  <tr>
    <th>
      Name
    </th>
    <th>
      &nbsp;
    </th>
  </tr>
  <g:each in="${authors}" var="author">
    <tr>
      <td>
        ${author.name}
      </td>
      <td>
        <g:link controller="book" params="${[authorId: author.id]}">Books</g:link>
      </td>
    </tr>
  </g:each>
</table>

</body>
</html>