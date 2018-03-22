package com.sekolah.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sekolah.dao.PelajaranDao;
import com.sekolah.model.PelajaranModel;
import com.sekolah.service.PelajaranService;




@Service
@Transactional
public class PelajaranServiceImpl implements PelajaranService{

	@Autowired
	private PelajaranDao dao;
	
	@Override
	public List<PelajaranModel> list() throws Exception {
		// TODO Auto-generated method stub
		return this.dao.list();
	}

	@Override
	public void insert(PelajaranModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.insert(model);
	}

	@Override
	public PelajaranModel getById(String id) throws Exception {
		// TODO Auto-generated method stub
		return this.dao.getById(id);
	}

	@Override
	public void update(PelajaranModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.update(model);
	}

	@Override
	public void delete(PelajaranModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.delete(model);
	}

	@Override
	public List<PelajaranModel> getByIdNotIn(String idExcludeList) throws Exception {
		// TODO Auto-generated method stub
		return this.dao.getByIdNotIn(idExcludeList);
	}

}
