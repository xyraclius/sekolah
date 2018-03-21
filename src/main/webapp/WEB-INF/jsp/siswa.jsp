<!-- untuk looping -->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="panel"
	style="background: white; margin-top: 40px; min-height: 620px">

	<div class="box box-info">
		<div class="box-header">
			<h3 class="box-title">Biodata Siswa</h3>
			<div class="box-tools">
				<button type="button" id="btn-tambah"
					class="btn btn-primary pull-right">
					<i class="fa fa-plus"></i> Tambah Siswa
				</button>
			</div>
		</div>
		<div class="box-body">
			<table class="table" id="tbl_siswa">
				<thead>
					<tr>
						<th>NISN</th>
						<th>Nama Siswa</th>
						<th>Kelas</th>
						<th>Jurusan</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody id="list-data-siswa">

				</tbody>
			</table>
		</div>
	</div>

	<div id="modal-input" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<i class="fa fa-close"></i>
					</button>
					<h4>Form Data Siswa</h4>
				</div>
				<div class="modal-body">
					<!-- isinya adalah add.jsp -->
				</div>

			</div>
		</div>
	</div>
	<script>
		$(".input-group.date").datepicker({
			autoclose : true,
			todayHighlight : true
		});

		$(function() {
			$("#tbl_siswa").DataTable();
		});

		//list data Item
		function loadData() {
			$.ajax({
				url : 'siswa/list.html',
				type : 'get',
				dataType : 'html',
				success : function(data) {
					$("#list-data-siswa").html(data);
				}
			});
		}

		loadData();

		// setelah halaman siap, fuction dijalankan
		$(document)
				.ready(
						function() {

							// tambah pop up
							$('#btn-tambah').on(
									'click',
									function() {
										$
												.ajax({
													url : 'siswa/add.html',
													type : 'get',
													dataType : 'html', //untuk menampilkan halaman
													success : function(data) {
														$("#modal-input").find(
																".modal-body")
																.html(data);
														$("#modal-input")
																.modal('show');
													}
												});
									});

							//Simpan Tambah
							//Mengambil data dari modal body dengan id="modal-input"
							//format submit: on('type(submit)', 'nama_form', function(){})
							$('#modal-input')
									.on(
											'submit',
											'#form-siswa',
											function() {
												//on submit karena type="submmit"
												// jika type="button" --> on click / ...
												$
														.ajax({
															url : 'siswa/save.json',
															type : 'post', //post untuk type="submit"
															//untuk save data ke database tambahkan data:...
															data : $(this)
																	.serialize(), //seluruh data di .jsp diambil nilainya
															//karena .serialize --> save.json (untuk save data)
															dataType : 'json',
															success : function(
																	data) {
																if (data.result == "berhasil") {
																	$(
																			"#modal-input")
																			.modal(
																					'hide');
																	alert("Data Item Berhasil Disimpan");
																	loadData(); //tampil data
																} else if (data.result == "ubah") {
																	$(
																			"#modal-input")
																			.modal(
																					'hide');
																	alert("Data Item Berhasil Diubah");
																	loadData(); //tampil data
																} else if (data.result == "hapus") {
																	$(
																			"#modal-input")
																			.modal(
																					'hide');
																	alert("Data Item Berhasil Dihapus");
																	loadData(); //tampil data
																} else {
																	$(
																			"#modal-input")
																			.modal(
																					'show');
																	alert("Maaf, Kode Item "
																			+ kode_item.value
																			+ " Sudah Ada..");
																}
															}
														});
												return false;
											});

							//Detail
							// function untuk button detail
							$('#list-data-siswa').on(
									'click',
									'#btn-detail',
									function() {
										var vId = $(this).val();
										$
												.ajax({
													url : 'siswa/detail.html',
													type : 'get',
													data : {
														nisn : vId
													},
													dataType : 'html', //untuk menampilkan halaman
													success : function(data) {
														$("#modal-input").find(
																".modal-body")
																.html(data);
														$("#modal-input")
																.modal('show');
													}
												});
									});

							//Edit
							// function untuk button edit
							$('#list-data-siswa').on(
									'click',
									'#btn-edit',
									function() {
										var vId = $(this).val();
										$
												.ajax({
													url : 'siswa/edit.html',
													type : 'get',
													data : {
														nisn : vId
													},
													dataType : 'html', //untuk menampilkan halaman
													success : function(data) {
														$("#modal-input").find(
																".modal-body")
																.html(data);
														$("#modal-input")
																.modal('show');
													}
												});
									});

							//delete
							// function untuk button delete
							$('#list-data-siswa').on(
									'click',
									'#btn-delete',
									function() {
										var vId = $(this).val();
										$
												.ajax({
													url : 'siswa/delete.html',
													type : 'get',
													data : {
														nisn : vId
													},
													dataType : 'html', //untuk menampilkan halaman
													success : function(data) {
														$("#modal-input").find(
																".modal-body")
																.html(data);
														$("#modal-input")
																.modal('show');
													}
												});
									});
						});
	</script>

</div>
