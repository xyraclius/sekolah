package com.sekolah.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sekolah.model.GuruModel;
import com.sekolah.service.GuruService;


@Controller
public class GuruController {
	
	@Autowired
	private GuruService service;
	
		//panggil halaman utama
		@RequestMapping(value="guru")
		public String Index(Model model) {
			return "guru";
		}
		@RequestMapping(value="guru/add")
		public String add(Model model) {
			return "guru/add";
		}
		//Simpan dosen
		@RequestMapping(value = "guru/save")
		public String doSave(Model model, @ModelAttribute GuruModel guru, HttpServletRequest request) {
			String proses = request.getParameter("proses");
			String result = "";
			// proses input ke database
			try {
				if (proses.equals("insert")) {
					this.service.insert(guru);
					result = "berhasil";
				} else if (proses.equals("update")) {
					this.service.update(guru);
					result = "ubah";
				} else if (proses.equals("delete")) {
					String id = request.getParameter("nip");
					guru = this.service.getById(id);
					this.service.delete(guru);
					result = "hapus";
				}
				
			} catch (Exception e) {
				//log.error(e.getMessage(), e);
				result = "gagal";
			}
			model.addAttribute("result", result);

			return "guru/save";
		}
		//List
		//menampilkan data guru di table guru
			@RequestMapping(value = "guru/list")
			public String doList(Model model) {
				// membuat object list dari class bahan model
				List<GuruModel> gurus = null;
				try {
					// object gurus diisi data dari method list
					gurus = this.service.list();
				} catch (Exception e) {
					//log.error(e.getMessage(), e);
				}

				// datanya kita kirim ke view,
				// kita buat variable list kemudian diisi dengan object dosens
				model.addAttribute("list", gurus);
				return "guru/list";
			}
			//Edit
			@RequestMapping(value = "guru/edit")
			public String doEdit(Model model, HttpServletRequest request) {
				// menangkap paremeter yang dikirim dari view
				String id = request.getParameter("nip");			
				// siapkan object Item model
				GuruModel guru = null;
				// request ke database
				try {
					guru = this.service.getById(id);
				} catch (Exception e) {
					//log.error(e.getMessage(), e);
				}				
				// datanya kita kirim ke view,
				// kita buat variable item kemudian diisi dengan object item
				model.addAttribute("guru", guru);
				return "guru/edit";
			}
			//Detail
			@RequestMapping(value = "guru/detail")
			public String doDetail(Model model, HttpServletRequest request) {
				// menangkap paremeter yang dikirim dari view
				String id = request.getParameter("nip");

				// siapkan object guru model
				GuruModel guru = null;
				// request ke database
				try {
					guru = this.service.getById(id);
				} catch (Exception e) {
					//log.error(e.getMessage(), e);
				}
				// datanya kita kirim ke view,
				// kita buat variable guru kemudian diisi dengan object item
				model.addAttribute("guru", guru);

				// memanggil item.jsp
				return "guru/detail";
			}
			
			//Delete
			@RequestMapping(value="guru/delete")
			public String delete(Model model, HttpServletRequest request){
				// menangkap paremeter yang dikirim dari view
				String id = request.getParameter("nip");
				
				// siapkan object guru model
				GuruModel guru = null;
				// request ke database
				try {
					guru = this.service.getById(id);
				} catch (Exception e) {
					//log.error(e.getMessage(), e);
				}
				model.addAttribute("guru", guru);
				return "guru/delete";
			}
}
