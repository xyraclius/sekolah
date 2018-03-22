<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<form  id="form-pelajaran" method="post">
	<div class="form-horizontal">
		<input type="hidden" id="proses" name="proses" class="form-control"
			value="insert">

		<div class="form-group">
			<label class="control-label col-md-2">Kode Pelajaran</label>
			<div class="col-md-6">
				<input type="text" id="kdPelajaran" name="kdPelajaran"
					class="form-control" required="required">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-md-2">Nama Pelajaran</label>
			<div class="col-md-6">
				<input type="text" id="nmPelajaran" name="nmPelajaran"
					class="form-control" required="required" >
			</div>
		</div>
		
		
		<div class="form-group">
			<label class="control-label col-md-2">Jam Ajar</label>
			<div class="col-md-6">
				<input type="text" id="jamAjar" name="jamAjar"
					class="form-control" required="required" >
			</div>
		</div>
		
		
		<div class="form-group">
			<label class="control-label col-md-2">Tingkat</label>
			<div class="col-md-6">
				<select id="tingkat" name="tingkat">
					<option value="X">X</option>
					<option value="XI">XI</option>
					<option value="XII">XII</option>
				</select>
			</div>
		</div>
			
		<div class="form-group">
			<label class="control-label col-md-2">Keterangan</label>
			<div class="col-md-6">
				<textarea id="keterangan" name= "keterangan" rows="5" cols="30" class="form-control" >
				</textarea>
			</div>
		</div>
		
		<div class="modal-footer">
			<button type="submit" class="btn btn-success" id="btn-save">Simpan</button>
		</div>
	</div>


</form>