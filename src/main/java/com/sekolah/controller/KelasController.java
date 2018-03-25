package com.sekolah.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sekolah.model.GuruModel;
import com.sekolah.model.KelasModel;
import com.sekolah.service.GuruService;
import com.sekolah.service.KelasService;

@Controller
public class KelasController {

	@Autowired
	private KelasService kelasService;

	@Autowired
	private GuruService guruService;

	// panggil halaman utama kelas
	@RequestMapping(value = "kelas")
	public String Index(Model model) {
		return "kelas";
	}

	@RequestMapping(value = "kelas/add")
	public String add(Model model, HttpServletRequest request) {
		List<GuruModel> guruList = null;
		try {
			guruList = this.guruService.list();
			model.addAttribute("guruList", guruList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "kelas/add";
	}

	// Simpan kelas
	@RequestMapping(value = "/kelas/save")
	public String doSave(Model model, @ModelAttribute KelasModel kelas, HttpServletRequest request) {
		String proses = request.getParameter("proses");
		String result = "";
		GuruModel guruModel = null;
		String nip = kelas.getNip();

		try {
			guruModel = this.guruService.getById(nip);
			kelas.setGuruModel(guruModel);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// proses input ke database
		try {
			if (proses.equals("insert")) {
				this.kelasService.insert(kelas);
				result = "berhasil";
			} else if (proses.equals("update")) {
				this.kelasService.update(kelas);
				result = "ubah";
			} else if (proses.equals("delete")) {
				String id = request.getParameter("kdKelas");
				kelas = this.kelasService.getById(id);
				this.kelasService.delete(kelas);
				result = "hapus";
			}

		} catch (Exception e) {
			e.printStackTrace();
			result = "gagal";
		}
		model.addAttribute("result", result);

		return "/kelas/save";
	}

	// List
	// menampilkan data kelas di table kelas
	@RequestMapping(value = "kelas/list")
	public String doList(Model model) {
		// membuat object list dari class bahan model
		List<KelasModel> kelas = null;
		try {
			// object kelas diisi data dari method list
			kelas = this.kelasService.list();
		} catch (Exception e) {
			e.printStackTrace();
		}

		// datanya kita kirim ke view,
		// kita buat variable list kemudian diisi dengan object kelas
		model.addAttribute("list", kelas);
		return "kelas/list";
	}

	// Edit
	@RequestMapping(value = "kelas/edit")
	public String doEdit(Model model, HttpServletRequest request) {
		List<GuruModel> guruList = null;

		// menangkap paremeter yang dikirim dari view
		String id = request.getParameter("kdKelas");
		// siapkan object Item model
		KelasModel kelas = null;
		// request ke database
		try {
			guruList = this.guruService.list();
			model.addAttribute("guruList", guruList);
			kelas = this.kelasService.getById(id);
		} catch (Exception e) {
			// log.error(e.getMessage(), e);
		}
		// datanya kita kirim ke view,
		// kita buat variable item kemudian diisi dengan object item
		model.addAttribute("kelas", kelas);
		return "kelas/edit";
	}

	// Detail
	@RequestMapping(value = "kelas/detail")
	public String doDetail(Model model, HttpServletRequest request) {
		// menangkap paremeter yang dikirim dari view
		String id = request.getParameter("kdKelas");

		// siapkan object Kelas model
		KelasModel kelas = null;
		// request ke database
		try {
			kelas = this.kelasService.getById(id);
		} catch (Exception e) {
			// log.error(e.getMessage(), e);
		}
		// datanya kita kirim ke view,
		// kita buat variable item kemudian diisi dengan object item
		model.addAttribute("kelas", kelas);

		// memanggil item.jsp
		return "kelas/detail";
	}

	// Delete
	@RequestMapping(value = "kelas/delete")
	public String delete(Model model, HttpServletRequest request) {
		// menangkap paremeter yang dikirim dari view
		String id = request.getParameter("kdKelas");

		// siapkan object Item model
		KelasModel kelas = null;
		// request ke database
		try {
			kelas = this.kelasService.getById(id);
		} catch (Exception e) {
			// log.error(e.getMessage(), e);
		}
		model.addAttribute("kelas", kelas);
		return "kelas/delete";
	}
}
