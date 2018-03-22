package com.sekolah.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sekolah.model.PelajaranModel;
import com.sekolah.service.PelajaranService;

@Controller
public class PelajaranController {

	private Log log = LogFactory.getLog(getClass());

	@Autowired
	private PelajaranService service;

	// panggil halaman utama
	@RequestMapping(value = "pelajaran")
	public String index(Model model) {
		return "pelajaran";
	}

	// panggil popup add
	@RequestMapping(value = "pelajaran/add")
	public String add(Model model) {
		return "pelajaran/add";
	}

	// Simpan data pelajaran
	@RequestMapping(value = "pelajaran/save")
	public String doSave(Model model, @ModelAttribute PelajaranModel pelajaran, HttpServletRequest request) {
		String proses = request.getParameter("proses");
		String result = "";
		// proses input ke database
		try {
			if (proses.equals("insert")) {
				this.service.insert(pelajaran);
				result = "berhasil";
			} else if (proses.equals("update")) {
				this.service.update(pelajaran);
				result = "ubah";
			} else if (proses.equals("delete")) {
				String id = request.getParameter("kdPelajaran");
				pelajaran = this.service.getById(id);
				this.service.delete(pelajaran);
				result = "hapus";
			}

		} catch (Exception e) {
			log.error(e.getMessage(), e);
			result = "gagal";
		}
		model.addAttribute("result", result);

		return "pelajaran/save";
	}

	// List
	// menampilkan data pelajaran di table item
	@RequestMapping(value = "pelajaran/list")
	public String doList(Model model) {
		// membuat object list dari class bahan model
		List<PelajaranModel> pelajarans = null;
		try {
			// object items diisi data dari method list
			pelajarans = this.service.list();
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}

		// datanya kita kirim ke view,
		// kita buat variable list kemudian diisi dengan object items
		model.addAttribute("list", pelajarans);
		return "pelajaran/list";
	}

	// Detail
	@RequestMapping(value = "pelajaran/detail")
	public String doDetail(Model model, HttpServletRequest request) {
		// menangkap paremeter yang dikirim dari view
		String id = request.getParameter("kdPelajaran");

		// siapkan object pelajaran model
		PelajaranModel pelajaran = null;
		// request ke database
		try {
			pelajaran = this.service.getById(id);
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}
		// datanya kita kirim ke view,
		// kita buat variable pelajaran kemudian diisi dengan object pelajaran
		model.addAttribute("pelajaran", pelajaran);

		// memanggil item.jsp
		return "pelajaran/detail";
	}

	// Edit
	@RequestMapping(value = "pelajaran/edit")
	public String doEdit(Model model, HttpServletRequest request) {
		// menangkap paremeter yang dikirim dari view
		String id = request.getParameter("kdPelajaran");
		// siapkan object pelajaran model
		PelajaranModel pelajaran = null;
		// request ke database
		try {
			pelajaran = this.service.getById(id);
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}
		// datanya kita kirim ke view,
		// kita buat variable item kemudian diisi dengan object item
		model.addAttribute("pelajaran", pelajaran);
		return "pelajaran/edit";
	}

	// Delete
	@RequestMapping(value = "pelajaran/delete")
	public String delete(Model model, HttpServletRequest request) {
		// menangkap paremeter yang dikirim dari view
		String id = request.getParameter("kdPelajaran");

		// siapkan object Item model
		PelajaranModel pelajaran = null;
		// request ke database
		try {
			pelajaran = this.service.getById(id);
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}
		model.addAttribute("pelajaran", pelajaran);
		return "pelajaran/delete";
	}
}
