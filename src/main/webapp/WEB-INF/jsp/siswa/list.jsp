<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:forEach var="siswa" items="${list}">
	<tr>
		<td>${siswa.nisn}</td>
		<td>${siswa.nmSiswa}</td>
		<td>${siswa.kelasModel.tingkat} ${siswa.kelasModel.nmKelas}</td>
		<td>${siswa.jenisKelamin}</td>

		<td>
			<button type="button" id="btn-edit"
				class="btn btn-success btn-xs btn-edit" value="${siswa.nisn}">
				<i class="fa fa-edit"></i>
			</button>
			<button type="button" id="btn-delete"
				class="btn btn-danger btn-xs btn-delete" value="${siswa.nisn}">
				<i class="fa fa-trash"></i>
			</button>
			<button type="button" id="btn-detail"
				class="btn btn-info btn-xs btn-detail" value="${siswa.nisn}">
				<i class="fa fa-eye"></i>
			</button>
		</td>
	</tr>
</c:forEach>