package com.sekolah.dao;

import java.util.List;

import com.sekolah.model.KelasModel;

public interface KelasDao {
	public List<KelasModel> list() throws Exception;

	public void insert(KelasModel model) throws Exception;

	public KelasModel getById(String id) throws Exception;

	public void update(KelasModel model) throws Exception;

	public void delete(KelasModel model) throws Exception;

	public List<KelasModel> getByIdNotIn(String idExcludeList) throws Exception;
}
