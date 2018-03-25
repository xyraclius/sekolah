<form id="form-siswa" method="post">
	<div class="form-group">
		<label for="NISN">NISN </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-id-card"></i></span>
			<input id="nisn" type="text" class="form-control" name="nisn"
				value="${siswa.nisn}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Nama Lengkap Siswa">Nama Lengkap Siswa </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user-circle-o"></i></span>
			<input id="nmSiswa" type="text" class="form-control" name="nmSiswa"
				value="${siswa.nmSiswa}" readonly>
		</div>
	</div>


	<div class="form-group">
		<label for="Nama Kelas">Nama Kelas </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-flag"></i></span> <input
				id="kdKelas" type="text" class="form-control" name="kdKelas"
				value="${siswa.kelasModel.tingkat} ${siswa.kelasModel.nmKelas}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Jenis Kelamin">Jenis Kelamin </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-venus-mars"></i></span>
			<input id="jenisKelamin" type="text" class="form-control"
				name="jenisKelamin" value="${siswa.jenisKelamin}" readonly>
		</div>
	</div>


	<div class="form-group">
		<label for="Agama">Agama </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-balance-scale"></i></span>
			<input id="agama" type="text" class="form-control" name="agama"
				value="${siswa.agama}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Tempat Lahir">Tempat Lahir </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map"></i></span> <input
				id="tempatLahir" type="text" class="form-control" name="tempatLahir"
				value="${siswa.tempatLahir}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Tanggal Lahir">Tanggal Lahir </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-birthday-cake"></i></span>
			<input id="tanggalLahir" type="text" class="form-control"
				name="tanggalLahir" value="${siswa.tanggalLahir}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Alamat">Alamat </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
			<input id="alamat" type="text" class="form-control" name="alamat"
				value="${siswa.alamat}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Nama Orang Tua/Wali Murid">Nama Orang Tua/Wali
			Murid </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user"></i></span> <input
				id="nmOrangTua" type="text" class="form-control" name="nmOrangTua"
				value="${siswa.nmOrangTua}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Pekerjaan Orang Tua/Wali Murid">Pekerjaan Orang
			Tua/Wali Murid </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-briefcase"></i></span>
			<input id="pekerjaanOrangTua" type="text" class="form-control"
				name="pekerjaanOrangTua" value="${siswa.pekerjaanOrangTua}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Telp Orang Tua/Wali Murid">Telp Orang Tua/Wali
			Murid </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-whatsapp"></i></span>
			<input id="telpOrangTua" type="text" class="form-control"
				name="telpOrangTua" value="${siswa.telpOrangTua}" readonly>
		</div>
	</div>

	<div class="modal-footer">
		<button type="button" class="btn btn-danger pull-left"
			data-dismiss="modal" title="Tutup Form">
			<i class="fa fa-times"></i> Tutup
		</button>
	</div>
</form>
