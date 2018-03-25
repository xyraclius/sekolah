package com.sekolah.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sekolah.dao.SppDao;
import com.sekolah.model.SppModel;
import com.sekolah.service.SppService;

@Service
@Transactional
public class SppServiceImpl implements SppService {

	@Autowired
	private SppDao dao;

	@Override
	public List<SppModel> list() throws Exception {
		// TODO Auto-generated method stub
		return this.dao.list();
	}

	@Override
	public void insert(SppModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.insert(model);
	}

	@Override
	public SppModel getById(String id) throws Exception {
		// TODO Auto-generated method stub
		return this.dao.getById(id);
	}

	@Override
	public void update(SppModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.update(model);
	}

	@Override
	public void delete(SppModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.delete(model);
	}

	@Override
	public List<SppModel> getByIdNotIn(String idExcludeList) throws Exception {
		// TODO Auto-generated method stub
		return this.dao.getByIdNotIn(idExcludeList);
	}

}
