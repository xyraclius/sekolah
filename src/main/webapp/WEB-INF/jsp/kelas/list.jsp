<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:forEach var="kelas" items="${list}">
	<tr>
		<td>${kelas.kdKelas}</td>
		<td>${kelas.nmKelas}</td>
		<td>${kelas.tingkat}</td>

		<td>
			<button type="button" id="btn-edit"
				class="btn btn-success btn-xs btn-edit" value="${kelas.kdKelas}">
				<i class="fa fa-edit"></i>
			</button>
			<button type="button" id="btn-delete"
				class="btn btn-danger btn-xs btn-delete" value="${kelas.kdKelas}">
				<i class="fa fa-trash"></i>
			</button>
			<button type="button" id="btn-detail"
				class="btn btn-info btn-xs btn-detail" value="${kelas.kdKelas}">
				<i class="fa fa-eye"></i>
			</button>
		</td>
	</tr>
</c:forEach>