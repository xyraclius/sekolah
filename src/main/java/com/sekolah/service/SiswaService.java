package com.sekolah.service;

import java.util.List;

import com.sekolah.model.SiswaModel;

public interface SiswaService {
	public List<SiswaModel> list() throws Exception;

	public void insert(SiswaModel model) throws Exception;

	public SiswaModel getById(String id) throws Exception;

	public void update(SiswaModel model) throws Exception;

	public void delete(SiswaModel model) throws Exception;

	public List<SiswaModel> getByIdNotIn(String idExcludeList) throws Exception;
}
