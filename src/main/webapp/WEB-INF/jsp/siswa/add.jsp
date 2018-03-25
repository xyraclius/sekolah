<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<form id="form-siswa" method="post">
	<input type="hidden" id="proses" name="proses" class="form-control"
		value="insert">

	<div class="form-group">
		<label for="NISN">NISN </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-id-card"></i></span>
			<input id="nisn" type="number" class="form-control" name="nisn"
				placeholder="Nomor Induk Siswa Nasional">
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
		<label for="Kelas">Kelas </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-flag"></i></span> <select
				name="kdKelas" id="kdKelas" class="form-control" required>
				<option value="">Pilih Kelas</option>
				<c:forEach var="kelas" items="${kelasList}">
					<option value="${kelas.kdKelas}">${kelas.tingkat}
						${kelas.nmKelas}</option>
				</c:forEach>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label for="Jenis Kelamin">Jenis Kelamin </label>
		<div class="input-group">
			<label class="radio-inline"> <input type="radio"
				name="jenisKelamin" value="Laki-laki" required>Laki-laki
			</label> <label class="radio-inline" style="margin-left: 18px;"> <input
				type="radio" name="jenisKelamin" value="Perempuan">Perempuan
			</label>
		</div>
	</div>

	<div class="form-group">
		<label for="Agama">Agama </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-balance-scale"></i></span>
			<select name="agama" id="agama" class="form-control" required>
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
				placeholder="Tempat Lahir" onkeypress="return onlyAlphabets(event)"
				required>
		</div>
	</div>


	<div class="form-group">
		<label for="Tanggal Lahir">Tanggal Lahir</label>
		<div class="input-group date" data-date-format="dd-MM-yyyy">
			<span class="input-group-addon"><i class="fa fa-birthday-cake"></i></span>
			<input class="form-control" type="text" name="tanggalLahir"
				readonly="readonly" required>
		</div>
	</div>

	<div class="form-group">
		<label for="Alamat">Alamat </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
			<input id="alamat" type="text" class="form-control" name="alamat"
				placeholder="Alamat" required>
		</div>
	</div>

	<div class="form-group">
		<label for="Nama Orang Tua">Nama Orang Tua </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user"></i></span> <input
				id="nmOrangTua" type="text" class="form-control" name="nmOrangTua"
				placeholder="Nama Orang Tua" required>
		</div>
	</div>

	<div class="form-group">
		<label for="Pekerjaan Orang Tua">Pekerjaan Orang Tua </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-briefcase"></i></span>
			<input id="pekerjaanOrangTua" type="text" class="form-control"
				name="pekerjaanOrangTua" placeholder="Pekerjaan Orang Tua"
				onkeypress="return onlyAlphabets(event)">
		</div>
	</div>

	<div class="form-group">
		<label for="Telp Orang Tua/Wali Murid">Telp Orang Tua/Wali
			Murid </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-whatsapp"></i></span>
			<input id="telpOrangTua" type="number" class="form-control"
				name="telpOrangTua" placeholder="Telp Orang Tua/Wali Murid" required>
		</div>
	</div>

	<div class="modal-footer">
		<button type="button" class="btn btn-danger pull-left"
			data-dismiss="modal" title="Tutup Form">
			<i class="fa fa-times"></i> Tutup
		</button>
		<button type="submit" class="btn btn-success" id="btn_save"
			title="Simpan Data">
			<i class="fa fa-floppy-o"></i> Simpan
		</button>
	</div>
</form>
<script>
	$(".input-group.date").datepicker({
		autoclose : true,
		todayHighlight : true
	});
</script>

