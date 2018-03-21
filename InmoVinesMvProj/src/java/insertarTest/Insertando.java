/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package insertarTest;

import entities.Comunidades;
import entities.Municipios;
import entities.Provincias;
import entities.inmuebles.Caracteristicas;
import entities.inmuebles.Direccion;
import entities.inmuebles.Inmuebles;
import entities.inmuebles.Localizacion;
import org.hibernate.Session;
import hibernateUtil.NewHibernateUtil;
import org.hibernate.Transaction;

/**
 *
 * @author Usuario 2 DAM
 */
public class Insertando {

    public static void main(String[] args) {

        Inmuebles inmuebles = new Inmuebles();

        Direccion direccion = new Direccion();

        direccion.setDireccionCalle("C/DE TU PUTA MADRE");
        direccion.setDireccionEscalera("hehe");

        Caracteristicas caracteristicas = new Caracteristicas();

        caracteristicas.setCarpinteriaExterior("to guapa");
        caracteristicas.setEstadoConservacion("ok");

        Localizacion localizacion = new Localizacion();
        Comunidades comunidades = new Comunidades(Long.valueOf(19));
        Municipios municipios = new Municipios(Long.valueOf(4));
        Provincias provincias = new Provincias(Long.valueOf(3));

        localizacion.setDireccion(direccion);
        localizacion.setComunidad(comunidades);
        localizacion.setMunicipio(municipios);
        localizacion.setProvincia(provincias);

        inmuebles.setCaracteristicas(caracteristicas);
        inmuebles.setLocalizacion(localizacion);
        inmuebles.setTextoReclamo("ME LO QUITAN DE LAS MANOS XD");
        inmuebles.setDescripcion("Gracias a este edificio nos van a dar un 10 jajajajajjj");

        Session session = NewHibernateUtil.getSessionFactory().openSession();

        Transaction transaction = session.beginTransaction();

        session.save(inmuebles);

        transaction.commit();

    }

}
