<!-- untuk looping -->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="panel"
	style="background: white; margin-top: 40px; min-height: 620px">

 <div class="box box-info">
		<div class="box-header">
			<h3 class="box-title">Data Guru</h3>
			<div class="box-tools">
				<button type="button" id="btn-tambah"
					class="btn btn-primary pull-right">
					<i class="fa fa-plus"></i> Tambah Guru
				</button>
			</div>
		</div>
		<div class="box-body">
			<table class="table" id="tbl_guru">
				<thead>
					<tr>
						<th>NIP</th>
						<th>Nama Guru</th>
						<th>No Telp</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody id="list-data-guru">

				</tbody>
			</table>
		</div>
	</div>
	
	<div id="modal-input" class="modal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<i class="fa fa-close"></i>
				</button>
				<h4>Form Data Guru</h4>
			</div>
			<div class="modal-body">
				<!-- isinya adalah add.jsp -->
			</div>
		</div>
	</div>
</div>
<script>
$(function() {
	$("#tbl_guru").DataTable();
});

//list data Item
function loadData() {
	$.ajax({
		url : 'guru/list.html',
		type : 'get',
		dataType : 'html',
		success : function(data) {
			$("#list-data-guru").html(data);
		}
	});
}

loadData();

// setelah halaman siap, fuction dijalankan
$(document).ready(function() {
	
	// tambah pop up
	$('#btn-tambah').on('click', function() {
		$.ajax({
			url : 'guru/add.html',
			type : 'get',
			dataType : 'html', //untuk menampilkan halaman
			success : function(data) {
				$("#modal-input").find(".modal-body").html(data);
				$("#modal-input").modal('show');
			}
		});
	});
	
	
	
	//Simpan Tambah
	//Mengambil data dari modal body dengan id="modal-input"
	//format submit: on('type(submit)', 'nama_form', function(){})
	$('#modal-input').on('submit', '#form-guru', function() {
		//on submit karena type="submmit"
		// jika type="button" --> on click / ...
		$.ajax({
			url : 'guru/save.json',
			type : 'post', //post untuk type="submit"
			//untuk save data ke database tambahkan data:...
			data : $(this).serialize(), //seluruh data di .jsp diambil nilainya
			//karena .serialize --> save.json (untuk save data)
			dataType : 'json',
			success : function(data) {
				if (data.result == "berhasil") {
					$("#modal-input").modal('hide');
					alert("Data guru Berhasil Disimpan");
					loadData(); //tampil data
				}else if (data.result == "ubah") {
					$("#modal-input").modal('hide');
					alert("Data guru Berhasil Diubah");
					loadData(); //tampil data
				}else if (data.result == "hapus") {
					$("#modal-input").modal('hide');
					alert("Data guru Berhasil Dihapus");
					loadData(); //tampil data
				}
				else {
					$("#modal-input").modal('show');
					alert("Maaf, NIP "+nip.value+" Sudah Ada..");
				}
			}
		});
		return false;
	});
	
	
	//Detail
	// function untuk button detail
	$('#list-data-guru').on('click', '#btn-detail', function() {
		var vId = $(this).val();
		$.ajax({
			url : 'guru/detail.html',
			type : 'get',
			data:{ nip:vId },
			dataType : 'html', //untuk menampilkan halaman
			success : function(data) {
				$("#modal-input").find(".modal-body").html(data);
				$("#modal-input").modal('show');
			}
		});
	});
	
	
	//Edit
	// function untuk button edit
	$('#list-data-guru').on('click', '#btn-edit', function() {
		var vId = $(this).val();
		$.ajax({
			url : 'guru/edit.html',
			type : 'get',
			data:{ nip:vId },
			dataType : 'html', //untuk menampilkan halaman
			success : function(data) {
				$("#modal-input").find(".modal-body").html(data);
				$("#modal-input").modal('show');
			}
		});
	});
	
	//delete
	// function untuk button delete
	$('#list-data-guru').on('click', '#btn-delete', function() {
		var vId = $(this).val();
		$.ajax({
			url : 'guru/delete.html',
			type : 'get',
			data:{ nip:vId },
			dataType : 'html', //untuk menampilkan halaman
			success : function(data) {
				$("#modal-input").find(".modal-body").html(data);
				$("#modal-input").modal('show');
			}
		});
	});
});


</script>
 
</div>
