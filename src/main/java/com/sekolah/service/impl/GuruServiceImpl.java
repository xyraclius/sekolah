package com.sekolah.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sekolah.dao.GuruDao;
import com.sekolah.model.GuruModel;
import com.sekolah.service.GuruService;



@Service
@Transactional
public class GuruServiceImpl implements GuruService{

	@Autowired
	private GuruDao dao;
	
	@Override
	public List<GuruModel> list() throws Exception {
		// TODO Auto-generated method stub
		return this.dao.list();
	}

	@Override
	public void insert(GuruModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.insert(model);
	}

	@Override
	public GuruModel getById(String id) throws Exception {
		// TODO Auto-generated method stub
		return this.dao.getById(id);
	}

	@Override
	public void update(GuruModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.update(model);
	}

	@Override
	public void delete(GuruModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.delete(model);
	}

	@Override
	public List<GuruModel> getByIdNotIn(String idExcludeList) throws Exception {
		// TODO Auto-generated method stub
		return this.dao.getByIdNotIn(idExcludeList);
	}

}
