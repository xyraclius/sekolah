package com.sekolah.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sekolah.dao.SppDao;
import com.sekolah.model.SppModel;

@Repository
public class SppDaoImpl implements SppDao {

	@Autowired
	private SessionFactory sessionFactory; // login database

	@SuppressWarnings("unchecked")
	@Override
	public List<SppModel> list() throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		List<SppModel> result = session.createQuery("from SppModel").list();
		return result;
	}

	@Override
	public void insert(SppModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.save(model);
	}

	@Override
	public SppModel getById(String id) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		SppModel result = session.get(SppModel.class, id);
		return result;
	}

	@Override
	public void update(SppModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(model);
	}

	@Override
	public void delete(SppModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(model);
	}

	@Override
	public List<SppModel> getByIdNotIn(String idExcludeList) throws Exception {
		// TODO Auto-generated method stub
		String condition = "";
		if (!idExcludeList.isEmpty()) {
			condition = " where id NOT IN (" + idExcludeList + " ) ";
		}
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<SppModel> result = session.createQuery("from SppModel" + condition).list();
		return result;
	}

}
