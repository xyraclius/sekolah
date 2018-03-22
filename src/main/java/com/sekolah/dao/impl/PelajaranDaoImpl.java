package com.sekolah.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sekolah.dao.PelajaranDao;
import com.sekolah.model.PelajaranModel;


@Repository
public class PelajaranDaoImpl implements PelajaranDao{

	@Autowired
	private SessionFactory sessionFactory; //login database
	
	@SuppressWarnings("unchecked")
	@Override
	public List<PelajaranModel> list() throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		List<PelajaranModel> result = session.createQuery("from PelajaranModel").list();
		return result;
	}

	@Override
	public void insert(PelajaranModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.save(model);
	}

	@Override
	public PelajaranModel getById(String id) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		PelajaranModel result = session.get(PelajaranModel.class, id);
		return result;
	}

	@Override
	public void update(PelajaranModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(model);
	}

	@Override
	public void delete(PelajaranModel model) throws Exception {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(model);
	}

	@Override
	public List<PelajaranModel> getByIdNotIn(String idExcludeList) throws Exception {
		// TODO Auto-generated method stub
		String condition ="";
		if(!idExcludeList.isEmpty()) {
			condition = " where id NOT IN ("+idExcludeList+" ) ";
		}
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<PelajaranModel> result = session.createQuery("from PelajaranModel"+condition).list();
		return result;
	}

	
}
