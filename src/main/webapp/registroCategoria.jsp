<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registrar Categoría</title>
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>
<header>
    <h1>Registrar Nueva Categoría</h1>
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
        <form action="registroCategoria" method="post">
            <label for="categoria">Categoría:</label>
            <input type="text" id="categoria" name="categoria" required>
            <button type="submit">Registrar</button>
        </form>
    </section>
</main>
<footer>
    <p>&copy; 2024 Universidad de La Frontera</p>
</footer>
</body>
</html>