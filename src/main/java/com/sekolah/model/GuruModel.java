package com.sekolah.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="MST_GURU") // tidak terkait model lain //
public class GuruModel {
	private String nip;
	private String nmGuru;
	private String noTelp;
	private String jk;
	private String gelar;
	private String alamat;
	
	@Id
	@Column(name="NIP")
	public String getNip() {
		return nip;
	}
	public void setNip(String nip) {
		this.nip = nip;
	}
	
	@Column(name="NAMA_GURU")
	public String getNmGuru() {
		return nmGuru;
	}
	public void setNmGuru(String nmGuru) {
		this.nmGuru = nmGuru;
	}
	
	@Column(name="NOTELP")
	public String getNoTelp() {
		return noTelp;
	}
	public void setNoTelp(String noTelp) {
		this.noTelp = noTelp;
	}
	
	@Column(name="Jenis_Kelamin")
	public String getJk() {
		return jk;
	}
	public void setJk(String jk) {
		this.jk = jk;
	}
	
	@Column(name="Gelar")
	public String getGelar() {
		return gelar;
	}
	public void setGelar(String gelar) {
		this.gelar = gelar;
	}
	
	@Column(name="Alamat")
	public String getAlamat() {
		return alamat;
	}
	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}
	
	
}
