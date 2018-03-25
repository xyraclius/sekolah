package com.sekolah.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TRX_SPP")
public class SppModel {

	private String noSpp;
	private String tglSpp;
	private String bulan;
	private String thnAjar;
	private Integer bayarSpp;
	private String tipeBayar;
	private Integer jumlahUang;
	private Integer kembalianSpp;
	private String nisn;

	private SiswaModel siswaModel;

	@Id
	@Column(name = "NO_SPP")
	public String getNoSpp() {
		return noSpp;
	}

	public void setNoSpp(String noSpp) {
		this.noSpp = noSpp;
	}

	@Column(name = "TANGGAL_BAYAR")
	public String getTglSpp() {
		return tglSpp;
	}

	public void setTglSpp(String tglSpp) {
		this.tglSpp = tglSpp;
	}

	@Column(name = "BULAN")
	public String getBulan() {
		return bulan;
	}

	public void setBulan(String bulan) {
		this.bulan = bulan;
	}

	@Column(name = "TAHUN_AJAR")
	public String getThnAjar() {
		return thnAjar;
	}

	public void setThnAjar(String thnAjar) {
		this.thnAjar = thnAjar;
	}

	@Column(name = "BAYAR_SPP")
	public Integer getBayarSpp() {
		return bayarSpp;
	}

	public void setBayarSpp(Integer bayarSpp) {
		this.bayarSpp = bayarSpp;
	}

	@Column(name = "TIPE_BAYAR")
	public String getTipeBayar() {
		return tipeBayar;
	}

	public void setTipeBayar(String tipeBayar) {
		this.tipeBayar = tipeBayar;
	}

	@Column(name = "JUMLAH_UANG")
	public Integer getJumlahUang() {
		return jumlahUang;
	}

	public void setJumlahUang(Integer jumlahUang) {
		this.jumlahUang = jumlahUang;
	}

	@Column(name = "KEMBALIAN")
	public Integer getKembalianSpp() {
		return kembalianSpp;
	}

	public void setKembalianSpp(Integer kembalianSpp) {
		this.kembalianSpp = kembalianSpp;
	}

	@Column(name = "NISN")
	public String getNisn() {
		return nisn;
	}

	public void setNisn(String nisn) {
		this.nisn = nisn;
	}

	@ManyToOne
	@JoinColumn(name = "NISN", nullable = false, updatable = false, insertable = false)
	public SiswaModel getSiswaModel() {
		return siswaModel;
	}

	public void setSiswaModel(SiswaModel siswaModel) {
		this.siswaModel = siswaModel;
	}

}
