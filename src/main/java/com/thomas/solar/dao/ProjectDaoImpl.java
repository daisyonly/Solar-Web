package com.thomas.solar.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.thomas.solar.domain.Projectdetail;

@Repository
@Transactional
public class ProjectDaoImpl implements ProjectDao
{
	@PersistenceContext
    private EntityManager em;

	@Override
	public Projectdetail findById(Long pid) {
		return em.find(Projectdetail.class, pid);
	}

	@Override
	public List<Projectdetail> findAll() {
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<Projectdetail> criteria = cb
				.createQuery(Projectdetail.class);
		Root<Projectdetail> project = criteria.from(Projectdetail.class);
		criteria.select(project).orderBy(cb.desc(project.get("pid")));
		return em.createQuery(criteria).getResultList();
	}

	@Override
	public void register(Projectdetail project) {
		em.persist(project);
	}
}
