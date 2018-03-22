<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<form id="form-pelajaran" method="post">
	<div class="form-horizontal">
		<input type="hidden" id="proses" name="proses" class="form-control"
			value="update">

		<div class="form-group">
			<label class="control-label col-md-2">Kode Pelajaran</label>
			<div class="col-md-6">
				<input type="text" id="kdPelajaran" name="kdPelajaran" 
					class="form-control"  value="${pelajaran.kdPelajaran}">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-md-2">Nama Pelajaran</label>
			<div class="col-md-6">
				<input type="text" id="nmPelajaran" name="nmPelajaran"
					class="form-control" required="required" value="${pelajaran.nmPelajaran}" >
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-md-2">Jam Ajar</label>
			<div class="col-md-6">
				<input type="text" id="jamAjar" name="jamAjar"
					class="form-control" required="required" value="${pelajaran.jamAjar}" >
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-md-2">Tingkat</label>
			<div class="col-md-6">
				<select>
					<option value="X">X</option>
					<option value="XI">XI</option>
					<option value="XII">XII</option>
				</select>
			</div>
		</div>
			
		<div class="form-group">
			<label class="control-label col-md-2">Keterangan</label>
			<div class="col-md-6">
				<textarea id="keterangan" name="keterangan" rows="5" cols="30" class="form-control" > ${pelajaran.keterangan}
				</textarea>
			</div>
		</div>
		
		<div class="modal-footer">
			<button type="submit" class="btn btn-success" id="btn_update">Ubah</button>
		</div>
	</div>
</form>
