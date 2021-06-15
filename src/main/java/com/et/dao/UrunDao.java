package com.et.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.et.model.Urun;
import com.et.util.HibernateUtil;

/**
 * CRUD database operations
 * @author Ramesh Fadatare
 *
 */
public class UrunDao {

    /**
     * Save Urun
     * @param urun
     */
    public void saveUrun(Urun urun) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.save(urun);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    /**
     * Update Urun
     * @param urun
     */
    public void updateUrun(Urun urun) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.update(urun);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    /**
     * Delete Urun
     * @param id
     */
    public void deleteUrun(int id) {

        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();

            // Delete a urun object
            Urun urun = session.get(Urun.class, id);
            if (urun != null) {
                session.delete(urun);
                System.out.println("urun is deleted");
            }

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    /**
     * Get Urun By ID
     * @param id
     * @return
     */
    public Urun getUrun(int id) {

        Transaction transaction = null;
        Urun urun = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an urun object
            urun = session.get(Urun.class, id);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return urun;
    }

    /**
     * Get all Uruns
     * @return
     */
    @SuppressWarnings("unchecked")
    public List < Urun > getAllUrun() {

        Transaction transaction = null;
        List < Urun > listOfUrun = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an urun object

            listOfUrun = session.createQuery("from Urun").getResultList();

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return listOfUrun;
    }
}