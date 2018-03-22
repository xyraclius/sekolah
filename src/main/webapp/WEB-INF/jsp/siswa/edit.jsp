<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<form id="form-siswa" method="post">
	<input type="hidden" id="proses" name="proses" class="form-control"
		value="update">

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
				value="${siswa.nmSiswa}">
		</div>
	</div>


	<div class="form-group">
		<label for="Nama Panggilan Siswa">Nama Panggilan Siswa </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user-circle"></i></span>
			<input id="nmPanggilanSiswa" type="text" class="form-control"
				name="nmPanggilanSiswa" value="${siswa.nmPanggilanSiswa}">
		</div>
	</div>

	<div class="form-group">
		<label for="Kelas">Kelas </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-flag"></i></span> <select
				name="kelas" id="kelas" class="form-control">
				<option value="IPA 1"
					<c:if test="${siswa.kelas == 'IPA 1'}">
						<c:out value="selected"/>
						</c:if>>IPA
					1</option>

				<option value="IPA 2"
					<c:if test="${siswa.kelas == 'IPA 2'}">
						<c:out value="selected"/>
						</c:if>>IPA
					2</option>

				<option value="IPS 1"
					<c:if test="${siswa.kelas == 'IPS 1'}">
						<c:out value="selected"/>
						</c:if>>IPS
					1</option>

				<option value="IPS 2"
					<c:if test="${siswa.kelas == 'IPS 2'}">
						<c:out value="selected"/>
						</c:if>>IPS
					2</option>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label class="radio" for=Tingkat>Tingkat</label>
		<c:choose>
			<c:when test="${siswa.tingkat == 'X'}">
				<div class="radio-inline">
					<input type="radio" name="tingkat" id="X" value="X" checked>X
				</div>
				<div class="radio-inline" style="margin-left: 60px;">
					<input type="radio" name="tingkat" id="XI" value="XI">XI
				</div>
				<div class="radio-inline" style="margin-left: 60px;">
					<input type="radio" name="tingkat" id="XII" value="XII">XII
				</div>
			</c:when>

			<c:when test="${siswa.tingkat == 'XI'}">
				<div class="radio-inline">
					<input type="radio" name="tingkat" id="X" value="X">X
				</div>
				<div class="radio-inline" style="margin-left: 60px;">
					<input type="radio" name="tingkat" id="XI" value="XI" checked>XI
				</div>
				<div class="radio-inline" style="margin-left: 60px;">
					<input type="radio" name="tingkat" id="XII" value="XII">XII
				</div>
			</c:when>

			<c:otherwise>
				<div class="radio-inline">
					<input type="radio" name="tingkat" id="X" value="X">X
				</div>
				<div class="radio-inline" style="margin-left: 60px;">
					<input type="radio" name="tingkat" id="XI" value="XI">XI
				</div>
				<div class="radio-inline" style="margin-left: 60px;">
					<input type="radio" name="tingkat" id="XII" value="XII" checked>XII
				</div>
			</c:otherwise>
		</c:choose>
	</div>


	<div class="form-group">
		<label class="radio" for="Jenis Kelamin">Jenis Kelamin</label>
		<c:choose>
			<c:when test="${siswa.jenisKelamin == 'Laki-laki'}">
				<div class="radio-inline">
					<input type="radio" name="jenisKelamin" id="Laki-laki"
						value="Laki-laki" checked>Laki-laki
				</div>
				<div class="radio-inline" style="margin-left: 18px;">
					<input type="radio" name="jenisKelamin" id="Perempuan"
						value="Perempuan">Perempuan
				</div>
			</c:when>
			<c:otherwise>
				<div class="radio-inline">
					<input type="radio" name="jenisKelamin" id="Laki-laki"
						value="Laki-laki">Laki-laki
				</div>
				<div class="radio-inline">
					<input type="radio" name="jenisKelamin" id="Perempuan"
						value="Perempuan" checked>Perempuan
				</div>
			</c:otherwise>
		</c:choose>
	</div>


	<div class="form-group">
		<label for="Agama">Agama </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-balance-scale"></i></span>
			<input id="agama" type="text" class="form-control" name="agama"
				value="${siswa.agama}">
		</div>
	</div>

	<div class="form-group">
		<label for="Tempat Lahir">Tempat Lahir </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map"></i></span> <input
				id="tempatLahir" type="text" class="form-control" name="tempatLahir"
				value="${siswa.tempatLahir}">
		</div>
	</div>

	<div class="form-group">
		<label for="Tanggal Lahir">Tanggal Lahir </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-birthday-cake"></i></span>
			<input id="tanggalLahir" type="text" class="form-control"
				name="tanggalLahir" value="${siswa.tanggalLahir}">
		</div>
	</div>

	<div class="form-group">
		<label for="Alamat">Alamat </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
			<input id="alamat" type="text" class="form-control" name="alamat"
				value="${siswa.alamat}">
		</div>
	</div>

	<div class="form-group">
		<label for="Asal Sekolah">Asal Sekolah </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-building"></i></span>
			<input id="asalSekolah" type="text" class="form-control"
				name="asalSekolah" value="${siswa.asalSekolah}">
		</div>
	</div>

	<div class="form-group">
		<label for="Nama Orang Tua">Nama Orang Tua </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user"></i></span> <input
				id="nmOrangTua" type="text" class="form-control" name="nmOrangTua"
				value="${siswa.nmOrangTua}">
		</div>
	</div>

	<div class="modal-footer">
		<button type="button" class="btn btn-danger pull-left"
			data-dismiss="modal" title="Tutup Form">Tutup</button>
		<button type="submit" class="btn btn-success" id="btn_update"
			title="Perbarui Data">Perbarui</button>
	</div>
</form>

<script>
	$(".input-group.date").datepicker({
		autoclose : true,
		todayHighlight : true
	});
</script>