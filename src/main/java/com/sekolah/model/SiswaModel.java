package com.sekolah.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MST_SISWA")
public class SiswaModel {

	@Id
	@Column(name = "NISN")
	private String nisn;

	@Column(name = "NAMA_SISWA")
	private String nmSiswa;

	@Column(name = "NAMA_PANGGILAN_SISWA")
	private String nmPanggilanSiswa;

	@Column(name = "TINGKAT")
	private String tingkat;

	@Column(name = "KELAS")
	private String kelas;

	@Column(name = "JENIS_KELAMIN")
	private String jenisKelamin;

	@Column(name = "ALAMAT")
	private String alamat;

	@Column(name = "TEMPAT_LAHIR")
	private String tempatLahir;

	@Column(name = "TANGGAL_LAHIR")
	private String tanggalLahir;

	@Column(name = "ASAL_SEKOLAH")
	private String asalSekolah;

	@Column(name = "AGAMA")
	private String agama;

	@Column(name = "NAMA_ORANG_TUA")
	private String nmOrangTua;

	public String getNisn() {
		return nisn;
	}

	public void setNisn(String nisn) {
		this.nisn = nisn;
	}

	public String getNmSiswa() {
		return nmSiswa;
	}

	public void setNmSiswa(String nmSiswa) {
		this.nmSiswa = nmSiswa;
	}

	public String getNmPanggilanSiswa() {
		return nmPanggilanSiswa;
	}

	public void setNmPanggilanSiswa(String nmPanggilanSiswa) {
		this.nmPanggilanSiswa = nmPanggilanSiswa;
	}

	public String getTingkat() {
		return tingkat;
	}

	public void setTingkat(String tingkat) {
		this.tingkat = tingkat;
	}

	public String getKelas() {
		return kelas;
	}

	public void setKelas(String kelas) {
		this.kelas = kelas;
	}

	public String getJenisKelamin() {
		return jenisKelamin;
	}

	public void setJenisKelamin(String jenisKelamin) {
		this.jenisKelamin = jenisKelamin;
	}

	public String getAlamat() {
		return alamat;
	}

	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}

	public String getTempatLahir() {
		return tempatLahir;
	}

	public void setTempatLahir(String tempatLahir) {
		this.tempatLahir = tempatLahir;
	}

	public String getTanggalLahir() {
		return tanggalLahir;
	}

	public void setTanggalLahir(String tanggalLahir) {
		this.tanggalLahir = tanggalLahir;
	}

	public String getAsalSekolah() {
		return asalSekolah;
	}

	public void setAsalSekolah(String asalSekolah) {
		this.asalSekolah = asalSekolah;
	}

	public String getAgama() {
		return agama;
	}

	public void setAgama(String agama) {
		this.agama = agama;
	}

	public String getNmOrangTua() {
		return nmOrangTua;
	}

	public void setNmOrangTua(String nmOrangTua) {
		this.nmOrangTua = nmOrangTua;
	}

}
