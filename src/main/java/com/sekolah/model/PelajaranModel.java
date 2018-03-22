package com.sekolah.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MST_PELAJARAN")
public class PelajaranModel {
	private String kdPelajaran;
	private String nmPelajaran;
	private int jamAjar;
	private String tingkat;
	private String keterangan;
	
	@Id
	@Column(name = "KODE_PELAJARAN")
	public String getKdPelajaran() {
		return kdPelajaran;
	}
	public void setKdPelajaran(String kdPelajaran) {
		this.kdPelajaran = kdPelajaran;
	}
	
	@Column(name="NAMA_PELAJARAN")
	public String getNmPelajaran() {
		return nmPelajaran;
	}
	public void setNmPelajaran(String nmPelajaran) {
		this.nmPelajaran = nmPelajaran;
	}
	
	@Column(name="JAM_AJAR")
	public int getJamAjar() {
		return jamAjar;
	}
	public void setJamAjar(int jamAjar) {
		this.jamAjar = jamAjar;
	}
	@Column(name="TINGKAT")
	public String getTingkat() {
		return tingkat;
	}
	public void setTingkat(String tingkat) {
		this.tingkat = tingkat;
	}
	
	@Column(name="KETERANGAN")
	public String getKeterangan() {
		return keterangan;
	}
	public void setKeterangan(String keterangan) {
		this.keterangan = keterangan;
	}

}
