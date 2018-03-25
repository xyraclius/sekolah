<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<form id="form-spp" method="post">
	<input type="hidden" id="proses" name="proses" class="form-control"
		value="update">

	<div class="form-group">
		<label for="No SPP">No SPP </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-id-card"></i></span>
			<input id="noSpp" type="text" class="form-control" name="noSpp"
				value="${spp.noSpp}" readonly required>
		</div>
	</div>

	<div class="form-group">
		<label for="Nama Siswa">Nama Siswa </label>
		<div class="input-group">
			<span class="input-group-addon"><i
				class="fa fa-user-circle-o"></i></span> <select name="nisn" id="nisn"
				class="form-control" required>
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
				<option value="Januari"
					<c:if test="${spp.bulan == 'Januari'}"><c:out value="selected"/></c:if>>
					Januari</option>
				<option value="Februari"
					<c:if test="${spp.bulan == 'Februari'}"><c:out value="selected"/></c:if>>Februari</option>
				<option value="Maret"
					<c:if test="${spp.bulan == 'Maret'}"><c:out value="selected"/></c:if>>Maret</option>
				<option value="April"
					<c:if test="${spp.bulan == 'April'}"><c:out value="selected"/></c:if>>April</option>
				<option value="Mei"
					<c:if test="${spp.bulan == 'Mei'}"><c:out value="selected"/></c:if>>Mei</option>
				<option value="Juni"
					<c:if test="${spp.bulan == 'Juni'}"><c:out value="selected"/></c:if>>Juni</option>
				<option value="Juli"
					<c:if test="${spp.bulan == 'Juli'}"><c:out value="selected"/></c:if>>Juli</option>
				<option value="Agustus"
					<c:if test="${spp.bulan == 'Agustus'}"><c:out value="selected"/></c:if>>Agustus</option>
				<option value="September"
					<c:if test="${spp.bulan == 'September'}"><c:out value="selected"/></c:if>>September</option>
				<option value="Oktober"
					<c:if test="${spp.bulan == 'Oktober'}"><c:out value="selected"/></c:if>>Oktober</option>
				<option value="November"
					<c:if test="${spp.bulan == 'November'}"><c:out value="selected"/></c:if>>November</option>
				<option value="Desember"
					<c:if test="${spp.bulan == 'Desember'}"><c:out value="selected"/></c:if>>Desember</option>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label for="Tahun Ajar">Tahun Ajar </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-calendar-check-o"></i></span> <input
				id="thnAjar" type="number" class="form-control" name="thnAjar"
				value="${spp.thnAjar}" required>
		</div>
	</div>


	<div class="form-group">
		<label for="Tipe Pembayaran">Tipe Pembayaran </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
			<select name="tipeBayar" id="tipeBayar" class="form-control" required>
				<option value="Transfer"
					<c:if test="${spp.tipeBayar == 'Transfer'}"><c:out value="selected"/></c:if>>
					Transfer</option>
				<option value="Tunai"
					<c:if test="${spp.tipeBayar == 'Tunai'}"><c:out value="selected"/></c:if>>
					Tunai</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="Jumlah Bayar SPP Bulan Ini">Jumlah Bayar SPP Bulan
			Ini</label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-money"></i></span> <input
				id="bayarSpp" type="number" class="form-control" name="bayarSpp"
				value="${spp.bayarSpp}" required>
		</div>
	</div>

	<div class="form-group">
		<label for="Jumlah Uang Penyetor">Jumlah Uang Penyetor</label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-money"></i></span> <input
				id="jumlahUang" type="number" class="form-control" name="jumlahUang"
				value="${spp.jumlahUang}" required><span
				class="input-group-btn">
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
				id="kembalianSpp" type="text" class="form-control"
				name="kembalianSpp" value="${spp.kembalianSpp}" readonly required>
		</div>
	</div>

	<div class="form-group">
		<label for="Tanggal Pembayaran SPP">Tanggal Pembayaran SPP</label>
		<div class="input-group date" data-date-format="dd-MM-yyyy">
			<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
			<input class="form-control" type="text" name="tglSpp" id="tglSpp"
				placeholder="Tanggal Pembayaran" value="${spp.tglSpp}" readonly
				required>
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

	$('#hitung').click(function() {
		var a = parseInt($('#jumlahUang').val());
		var b = parseInt($('#bayarSpp').val());
		var total = a - b;
		$('#kembalianSpp').val(total);
	});
</script>