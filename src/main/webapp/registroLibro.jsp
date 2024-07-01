<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registrar Libro</title>
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>
<header>
    <h1>Registrar Nuevo Libro</h1>
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
        <form action="registroLibro" method="post">
            <label for="ISBN">ISBN:</label>
            <input type="text" id="ISBN" name="ISBN" required>

            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>

            <label for="editorial">Editorial:</label>
            <input type="text" id="editorial" name="editorial" required>

            <label for="anio">Año:</label>
            <input type="number" id="anio" name="anio" required>

            <label for="categoria">Categoría:</label>
            <select id="categoria" name="categoria" required>
                <c:forEach var="categoria" items="${categorias}">
                    <option value="${categoria.id}">${categoria.categoria}</option>
                </c:forEach>
            </select>

            <label for="tipoLibro">Tipo de Libro:</label>
            <select id="tipoLibro" name="tipoLibro" required>
                <option value="FISICO">Físico</option>
                <option value="DIGITAL">Digital</option>
            </select>

            <button type="submit">Registrar</button>
        </form>
    </section>
</main>
<footer>
    <p>&copy; 2024 Universidad de La Frontera</p>
</footer>
</body>
</html>