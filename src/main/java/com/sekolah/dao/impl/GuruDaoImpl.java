package com.sekolah.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sekolah.dao.GuruDao;
import com.sekolah.model.GuruModel;



@Repository
public class GuruDaoImpl implements GuruDao{

	@Autowired
	private SessionFactory sessionFactory; //login database
	
	@SuppressWarnings("unchecked")
	@Override
	public List<GuruModel> list() throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		List<GuruModel> result = session.createQuery("from GuruModel").list();
		return result;
	}

	@Override
	public void insert(GuruModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.save(model);
	}

	@Override
	public GuruModel getById(String id) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		GuruModel result = session.get(GuruModel.class, id);
		return result;
	}

	@Override
	public void update(GuruModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(model);
	}

	@Override
	public void delete(GuruModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(model);
	}

	@Override
	public List<GuruModel> getByIdNotIn(String idExcludeList) throws Exception {
		// TODO Auto-generated method stub
		String condition ="";
		if(!idExcludeList.isEmpty()) {
			condition = " where id NOT IN ("+idExcludeList+" ) ";
		}
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<GuruModel> result = session.createQuery("from GuruModel"+condition).list();
		return result;
	}

	
}
