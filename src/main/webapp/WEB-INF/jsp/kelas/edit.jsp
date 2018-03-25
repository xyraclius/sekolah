<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<form id="form-kelas" method="post">
	<input type="hidden" id="proses" name="proses" class="form-control"
		value="update">

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
				value="${kelas.nmKelas}">
		</div>
	</div>

	<div class="form-group">
		<label class="radio" for=Tingkat>Tingkat</label>
		<c:choose>
			<c:when test="${kelas.tingkat == 'X'}">
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

			<c:when test="${kelas.tingkat == 'XI'}">
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
		<label for="Wali Kelas">Wali Kelas </label>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user"></i></span> <select
				name="nip" id="nip" class="form-control" required>
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
				<option value="A"
					<c:if test="${kelas.ruang == 'A'}">
								<c:out value="selected"/>
						</c:if>>A</option>
				<option value="B"
					<c:if test="${kelas.ruang == 'B'}">
								<c:out value="selected"/>
						</c:if>>B</option>
				<option value="C"
					<c:if test="${kelas.ruang == 'C'}">
								<c:out value="selected"/>
						</c:if>>C</option>
				<option value="D"
					<c:if test="${kelas.ruang == 'D'}">
								<c:out value="selected"/>
						</c:if>>D</option>
				<option value="E"
					<c:if test="${kelas.ruang == 'E'}">
								<c:out value="selected"/>
						</c:if>>E</option>
				<option value="F"
					<c:if test="${kelas.ruang == 'F'}">
								<c:out value="selected"/>
						</c:if>>F</option>
				<option value="G"
					<c:if test="${kelas.ruang == 'G'}">
								<c:out value="selected"/>
						</c:if>>G</option>
				<option value="H"
					<c:if test="${kelas.ruang == 'H'}">
								<c:out value="selected"/>
						</c:if>>H</option>
				<option value="I"
					<c:if test="${kelas.ruang == 'I'}">
								<c:out value="selected"/>
						</c:if>>I</option>
				<option value="J"
					<c:if test="${kelas.ruang == 'J'}">
								<c:out value="selected"/>
						</c:if>>J</option>
				<option value="K"
					<c:if test="${kelas.ruang == 'K'}">
								<c:out value="selected"/>
						</c:if>>K</option>
				<option value="L"
					<c:if test="${kelas.ruang == 'L'}">
								<c:out value="selected"/>
						</c:if>>L</option>
			</select>
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