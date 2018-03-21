package com.sekolah.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sekolah.dao.SiswaDao;
import com.sekolah.model.SiswaModel;

@Repository
public class SiswaDaoImpl implements SiswaDao {

	@Autowired
	private SessionFactory sessionFactory; // login database

	@SuppressWarnings("unchecked")
	@Override
	public List<SiswaModel> list() throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		List<SiswaModel> result = session.createQuery("from SiswaModel").list();
		return result;
	}

	@Override
	public void insert(SiswaModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.save(model);
	}

	@Override
	public SiswaModel getById(String id) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		SiswaModel result = session.get(SiswaModel.class, id);
		return result;
	}

	@Override
	public void update(SiswaModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(model);
	}

	@Override
	public void delete(SiswaModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(model);
	}

	@Override
	public List<SiswaModel> getByIdNotIn(String idExcludeList) throws Exception {
		// TODO Auto-generated method stub
		String condition = "";
		if (!idExcludeList.isEmpty()) {
			condition = " where id NOT IN (" + idExcludeList + " ) ";
		}
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<SiswaModel> result = session.createQuery("from SiswaModel" + condition).list();
		return result;
	}

}
