<form id="form-spp" method="post">
	<input type="hidden" id="proses" name="proses" class="form-control"
		value="delete">

	<div class="form-group">
		<label for="No SPP">No SPP </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-id-card"></i></span>
			<input id="noSpp" type="text" class="form-control" name="noSpp"
				value="${spp.noSpp}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Nama Siswa">Nama Siswa </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user-circle-o"></i></span>
			<input id="nisn" type="text" class="form-control" name="nisn"
				value="${spp.siswaModel.nmSiswa}" readonly>
		</div>
	</div>


	<div class="form-group">
		<label for="Pembayaran Untuk Bulan">Pembayaran Untuk Bulan </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-flag"></i></span> <input
				id="thnAjar" type="text" class="form-control" name="thnAjar"
				value="${spp.bulan}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Tahun Ajar">Tahun Ajar </label>
		<div class="input-group">
			<span class="input-group-addon"><i
				class="fa fa-calendar-check-o"></i></span> <input id="thnAjar" type="text"
				class="form-control" name="thnAjar" value="${spp.thnAjar}" readonly>
		</div>
	</div>


	<div class="form-group">
		<label for="Tipe Pembayaran">Tipe Pembayaran </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
			<input id="tipeBayar" type="text" class="form-control"
				name="tipeBayar" value="${spp.tipeBayar}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Jumlah Bayar SPP Bulan Ini">Jumlah Bayar SPP Bulan
			Ini</label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-money"></i></span> <input
				id="bayarSpp" type="text" class="form-control" name="bayarSpp"
				value="${spp.bayarSpp}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Jumlah Uang">Jumlah Uang </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-money"></i></span> <input
				id="jumlahUang" type="text" class="form-control" name="jumlahUang"
				value="${spp.jumlahUang}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Kembalian Uang">Kembalian Uang </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-money"></i></span> <input
				id="kembalianSpp" type="text" class="form-control"
				name="kembalianSpp" value="${spp.kembalianSpp}" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="Tanggal Pembayaran SPP">Tanggal Pembayaran SPP</label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
			<input id="tglSpp" type="text" class="form-control" name="tglSpp"
				value="${spp.tglSpp}" readonly>
		</div>
	</div>

	<div class="modal-footer">
		<button type="button" class="btn btn-danger pull-left"
			data-dismiss="modal" title="Tutup Form">
			<i class="fa fa-times"></i> Tutup
		</button>
		<button type="submit" class="btn btn-success" id="btn_delete"
			title="Hapus Data">
			<i class="fa fa-trash"></i> Hapus
		</button>
	</div>
</form>
