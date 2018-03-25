<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:forEach var="spp" items="${list}">
	<tr>
		<td>${spp.noSpp}</td>
		<td>${spp.siswaModel.nmSiswa}</td>
		<td>${spp.bulan}</td>
		<td>${spp.thnAjar}</td>

		<td>
			<button type="button" id="btn-edit"
				class="btn btn-success btn-xs btn-edit" value="${spp.noSpp}">
				<i class="fa fa-edit"></i>
			</button>
			<button type="button" id="btn-delete"
				class="btn btn-danger btn-xs btn-delete" value="${spp.noSpp}">
				<i class="fa fa-trash"></i>
			</button>
			<button type="button" id="btn-detail"
				class="btn btn-info btn-xs btn-detail" value="${spp.noSpp}">
				<i class="fa fa-eye"></i>
			</button>
		</td>
	</tr>
</c:forEach>