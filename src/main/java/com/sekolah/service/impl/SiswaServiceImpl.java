package com.sekolah.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sekolah.dao.SiswaDao;
import com.sekolah.model.SiswaModel;
import com.sekolah.service.SiswaService;

@Service
@Transactional
public class SiswaServiceImpl implements SiswaService {

	@Autowired
	private SiswaDao dao;

	@Override
	public List<SiswaModel> list() throws Exception {
		// TODO Auto-generated method stub
		return this.dao.list();
	}

	@Override
	public void insert(SiswaModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.insert(model);
	}

	@Override
	public SiswaModel getById(String id) throws Exception {
		// TODO Auto-generated method stub
		return this.dao.getById(id);
	}

	@Override
	public void update(SiswaModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.update(model);
	}

	@Override
	public void delete(SiswaModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.delete(model);
	}

	@Override
	public List<SiswaModel> getByIdNotIn(String idExcludeList) throws Exception {
		// TODO Auto-generated method stub
		return this.dao.getByIdNotIn(idExcludeList);
	}

}
