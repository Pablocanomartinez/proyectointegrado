/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import modelo.dao.exceptions.NonexistentEntityException;
import modelo.entidades.Entrenador;

/**
 *
 * @author pablo
 */
public class EntrenadorJpaController implements Serializable {

    public EntrenadorJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Entrenador entrenador) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(entrenador);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Entrenador entrenador) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            entrenador = em.merge(entrenador);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Long id = entrenador.getId();
                if (findEntrenador(id) == null) {
                    throw new NonexistentEntityException("The entrenador with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Long id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Entrenador entrenador;
            try {
                entrenador = em.getReference(Entrenador.class, id);
                entrenador.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The entrenador with id " + id + " no longer exists.", enfe);
            }
            em.remove(entrenador);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Entrenador> findEntrenadorEntities() {
        return findEntrenadorEntities(true, -1, -1);
    }

    public List<Entrenador> findEntrenadorEntities(int maxResults, int firstResult) {
        return findEntrenadorEntities(false, maxResults, firstResult);
    }

    private List<Entrenador> findEntrenadorEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Entrenador.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Entrenador findEntrenador(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Entrenador.class, id);
        } finally {
            em.close();
        }
    }

    public int getEntrenadorCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Entrenador> rt = cq.from(Entrenador.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
