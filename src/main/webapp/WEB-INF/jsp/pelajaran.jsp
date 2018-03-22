<!-- untuk looping -->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="panel" style="background: white; margin-top: 40px; min-height: 620px">
	
	<div class="box box-info">
	<div class="box-header">
		<h3 class="box-title">Data Pelajaran</h3>
		<div class="box-tools">
			<button type="button" id="btn-tambah" class="btn btn-primary pull-right">
				<i class="fa fa-plus"></i> Tambah Pelajaran
			</button>
		</div>
	</div>
	<div class="box-body">
		<table class="table" id="tbl_pelajaran">
			<thead>
				<tr>
					<th>Kode Pelajaran</th>
					<th>Nama Pelajaran</th>
					<th>Jam Ajar</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody id="list-data-pelajaran">

			</tbody>
		</table>
	</div>
</div>
</div>

<!-- Modal modal untuk popup -->
<div id="modal-input" class="modal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<i class="fa fa-close"></i>
				</button>
				<h4>Form Data Pelajaran</h4>
			</div>
			<div class="modal-body">
				<!-- isinya adalah add.jsp -->
			</div>
		</div>
	</div>
</div>

<script>
$(function() {
	$("#tbl_pelajaran").DataTable();
});

//list data Pelajaran
function loadData() {
	$.ajax({
		url : 'pelajaran/list.html',
		type : 'get',
		dataType : 'html',
		success : function(data) {
			$("#list-data-pelajaran").html(data);
		}
	});
}

loadData();

//setelah halaman siap, function dijalankan
$(document).ready(function() {

	// Tambah popup
	$('#btn-tambah').on('click', function() {
		$.ajax({
			url : 'pelajaran/add.html',
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
	$('#modal-input').on('submit', '#form-pelajaran', function() {
		//on submit karena type="submmit"
		// jika type="button" --> on click / ...
		$.ajax({
			url : 'pelajaran/save.json',
			type : 'post', //post untuk type="submit"
			//untuk save data ke database tambahkan data:...
			data : $(this).serialize(), //seluruh data di .jsp diambil nilainya
			//karena .serialize --> save.json (untuk save data)
			dataType : 'json',
			success : function(data) {
				if (data.result == "berhasil") {
					$("#modal-input").modal('hide');
					alert("Data Pelajaran Berhasil Disimpan");
					loadData(); //tampil data
				}else if (data.result == "ubah") {
					$("#modal-input").modal('hide');
					alert("Data Pelajaran Berhasil Diubah");
					loadData(); //tampil data
				}else if (data.result == "hapus") {
					$("#modal-input").modal('hide');
					alert("Data Pelajaran Berhasil Dihapus");
					loadData(); //tampil data
				}
				else {
					$("#modal-input").modal('show');
					alert("Maaf, Kode Pelajaran "+kdPelajaran.value+" Sudah Ada..");
				}
			}
		});
		return false;
	});
	
	//Detail
	// function untuk button detail
	$('#list-data-pelajaran').on('click', '#btn-detail', function() {
		var vId = $(this).val();
		$.ajax({
			url : 'pelajaran/detail.html',
			type : 'get',
			data:{ kdPelajaran:vId },
			dataType : 'html', //untuk menampilkan halaman
			success : function(data) {
				$("#modal-input").find(".modal-body").html(data);
				$("#modal-input").modal('show');
			}
		});
	});
	
	//Edit
	// function untuk button edit
	$('#list-data-pelajaran').on('click', '#btn-edit', function() {
		var vId = $(this).val();
		$.ajax({
			url : 'pelajaran/edit.html',
			type : 'get',
			data:{ kdPelajaran:vId },
			dataType : 'html', //untuk menampilkan halaman
			success : function(data) {
				$("#modal-input").find(".modal-body").html(data);
				$("#modal-input").modal('show');
			}
		});
	});
	
	//delete
	// function untuk button delete
	$('#list-data-pelajaran').on('click', '#btn-delete', function() {
		var vId = $(this).val();
		$.ajax({
			url : 'pelajaran/delete.html',
			type : 'get',
			data:{ kdPelajaran:vId },
			dataType : 'html', //untuk menampilkan halaman
			success : function(data) {
				$("#modal-input").find(".modal-body").html(data);
				$("#modal-input").modal('show');
			}
		});
	});

	
});
//akhir dari document ready

</script>