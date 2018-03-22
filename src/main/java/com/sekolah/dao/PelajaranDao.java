package com.sekolah.dao;

import java.util.List;

import com.sekolah.model.PelajaranModel;



public interface PelajaranDao {
	public List<PelajaranModel> list() throws Exception;
	public void insert(PelajaranModel model) throws Exception;
	public PelajaranModel getById(String id) throws Exception;
	public void update(PelajaranModel model) throws Exception;
	public void delete(PelajaranModel model) throws Exception;
	public List<PelajaranModel> getByIdNotIn(String idExcludeList) throws Exception;
}
