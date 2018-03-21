<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<form id="form-siswa" method="post">
	<input type="hidden" id="proses" name="proses" class="form-control"
		value="insert">

	<div class="form-group">
		<label for="NISN">NISN </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-id-card"></i></span>
			<input id="nisn" type="text" class="form-control" name="nisn"
				placeholder="Nomor Induk Siswa Nasional"
				onkeypress="return onlyNumeric(event)">
		</div>
	</div>

	<div class="form-group">
		<label for="Nama Lengkap Siswa">Nama Lengkap Siswa </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user-circle-o"></i></span>
			<input id="nmSiswa" type="text" class="form-control" name="nmSiswa"
				placeholder="Nama Lengkap Siswa"
				onkeypress="return onlyAlphabets(event)">
		</div>
	</div>


	<div class="form-group">
		<label for="Nama Panggilan Siswa">Nama Panggilan Siswa </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user-circle"></i></span>
			<input id="nmPanggilanSiswa" type="text" class="form-control"
				name="nmPanggilanSiswa" placeholder="Nama Panggilan Siswa"
				onkeypress="return onlyAlphabets(event)">
		</div>
	</div>

	<div class="form-group">
		<label for="Kelas">Kelas </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-flag"></i></span> <select
				name="kelas" id="kelas" class="form-control">
				<option value="">Pilih Kelas</option>
				<option value="X-1">X-1</option>
				<option value="X-2">X-2</option>
				<option value="X-3">X-3</option>
				<option value="X-4">X-4</option>
				<option value="X-5">X-5</option>

				<option value="XI-1">XI-1</option>
				<option value="XI-2">XI-2</option>
				<option value="XI-3">XI-3</option>
				<option value="XI-4">XI-4</option>
				<option value="XI-5">XI-5</option>

				<option value="XII-1">XII-1</option>
				<option value="XII-2">XII-2</option>
				<option value="XII-3">XII-3</option>
				<option value="XII-4">XII-4</option>
				<option value="XII-5">XII-5</option>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label for="Jurusan">Jurusan </label>
		<div class="input-group">
			<label class="radio-inline"> <input type="radio"
				name="jurusan" value="IPA">IPA
			</label> <label class="radio-inline" style="margin-left: 50px;"> <input
				type="radio" name="jurusan" value="IPS">IPS
			</label>
		</div>
	</div>

	<div class="form-group">
		<label for="Jenis Kelamin">Jenis Kelamin </label>
		<div class="input-group">
			<label class="radio-inline"> <input type="radio"
				name="jenisKelamin" value="Laki-laki">Laki-laki
			</label> <label class="radio-inline" style="margin-left: 20px;"> <input
				type="radio" name="jenisKelamin" value="Perempuan">Perempuan
			</label>
		</div>
	</div>

	<div class="form-group">
		<label for="Agama">Agama </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-balance-scale"></i></span>
			<select name="kelas" id="kelas" class="form-control">
				<option value="">Pilih Agama</option>
				<option value="Budha">Budha</option>
				<option value="Hindu">Hindu</option>
				<option value="Islam">Islam</option>
				<option value="Katolik">Katolik</option>
				<option value="Protestan">Protestan</option>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label for="Tempat Lahir">Tempat Lahir </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map"></i></span> <input
				id="tempatLahir" type="text" class="form-control" name="tempatLahir"
				placeholder="Tempat Lahir" onkeypress="return onlyAlphabets(event)">
		</div>
	</div>


	<div class="form-group">
		<label for="Tanggal Lahir">Tanggal Lahir</label>
		<div class="input-group date" data-date-format="dd-MM-yyyy">
			<span class="input-group-addon"><i
				class="fa fa-birthday-cake"></i></span> <input
				class="form-control" type="text" name="tgl_regis"
				readonly="readonly">
		</div>
	</div>

	<div class="form-group">
		<label for="Alamat">Alamat </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
			<input id="alamat" type="text" class="form-control" name="alamat"
				placeholder="Alamat">
		</div>
	</div>

	<div class="form-group">
		<label for="Asal Sekolah">Asal Sekolah </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-building"></i></span>
			<input id="asalSekolah" type="text" class="form-control"
				name="asalSekolah" placeholder="Asal Sekolah">
		</div>
	</div>

	<div class="form-group">
		<label for="Nama Orang Tua">Nama Orang Tua </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user"></i></span> <input
				id="nmOrangTua" type="text" class="form-control" name="nmOrangTua"
				placeholder="Nama Orang Tua">
		</div>
	</div>


	<div class="modal-footer">
		<button type="button" class="btn btn-danger pull-left"
			data-dismiss="modal" title="Tutup Form">Tutup</button>
		<button type="submit" class="btn btn-success" id="btn_save"
			title="Simpan Data">Simpan</button>
	</div>
</form>
