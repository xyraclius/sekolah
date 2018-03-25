<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<form id="form-spp" method="post">
	<input type="hidden" id="proses" name="proses" class="form-control"
		value="insert">

	<div class="form-group">
		<label for="No SPP">No SPP </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-id-card"></i></span>
			<input id="noSpp" type="text" class="form-control" name="noSpp"
				placeholder="Contoh: SPP001">
		</div>
	</div>

	<div class="form-group">
		<label for="Siswa">Siswa </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user"></i></span> <select
				name="nisn" id="nisn" class="form-control" required>
				<option value="">Pilih Siswa</option>
				<c:forEach var="siswa" items="${siswaList}">
					<option value="${siswa.nisn}">${siswa.nmSiswa}</option>
				</c:forEach>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label for="Pembayaran Untuk Bulan">Pembayaran Untuk Bulan </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
			<select name="bulan" id="bulan" class="form-control" required>
				<option value="">Pilih Bulan</option>
				<option value="Januari">Januari</option>
				<option value="Februari">Februari</option>
				<option value="Maret">Maret</option>
				<option value="April">April</option>
				<option value="Mei">Mei</option>
				<option value="Juni">Juni</option>
				<option value="Juli">Juli</option>
				<option value="Agustus">Agustus</option>
				<option value="September">September</option>
				<option value="Oktober">Oktober</option>
				<option value="November">November</option>
				<option value="Desember">Desember</option>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label for="Tahun Ajar">Tahun Ajar</label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-calendar-check-o"></i></span> <input
				id="thnAjar" type="number" class="form-control" name="thnAjar"
				placeholder="Contoh: 2018">
		</div>
	</div>

	<div class="form-group">
		<label for="Tipe Pembayaran">Tipe Pembayaran </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
			<select name="tipeBayar" id="tipeBayar" class="form-control" required>
				<option value="">Pilih Tipe Pembayaran</option>
				<option value="Transfer">Transfer</option>
				<option value="Tunai">Tunai</option>
			</select>
		</div>
	</div>


	<div class="form-group">
		<label for="Jumlah Bayar SPP Bulan Ini">Jumlah Bayar SPP Bulan
			Ini</label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-money"></i></span> <input
				id="bayarSpp" type="number" class="form-control" name="bayarSpp"
				placeholder="Contoh: 150000">
		</div>
	</div>

	<div class="form-group">
		<label for="Jumlah Uang Penyetor">Jumlah Uang Penyetor</label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-money"></i></span> <input
				id="jumlahUang" type="number" class="form-control" name="jumlahUang"
				placeholder="Contoh: 150000"><span class="input-group-btn">
				<button id="hitung" class="btn btn-warning" type="button">
					<i class="fa fa-calculator"></i> Hitung
				</button>
			</span>
		</div>
	</div>

	<div class="form-group">
		<label for="Kembalian Uang">Kembalian Uang </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-money"></i></span> <input
				id="kembalianSpp" type="number" class="form-control"
				name="kembalianSpp" placeholder="Kembalian Uang" readonly required>
		</div>
	</div>

	<div class="form-group">
		<label for="Tanggal Pembayaran SPP">Tanggal Pembayaran SPP</label>
		<div class="input-group date" data-date-format="dd-MM-yyyy">
			<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
			<input class="form-control" type="text" name="tglSpp" id="tglSpp"
				placeholder="Tanggal Pembayaran" readonly required>
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

	$('#hitung').click(function() {
		var a = parseInt($('#jumlahUang').val());
		var b = parseInt($('#bayarSpp').val());
		var total = a - b;
		$('#kembalianSpp').val(total);
	});
</script>

