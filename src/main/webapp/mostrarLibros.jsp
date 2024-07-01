<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Mostrar Libros</title>
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>
<header>
    <h1>Lista de Libros</h1>
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
        <h2>Libros Registrados</h2>
        <table>
            <thead>
            <tr>
                <th>ISBN</th>
                <th>Nombre</th>
                <th>Editorial</th>
                <th>Categoría</th>
                <th>Año</th>
                <th>Tipo</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="libro" items="${libros}">
                <tr>
                    <td>${libro.ISBN}</td>
                    <td>${libro.nombre}</td>
                    <td>${libro.editorial}</td>
                    <td>${libro.categoriaLibro.categoria}</td>
                    <td>${libro.anio}</td>
                    <td>${libro.tipoLibro}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </section>
</main>
<footer>
    <p>&copy; 2024 Universidad de La Frontera</p>
</footer>
</body>
</html>