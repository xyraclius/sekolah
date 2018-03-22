<form id="form-pelajaran" method="post">
	<div class="form-horizontal">
		<input type="hidden" id="proses" name="proses" class="form-control" value="delete">
		<input type="hidden" id="kdPelajaran" name="kdPelajaran" class="form-control" value="${pelajaran.kdPelajaran}">
					
		<div class="form-group">
			<label class="control-label col-md-3">Kode Pelajaran:</label>
			<div class="col-md-6">
				<input type="text" id="kdPelajaran" name="kdPelajaran" 
					class="form-control"  style="background-color: white; border: none;" value="${pelajaran.kdPelajaran}" readonly="readonly">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-md-3">Nama Pelajaran: </label>
			<div class="col-md-6">
				<input type="text" id="nmPelajaran" name="nmPelajaran"
					class="form-control" required="required" style="background-color: white; border: none" value="${pelajaran.nmPelajaran}" readonly="readonly">
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-md-3">Jam Ajar : </label>
			<div class="col-md-6">
				<input type="text" id="jamAjar" name="jamAjar"
					class="form-control" required="required" style="background-color: white; border: none" value="${pelajaran.jamAjar}" readonly="readonly">
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-md-3">Tingkat :</label>
			<div class="col-md-6" >
				<input type="text" id="tingkat" name="tingkat"
					class="form-control" required="required" style="background-color: white; border: none" value="${pelajaran.tingkat}" readonly="readonly">
			</div>
		</div>
			
		<div class="form-group">
			<label class="control-label col-md-3">Keterangan :</label>
			<div class="col-md-6">
				<textarea id="keterangan" name= "keterangan" rows="5" cols="30" class="form-control" readonly="readonly" > ${pelajaran.keterangan}
				</textarea>
			</div>
		</div>
	</div>
	
</form>
