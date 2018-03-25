package com.sekolah.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "MST_SISWA")
public class SiswaModel {

	private String nisn;
	private String nmSiswa;
	private String jenisKelamin;
	private String alamat;
	private String tempatLahir;
	private String tanggalLahir;
	private String agama;
	private String nmOrangTua;
	private String telpOrangTua;
	private String pekerjaanOrangTua;
	private String kdKelas;

	private KelasModel kelasModel;

	@Id
	@Column(name = "NISN")
	public String getNisn() {
		return nisn;
	}

	public void setNisn(String nisn) {
		this.nisn = nisn;
	}

	@Column(name = "NAMA_SISWA")
	public String getNmSiswa() {
		return nmSiswa;
	}

	public void setNmSiswa(String nmSiswa) {
		this.nmSiswa = nmSiswa;
	}

	@Column(name = "JENIS_KELAMIN")
	public String getJenisKelamin() {
		return jenisKelamin;
	}

	public void setJenisKelamin(String jenisKelamin) {
		this.jenisKelamin = jenisKelamin;
	}

	@Column(name = "ALAMAT")
	public String getAlamat() {
		return alamat;
	}

	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}

	@Column(name = "TEMPAT_LAHIR")
	public String getTempatLahir() {
		return tempatLahir;
	}

	public void setTempatLahir(String tempatLahir) {
		this.tempatLahir = tempatLahir;
	}

	@Column(name = "TANGGAL_LAHIR")
	public String getTanggalLahir() {
		return tanggalLahir;
	}

	public void setTanggalLahir(String tanggalLahir) {
		this.tanggalLahir = tanggalLahir;
	}

	@Column(name = "AGAMA")
	public String getAgama() {
		return agama;
	}

	public void setAgama(String agama) {
		this.agama = agama;
	}

	@Column(name = "NAMA_ORANG_TUA")
	public String getNmOrangTua() {
		return nmOrangTua;
	}

	public void setNmOrangTua(String nmOrangTua) {
		this.nmOrangTua = nmOrangTua;
	}

	@Column(name = "TELP_ORANG_TUA")
	public String getTelpOrangTua() {
		return telpOrangTua;
	}

	public void setTelpOrangTua(String telpOrangTua) {
		this.telpOrangTua = telpOrangTua;
	}

	@Column(name = "PEKERJAAN_ORANG_TUA")
	public String getPekerjaanOrangTua() {
		return pekerjaanOrangTua;
	}

	public void setPekerjaanOrangTua(String pekerjaanOrangTua) {
		this.pekerjaanOrangTua = pekerjaanOrangTua;
	}

	@Column(name = "KODE_KELAS")
	public String getKdKelas() {
		return kdKelas;
	}

	public void setKdKelas(String kdKelas) {
		this.kdKelas = kdKelas;
	}

	@ManyToOne
	@JoinColumn(name = "KODE_KELAS", nullable = false, updatable = false, insertable = false)
	public KelasModel getKelasModel() {
		return kelasModel;
	}

	public void setKelasModel(KelasModel kelasModel) {
		this.kelasModel = kelasModel;
	}
}