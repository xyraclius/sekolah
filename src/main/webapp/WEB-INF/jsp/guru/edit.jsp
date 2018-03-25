<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<form id="form-guru" method="post">
	<div class="form-horizontal">
		<input type="hidden" id="proses" name="proses" class="form-control"
			value="update">

		<div class="form-group">
			<label class="control-label col-md-2">NIP</label>
			<div class="col-md-6">
				<input type="text" id="nip" name="nip" 
					 class="form-control"  value="${guru.nip}" maxlength="7" readonly="readonly" >
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-md-2">Nama Guru</label>
			<div class="col-md-6">
				<input type="text" id="nmGuru" name="nmGuru"
					class="form-control" required="required" value="${guru.nmGuru}" >
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-md-2">No Telp</label>
			<div class="col-md-6">
				<input type="text" id="noTelp" name="noTelp" 
					class="form-control" required="required" value="${guru.noTelp}" >
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-md-2">Jenis Kelamin</label>
			<div class="col-md-6">
			<div class="form-inline">
					<input id="jk" name="jk" type="radio" value="Pria" class="radio"
						required="required"
						<c:if test="${guru.jk == 'Pria'}">
								<c:out value="checked"/>
						</c:if>>Pria
					<input  id="jk" name= "jk"  type="radio" value="Wanita" class="radio" required="required"
						<c:if test="${guru.jk == 'Wanita'}">
								<c:out value="checked"/>
						</c:if>>Wanita
					
				</div>				
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-md-2">Gelar</label>
			<div class="col-md-6">
				<select id="gelar" name="gelar">
					<option value="S.Pd">S.Pd</option>
					<option value="S.Ag">S.Ag</option>
				</select>
			</div>
		</div>
				
		<div class="form-group">
			<label class="control-label col-md-2">Alamat</label>
			<div class="col-md-6">
				<div class="row">
					<textarea id="alamat" name="alamat" rows="5" cols="30" class="form-control" > ${guru.alamat}
				</textarea>				
				</div>
			</div>				
		</div>
		
		<div class="modal-footer">
			<button type="submit" class="btn btn-success" id="btn_update">Ubah</button>
		</div>
	</div>
</form>
