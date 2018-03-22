<form id="form-guru" method="post">
	<div class="form-horizontal">
		<input type="hidden" id="proses" name="proses" class="form-control" value="delete">
		<input type="hidden" id="nip" name="nip" class="form-control" value="${guru.nip}">
		
		<div class="form-group">
			<label class="control-label col-md-3">NIP :</label>
			<div class="col-md-6">
				<input type="text" id="nip" name="nip" 
					class="form-control" style="background-color: white; border: none" value="${guru.nip}" maxlength="7" >
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-md-3">Nama Guru :</label>
			<div class="col-md-6">
				<input type="text" id="nmGuru" name="nmGuru" 
					class="form-control" style="background-color: white; border: none" value="${guru.nmGuru}" maxlength="7" >
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-md-3">No Telp: </label>
			<div class="col-md-6">
				<input type="text" id="noTelp" name="noTelp"
					class="form-control" required="required" style="background-color: white; border: none" value="${guru.nmGuru}" readonly="readonly">
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-md-3">Jenis Kelamin :</label>
			<div class="col-md-6">
				<input type="text" id="jk" name="jk"
					class="form-control" required="required" maxlength="25" style="background-color: white; border: none" value="${guru.jk}" readonly="readonly">
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-md-3">Gelar :</label>
			<div class="col-md-6">
				<input type="text" id="gelar" name="gelar"
					class="form-control" required="required" maxlength="25" style="background-color: white; border: none" value="${guru.gelar}" readonly="readonly">
			</div>
		</div>
				
		<div class="form-group">
			<label class="control-label col-md-3">Alamat : </label>
			<div class="col-md-6">
				<textarea id="alamat" name="alamat" rows="5" cols="30" class="form-control" readonly="readonly" > ${guru.alamat}
				</textarea>	
			</div>				
		</div>
		
		<div class="form-group">
			<label class="col-md-10">Apakah anda yakin akan menghapus data Item ${guru.nmGuru} ?</label>					
		</div>
		
	</div>
	
	<div class="modal-footer">
		<button type="submit" class="btn btn-success">Hapus</button>
	</div>
	
</form>
