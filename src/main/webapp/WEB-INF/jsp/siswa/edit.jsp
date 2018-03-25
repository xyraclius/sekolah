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
		<label for="Nama Lengkap Siswa">Nama Lengkap Siswa </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user-circle-o"></i></span>
			<input id="nmSiswa" type="text" class="form-control" name="nmSiswa"
				value="${siswa.nmSiswa}">
		</div>
	</div>


	<div class="form-group">
		<label for="Kelas">Kelas </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-flag"></i></span> <select
				name="kdKelas" id="kdKelas" class="form-control" required>
				<c:forEach var="kelas" items="${kelasList}">
					<option value="${kelas.kdKelas}">${kelas.tingkat}
						${kelas.nmKelas}</option>
				</c:forEach>
			</select>
		</div>
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
			<select name="agama" id="agama" class="form-control" required>
				<option value="Budha"
					<c:if test="${siswa.agama == 'Budha'}">
								<c:out value="selected"/>
						</c:if>>Budha</option>
				<option value="Hindu"
					<c:if test="${siswa.agama == 'Hindu'}">
								<c:out value="selected"/>
						</c:if>>Hindu</option>
				<option value="Islam"
					<c:if test="${siswa.agama == 'Islam'}">
								<c:out value="selected"/>
						</c:if>>Islam</option>
				<option value="Katolik"
					<c:if test="${siswa.agama == 'Katolik'}">
								<c:out value="selected"/>
						</c:if>>Katolik</option>
				<option value="Protestan"
					<c:if test="${siswa.agama == 'Protestan'}">
								<c:out value="selected"/>
						</c:if>>Protestan</option>
			</select>
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
		<label for="Tanggal Lahir">Tanggal Lahir</label>
		<div class="input-group date" data-date-format="dd-MM-yyyy">
			<span class="input-group-addon"><i class="fa fa-birthday-cake"></i></span>
			<input class="form-control" type="text" name="tanggalLahir"
				value="${siswa.tanggalLahir}" readonly required>
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
		<label for="Nama Orang Tua">Nama Orang Tua </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user"></i></span> <input
				id="nmOrangTua" type="text" class="form-control" name="nmOrangTua"
				value="${siswa.nmOrangTua}">
		</div>
	</div>

	<div class="form-group">
		<label for="Pekerjaan Orang Tua">Pekerjaan Orang Tua</label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-briefcase"></i></span>
			<input id="pekerjaanOrangTua" type="text" class="form-control"
				name="pekerjaanOrangTua" value="${siswa.pekerjaanOrangTua}">
		</div>
	</div>

	<div class="form-group">
		<label for="Telp Orang Tua/Wali Murid">Telp Orang Tua/Wali
			Murid </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-whatsapp"></i></span>
			<input id="telpOrangTua" type="text" class="form-control"
				name="telpOrangTua" value="${siswa.telpOrangTua}">
		</div>
	</div>

	<div class="modal-footer">
		<button type="button" class="btn btn-danger pull-left"
			data-dismiss="modal" title="Tutup Form">
			<i class="fa fa-times"></i> Tutup
		</button>

		<button type="submit" class="btn btn-success" id="btn_update"
			title="Perbarui Data">
			<i class="fa fa-recycle"></i> Perbarui
		</button>
	</div>

</form>

<script>
	$(".input-group.date").datepicker({
		autoclose : true,
		todayHighlight : true
	});
</script>