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
				<!-- Kelas 10 -->
				<option value="X-1"
					<c:if test="${siswa.kelas == 'X-1'}">
						<c:out value="selected"/>
						</c:if>>X-1</option>

				<option value="X-2"
					<c:if test="${siswa.kelas == 'X-2'}">
						<c:out value="selected"/>
						</c:if>>X-2</option>

				<option value="X-3"
					<c:if test="${siswa.kelas == 'X-3'}">
						<c:out value="selected"/>
						</c:if>>X-3</option>

				<option value="X-4"
					<c:if test="${siswa.kelas == 'X-4'}">
						<c:out value="selected"/>
						</c:if>>X-4</option>

				<option value="X-5"
					<c:if test="${siswa.kelas == 'X-5'}">
					<c:out value="selected"/>
					</c:if>>X-5</option>

				<!-- Kelas 11 -->
				<option value="XI-1"
					<c:if test="${siswa.kelas == 'XI-1'}">
						<c:out value="selected"/>
						</c:if>>XI-1</option>

				<option value="XI-2"
					<c:if test="${siswa.kelas == 'XI-2'}">
						<c:out value="selected"/>
						</c:if>>XI-2</option>

				<option value="XI-3"
					<c:if test="${siswa.kelas == 'XI-3'}">
						<c:out value="selected"/>
						</c:if>>XI-3</option>

				<option value="XI-4"
					<c:if test="${siswa.kelas == 'XI-4'}">
						<c:out value="selected"/>
						</c:if>>XI-4</option>

				<option value="XI-5"
					<c:if test="${siswa.kelas == 'XI-5'}">
					<c:out value="selected"/>
					</c:if>>XI-5</option>


				<!-- Kelas 12 -->
				<option value="XII-1"
					<c:if test="${siswa.kelas == 'XII-1'}">
						<c:out value="selected"/>
						</c:if>>XII-1</option>

				<option value="XII-2"
					<c:if test="${siswa.kelas == 'XII-2'}">
						<c:out value="selected"/>
						</c:if>>XII-2</option>

				<option value="XII-3"
					<c:if test="${siswa.kelas == 'XII-3'}">
						<c:out value="selected"/>
						</c:if>>XII-3</option>

				<option value="XII-4"
					<c:if test="${siswa.kelas == 'XII-4'}">
						<c:out value="selected"/>
						</c:if>>XII-4</option>

				<option value="XII-5"
					<c:if test="${siswa.kelas == 'XII-5'}">
					<c:out value="selected"/>
					</c:if>>XII-5</option>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label class="radio" for="Jurusan">Jurusan</label>
		<c:choose>
			<c:when test="${siswa.jurusan == 'IPA'}">
				<div class="radio-inline">
					<input type="radio" name="jurusan" id="IPA" value="IPA" checked><label
						for="IPA">IPA</label>
				</div>
				<div class="radio-inline">
					<input type="radio" name="jurusan" id="IPS" value="IPS"><label
						for="IPS">IPS</label>
				</div>
			</c:when>
			<c:otherwise>
				<div class="radio-inline">
					<input type="radio" name="jurusan" id="IPA" value="IPA"><label
						for="IPA">IPA</label>
				</div>
				<div class="radio-inline">
					<input type="radio" name="jurusan" id="IPS" value="IPS" checked><label
						for="IPS">IPS</label>
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
						value="Laki-laki" checked><label for="Pria">Laki-laki</label>
				</div>
				<div class="radio-inline">
					<input type="radio" name="jenisKelamin" id="Perempuan"
						value="Perempuan"><label for="Perempuan">Perempuan</label>
				</div>
			</c:when>
			<c:otherwise>
				<div class="radio-inline">
					<input type="radio" name="jenisKelamin" id="Laki-laki"
						value="Laki-laki"><label for="Laki-laki">Laki-laki</label>
				</div>
				<div class="radio-inline">
					<input type="radio" name="jenisKelamin" id="Perempuan"
						value="Perempuan" checked><label for="Perempuan">Perempuan</label>
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