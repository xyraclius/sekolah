package com.sekolah.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sekolah.model.SiswaModel;
import com.sekolah.model.SppModel;
import com.sekolah.service.SiswaService;
import com.sekolah.service.SppService;

@Controller
public class SppController {

	@Autowired
	private SppService sppService;

	@Autowired
	private SiswaService siswaService;

	// panggil halaman utama
	@RequestMapping(value = "spp")
	public String Index(Model model) {
		return "spp";
	}

	@RequestMapping(value = "spp/add")
	public String add(Model model, HttpServletRequest request) {
		List<SiswaModel> siswaList = null;
		try {
			siswaList = this.siswaService.list();
			model.addAttribute("siswaList", siswaList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "spp/add";
	}

	// Simpan dosen
	@RequestMapping(value = "spp/save")
	public String doSave(Model model, @ModelAttribute SppModel spp, HttpServletRequest request) throws Exception {
		String proses = request.getParameter("proses");
		String result = "";
		String jumlahUang = request.getParameter("jumlahUang");
		String bayarSpp = request.getParameter("bayarSpp");
		String kembalianSpp = request.getParameter("kembalianSpp");

		spp.setJumlahUang(Integer.valueOf(jumlahUang));
		spp.setBayarSpp(Integer.valueOf(bayarSpp));
		spp.setKembalianSpp(Integer.valueOf(kembalianSpp));

		String nisn = spp.getNisn();
		SiswaModel siswaModel = null;
		try {
			siswaModel = this.siswaService.getById(nisn);
			spp.setSiswaModel(siswaModel);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// proses input ke database
		try {
			if (proses.equals("insert")) {
				this.sppService.insert(spp);
				result = "berhasil";
			} else if (proses.equals("update")) {
				this.sppService.update(spp);
				result = "ubah";
			} else if (proses.equals("delete")) {
				String id = request.getParameter("noSpp");
				spp = this.sppService.getById(id);
				this.sppService.delete(spp);
				result = "hapus";
			}

		} catch (Exception e) {
			e.printStackTrace();
			result = "gagal";
		}
		model.addAttribute("result", result);

		return "spp/save";
	}

	// List
	// menampilkan data spp di table spp
	@RequestMapping(value = "spp/list")
	public String doList(Model model) {
		// membuat object list dari class bahan model
		List<SppModel> spp = null;
		try {
			// object spps diisi data dari method list
			spp = this.sppService.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		// datanya kita kirim ke view,
		// kita buat variable list kemudian diisi dengan object spp
		model.addAttribute("list", spp);
		return "spp/list";
	}

	// Edit
	@RequestMapping(value = "spp/edit")
	public String doEdit(Model model, HttpServletRequest request) {
		// menangkap paremeter yang dikirim dari view
		List<SiswaModel> siswaList = null;
		String id = request.getParameter("noSpp");
		// siapkan object Item model
		SppModel spp = null;
		// request ke database
		try {
			siswaList = this.siswaService.list();
			model.addAttribute("siswaList", siswaList);
			spp = this.sppService.getById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// datanya kita kirim ke view,
		// kita buat variable item kemudian diisi dengan object item
		model.addAttribute("spp", spp);
		return "spp/edit";
	}

	// Detail
	@RequestMapping(value = "spp/detail")
	public String doDetail(Model model, HttpServletRequest request) {
		// menangkap paremeter yang dikirim dari view
		String id = request.getParameter("noSpp");

		// siapkan object spp model
		SppModel spp = null;
		// request ke database
		try {
			spp = this.sppService.getById(id);
		} catch (Exception e) {
			// log.error(e.getMessage(), e);
		}
		// datanya kita kirim ke view,
		// kita buat variable spp kemudian diisi dengan object item
		model.addAttribute("spp", spp);

		// memanggil item.jsp
		return "spp/detail";
	}

	// Delete
	@RequestMapping(value = "spp/delete")
	public String delete(Model model, HttpServletRequest request) {
		// menangkap paremeter yang dikirim dari view
		String id = request.getParameter("noSpp");

		// siapkan object spp model
		SppModel spp = null;
		// request ke database
		try {
			spp = this.sppService.getById(id);
		} catch (Exception e) {
			// log.error(e.getMessage(), e);
		}
		model.addAttribute("spp", spp);
		return "spp/delete";
	}
}
