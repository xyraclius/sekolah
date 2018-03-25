package com.sekolah.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sekolah.dao.KelasDao;
import com.sekolah.model.KelasModel;
import com.sekolah.service.KelasService;

@Service
@Transactional
public class KelasServiceImpl implements KelasService {

	@Autowired
	private KelasDao dao;

	@Override
	public List<KelasModel> list() throws Exception {
		// TODO Auto-generated method stub
		return this.dao.list();
	}

	@Override
	public void insert(KelasModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.insert(model);
	}

	@Override
	public KelasModel getById(String id) throws Exception {
		// TODO Auto-generated method stub
		return this.dao.getById(id);
	}

	@Override
	public void update(KelasModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.update(model);
	}

	@Override
	public void delete(KelasModel model) throws Exception {
		// TODO Auto-generated method stub
		this.dao.delete(model);
	}

	@Override
	public List<KelasModel> getByIdNotIn(String idExcludeList) throws Exception {
		// TODO Auto-generated method stub
		return this.dao.getByIdNotIn(idExcludeList);
	}

}
