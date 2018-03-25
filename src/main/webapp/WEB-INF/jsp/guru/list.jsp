<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:forEach var="guru" items="${list}">
	<tr>
		<td>${guru.nip}</td>
		<td>${guru.nmGuru}</td>
		<td>${guru.noTelp}</td>

		<td>
			<button type="button" id="btn-edit"
				class="btn btn-success btn-xs btn-edit" value="${guru.nip}">
				<i class="fa fa-edit"></i>
			</button>
			<button type="button" id="btn-delete"
				class="btn btn-danger btn-xs btn-delete" value="${guru.nip}">
				<i class="fa fa-trash"></i>
			</button>
			<button type="button" id="btn-detail"
				class="btn btn-info btn-xs btn-detail" value="${guru.nip}">
				<i class="fa fa-eye"></i>
			</button>
		</td>
	</tr>
</c:forEach>