<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro Erróneo</title>
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>
<header>
    <h1>Registro Erróneo</h1>
</header>
<nav>
    <ul>
        <li><a href="index.jsp">Inicio</a></li>
        <li><a href="registroCategoria.jsp">Registrar Categoría</a></li>
        <li><a href="registroLibro.jsp">Registrar Libro</a></li>
        <li><a href="mostrarLibros.jsp">Mostrar Libros</a></li>
    </ul>
</nav>
<main>
    <section>
        <p>Hubo un error en el registro. Por favor, intente nuevamente.</p>
        <p><%= request.getAttribute("error") %></p>
        <a href="index.jsp">Volver al inicio</a>
    </section>
</main>
<footer>
    <p>&copy; 2024 Universidad de La Frontera</p>
</footer>
</body>
</html>