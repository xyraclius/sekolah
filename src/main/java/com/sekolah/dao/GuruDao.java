package com.sekolah.dao;

import java.util.List;

import com.sekolah.model.GuruModel;






public interface GuruDao {
	public List<GuruModel> list() throws Exception;
	public void insert(GuruModel model) throws Exception;
	public GuruModel getById(String id) throws Exception;
	public void update(GuruModel model) throws Exception;
	public void delete(GuruModel model) throws Exception;	
	public List<GuruModel> getByIdNotIn(String idExcludeList) throws Exception;
}
