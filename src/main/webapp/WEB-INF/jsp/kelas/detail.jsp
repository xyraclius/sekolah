<form id="form-kelas" method="post">
	<div class="form-group">
		<label for="Kode Kelas">Kode Kelas </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-barcode"></i></span>
			<input id="kdKelas" type="text" class="form-control" name="kdKelas"
				value="${kelas.kdKelas}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Nama Kelas">Nama Kelas </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-flag"></i></span> <input
				id="nmKelas" type="text" class="form-control" name="nmKelas"
				value="${kelas.nmKelas}" readonly>
		</div>
	</div>


	<div class="form-group">
		<label for="Tingkat">Tingkat </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-arrows-alt"></i></span>
			<input id="tingkat" type="text" class="form-control" name="tingkat"
				value="${kelas.tingkat}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Guru/Wali Kelas">Guru/Wali Kelas </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user"></i></span> <input
				id="nmGuru" type="text" class="form-control" name="nmGuru"
				value="${kelas.guruModel.nmGuru},&#32;${kelas.guruModel.gelar}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Ruang">Ruang </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-building"></i></span>
			<input id="ruang" type="text" class="form-control" name="ruang"
				value="${kelas.ruang}" readonly>
		</div>
	</div>

	<div class="modal-footer">
		<button type="button" class="btn btn-danger pull-left"
			data-dismiss="modal" title="Tutup Form">
			<i class="fa fa-times"></i> Tutup
		</button>
	</div>
</form>
