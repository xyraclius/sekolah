package com.sekolah.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sekolah.dao.KelasDao;
import com.sekolah.model.KelasModel;

@Repository
public class KelasDaoImpl implements KelasDao {

	@Autowired
	private SessionFactory sessionFactory; // login database

	@SuppressWarnings("unchecked")
	@Override
	public List<KelasModel> list() throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		List<KelasModel> result = session.createQuery("from KelasModel").list();
		return result;
	}

	@Override
	public void insert(KelasModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.save(model);
	}

	@Override
	public KelasModel getById(String id) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		KelasModel result = session.get(KelasModel.class, id);
		return result;
	}

	@Override
	public void update(KelasModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(model);
	}

	@Override
	public void delete(KelasModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(model);
	}

	@Override
	public List<KelasModel> getByIdNotIn(String idExcludeList) throws Exception {
		// TODO Auto-generated method stub
		String condition = "";
		if (!idExcludeList.isEmpty()) {
			condition = " where id NOT IN (" + idExcludeList + " ) ";
		}
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<KelasModel> result = session.createQuery("from KelasModel" + condition).list();
		return result;
	}

}
