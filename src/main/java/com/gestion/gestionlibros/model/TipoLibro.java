package com.gestion.gestionlibros.model;

public enum TipoLibro {
    FISICO("Físico"), DIGITAL("Digital");

    private final String tipo;

    private TipoLibro(String tipo) {
        this.tipo = tipo;
    }

    public String getTipoLibro() {
        return tipo;
    }

    public static TipoLibro getTipoLibro(String tipo) {
        for (TipoLibro t : values()) {
            if (t.getTipoLibro().equals(tipo)) {
                return t;
            }
        }
        return null;
    }

    @Override
    public String toString() {
        return tipo;
    }
}