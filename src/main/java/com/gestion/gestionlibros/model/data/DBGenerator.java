package com.gestion.gestionlibros.model.data;

import org.jooq.DSLContext;
import org.jooq.impl.DSL;
import java.sql.Connection;

import static org.jooq.impl.DSL.*;
import static org.jooq.impl.SQLDataType.*;

public class DBGenerator {

    public static void iniciarBD(String nombreBD) throws ClassNotFoundException {
        Connection connection = DBConnector.connection("root", "");
        DSLContext create = DSL.using(connection);
        crearBaseDato(create, nombreBD);
        create = actualizarConexion(connection, nombreBD);
        crearTablaCategoriaLibro(create);
        crearTablaLibro(create);
        DBConnector.closeConnection();
    }

    public static DSLContext conectarBD(String nombreBD) throws ClassNotFoundException {
        Connection connection = DBConnector.connection(nombreBD, "root", "");
        return DSL.using(connection);
    }

    private static void crearBaseDato(DSLContext create, String nombreBD) {
        create.createDatabaseIfNotExists(nombreBD).execute();
    }

    private static DSLContext actualizarConexion(Connection connection, String nombreBD) {
        DBConnector.closeConnection();
        connection = DBConnector.connection(nombreBD, "root", "");
        return DSL.using(connection);
    }

    private static void crearTablaCategoriaLibro(DSLContext create) {
        create.createTableIfNotExists("CategoriaLibro")
                .column("id", INTEGER.identity(true))
                .column("categoria", VARCHAR(100).notNull())
                .constraint(primaryKey("id"))
                .execute();
    }

    private static void crearTablaLibro(DSLContext create) {
        create.createTableIfNotExists("Libro")
                .column("ISBN", VARCHAR(50))
                .column("nombre", VARCHAR(100).notNull())
                .column("editorial", VARCHAR(100).notNull())
                .column("categoria", INTEGER)
                .column("anio", INTEGER)
                .column("tipoLibro", VARCHAR(100).notNull())
                .constraint(primaryKey("ISBN"))
                .constraint(foreignKey("categoria").references("CategoriaLibro", "id"))
                .execute();
    }
}