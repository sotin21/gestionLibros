package com.gestion.gestionlibros.model;

public class Libro {
    private String ISBN;
    private String nombre;
    private String editorial;
    private CategoriaLibro categoriaLibro;
    private int anio;
    private TipoLibro tipoLibro;

    public Libro(String ISBN, String nombre, String editorial, CategoriaLibro categoriaLibro, int anio, TipoLibro tipoLibro) {
        this.ISBN = ISBN;
        this.nombre = nombre;
        this.editorial = editorial;
        this.categoriaLibro = categoriaLibro;
        this.anio = anio;
        this.tipoLibro = tipoLibro;
    }

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEditorial() {
        return editorial;
    }

    public void setEditorial(String editorial) {
        this.editorial = editorial;
    }

    public CategoriaLibro getCategoriaLibro() {
        return categoriaLibro;
    }

    public void setCategoriaLibro(CategoriaLibro categoriaLibro) {
        this.categoriaLibro = categoriaLibro;
    }

    public int getAnio() {
        return anio;
    }

    public void setAnio(int anio) {
        this.anio = anio;
    }

    public TipoLibro getTipoLibro() {
        return tipoLibro;
    }

    public void setTipoLibro(TipoLibro tipoLibro) {
        this.tipoLibro = tipoLibro;
    }
}