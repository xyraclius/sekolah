package com.sekolah.dao;

import java.util.List;

import com.sekolah.model.SppModel;




public interface SppDao {
	public List<SppModel> list() throws Exception;
	public void insert(SppModel model) throws Exception;
	public SppModel getById(String id) throws Exception;
	public void update(SppModel model) throws Exception;
	public void delete(SppModel model) throws Exception;	
	public List<SppModel> getByIdNotIn(String idExcludeList) throws Exception;
}
