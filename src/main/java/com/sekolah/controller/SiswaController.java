package com.sekolah.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sekolah.model.SiswaModel;
import com.sekolah.service.SiswaService;

@Controller
public class SiswaController {

	@Autowired
	private SiswaService service;

	// panggil halaman utama siswa
	@RequestMapping(value = "siswa")
	public String Index(Model model) {
		return "siswa";
	}

	@RequestMapping(value = "siswa/add")
	public String add(Model model) {
		return "siswa/add";
	}

	// Simpan siswa
	@RequestMapping(value = "/siswa/save")
	public String doSave(Model model, @ModelAttribute SiswaModel siswa, HttpServletRequest request) {
		String proses = request.getParameter("proses");
		String result = "";
		// proses input ke database
		try {
			if (proses.equals("insert")) {
				this.service.insert(siswa);
				result = "berhasil";
			} else if (proses.equals("update")) {
				this.service.update(siswa);
				result = "ubah";
			} else if (proses.equals("delete")) {
				String id = request.getParameter("nisn");
				siswa = this.service.getById(id);
				this.service.delete(siswa);
				result = "hapus";
			}

		} catch (Exception e) {
			// log.error(e.getMessage(), e);
			result = "gagal";
		}
		model.addAttribute("result", result);

		return "/siswa/save";
	}

	// List
	// menampilkan data siswa di table siswa
	@RequestMapping(value = "siswa/list")
	public String doList(Model model) {
		// membuat object list dari class bahan model
		List<SiswaModel> siswa = null;
		try {
			// object siswas diisi data dari method list
			siswa = this.service.list();
		} catch (Exception e) {
			// log.error(e.getMessage(), e);
		}

		// datanya kita kirim ke view,
		// kita buat variable list kemudian diisi dengan object siswa
		model.addAttribute("list", siswa);
		return "siswa/list";
	}

	// Edit
	@RequestMapping(value = "siswa/edit")
	public String doEdit(Model model, HttpServletRequest request) {
		// menangkap paremeter yang dikirim dari view
		String id = request.getParameter("nisn");
		// siapkan object Item model
		SiswaModel siswa = null;
		// request ke database
		try {
			siswa = this.service.getById(id);
		} catch (Exception e) {
			// log.error(e.getMessage(), e);
		}
		// datanya kita kirim ke view,
		// kita buat variable item kemudian diisi dengan object item
		model.addAttribute("siswa", siswa);
		return "siswa/edit";
	}

	// Detail
	@RequestMapping(value = "siswa/detail")
	public String doDetail(Model model, HttpServletRequest request) {
		// menangkap paremeter yang dikirim dari view
		String id = request.getParameter("nisn");

		// siapkan object Siswa model
		SiswaModel siswa = null;
		// request ke database
		try {
			siswa = this.service.getById(id);
		} catch (Exception e) {
			// log.error(e.getMessage(), e);
		}
		// datanya kita kirim ke view,
		// kita buat variable item kemudian diisi dengan object item
		model.addAttribute("siswa", siswa);

		// memanggil item.jsp
		return "siswa/detail";
	}

	// Delete
	@RequestMapping(value = "siswa/delete")
	public String delete(Model model, HttpServletRequest request) {
		// menangkap paremeter yang dikirim dari view
		String id = request.getParameter("nisn");

		// siapkan object Item model
		SiswaModel siswa = null;
		// request ke database
		try {
			siswa = this.service.getById(id);
		} catch (Exception e) {
			// log.error(e.getMessage(), e);
		}
		model.addAttribute("siswa", siswa);
		return "siswa/delete";
	}
}
