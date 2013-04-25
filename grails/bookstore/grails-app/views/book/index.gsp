<html>
<head>
  <meta name="layout" content="main" />
</head>
<body>

<h1>Books <small>(${author.name})</small></h1>

<p>
  <g:link action="create" params="${[authorId: author.id]}">Add Book</g:link>
</p>
<table border="1">
  <tr>
    <th>
      Title
    </th>
  </tr>
  <g:each in="${books}" var="book">
    <tr>
      <td>
        ${book.title}
      </td>
    </tr>
  </g:each>
</table>

</body>
</html>