<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<form id="form-kelas" method="post">
	<input type="hidden" id="proses" name="proses" class="form-control"
		value="insert">

	<div class="form-group">
		<label for="Kode Kelas">Kode Kelas </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-barcode"></i></span>
			<input id="kdKelas" type="text" class="form-control" name="kdKelas"
				placeholder="Contoh Kode Kelas: KLS001">
		</div>
	</div>

	<div class="form-group">
		<label for="Nama Kelas">Nama Kelas </label>
		<div class="input-group">
			<span class="input-group-addon"> <i class="fa fa-flag"></i>
			</span> <input id="nmKelas" type="text" class="form-control" name="nmKelas"
				placeholder="Nama Kelas">
		</div>
	</div>


	<div class="form-group">
		<label for="Tingkat">Tingkat </label>
		<div class="input-group">
			<label class="radio-inline"> <input type="radio"
				name="tingkat" value="X">X
			</label> <label class="radio-inline" style="margin-left: 60px;"> <input
				type="radio" name="tingkat" value="XI" required>XI
			</label> <label class="radio-inline" style="margin-left: 60px;"> <input
				type="radio" name="tingkat" value="XII">XII
			</label>
		</div>
	</div>


	<div class="form-group">
		<label for="Wali Kelas">Wali Kelas </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user"></i></span> <select
				name="nip" id="nip" class="form-control" required>
				<option value="">Pilih Wali Kelas</option>
				<c:forEach var="guru" items="${guruList}">
					<option value="${guru.nip}">${guru.nmGuru},&#32;${guru.gelar}</option>
				</c:forEach>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label for="Ruang">Ruang </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-building"></i></span>
			<select name="ruang" id="ruang" class="form-control" required>
				<option value="">Pilih Ruang</option>
				<option value="A">A</option>
				<option value="B">B</option>
				<option value="C">C</option>
				<option value="D">D</option>
				<option value="E">E</option>
				<option value="F">F</option>
				<option value="G">G</option>
				<option value="H">H</option>
				<option value="I">I</option>
				<option value="J">J</option>
				<option value="K">K</option>
				<option value="L">L</option>
			</select>
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
