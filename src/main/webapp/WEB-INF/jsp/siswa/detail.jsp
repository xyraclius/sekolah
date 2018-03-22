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
		<label for="Nama Siswa">Nama Siswa </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user-circle-o"></i></span>
			<input id="nmSiswa" type="text" class="form-control" name="nmSiswa"
				value="${siswa.nmSiswa}" readonly>
		</div>
	</div>


	<div class="form-group">
		<label for="Nama Panggilan Siswa">Nama Panggilan Siswa </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user-circle"></i></span>
			<input id="nmPanggilanSiswa" type="text" class="form-control"
				name="nmPanggilanSiswa" value="${siswa.nmPanggilanSiswa}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Tingkat">Tingkat </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-arrows-alt"></i></span>
			<input id="tingkat" type="text" class="form-control" name="tingkat"
				value="${siswa.tingkat}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Kelas">Kelas </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-flag"></i></span> <input
				id="Kelas" type="text" class="form-control" name="Kelas"
				value="${siswa.kelas}" readonly>
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
		<label for="Asal Sekolah">Asal Sekolah </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-building"></i></span>
			<input id="asalSekolah" type="text" class="form-control"
				name="asalSekolah" value="${siswa.asalSekolah}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Nama Orang Tua">Nama Orang Tua </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user"></i></span> <input
				id="nmOrangTua" type="text" class="form-control" name="nmOrangTua"
				value="${siswa.nmOrangTua}" readonly>
		</div>
	</div>
</form>
