package com.sekolah.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "MST_KELAS")
public class KelasModel {

	private String kdKelas;
	private String nmKelas;
	private String tingkat;
	private String ruang;
	private String nip;

	private GuruModel guruModel;

	@Id
	@Column(name = "KODE_KELAS")
	public String getKdKelas() {
		return kdKelas;
	}

	public void setKdKelas(String kdKelas) {
		this.kdKelas = kdKelas;
	}

	@Column(name = "NAMA_KELAS")
	public String getNmKelas() {
		return nmKelas;
	}

	public void setNmKelas(String nmKelas) {
		this.nmKelas = nmKelas;
	}

	@Column(name = "TINGKAT")
	public String getTingkat() {
		return tingkat;
	}

	public void setTingkat(String tingkat) {
		this.tingkat = tingkat;
	}

	@Column(name = "RUANG")
	public String getRuang() {
		return ruang;
	}

	public void setRuang(String ruang) {
		this.ruang = ruang;
	}

	@Column(name = "NIP")
	public String getNip() {
		return nip;
	}

	public void setNip(String nip) {
		this.nip = nip;
	}

	@ManyToOne
	@JoinColumn(name = "NIP", nullable = false, updatable = false, insertable = false)
	public GuruModel getGuruModel() {
		return guruModel;
	}

	public void setGuruModel(GuruModel guruModel) {
		this.guruModel = guruModel;
	}

}