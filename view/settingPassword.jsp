<div class="col-md-8" style="background:white">

	<div class="panel panel-primary">
		<div class="panel-heading">
			<h4>Edit Password</h4>
		</div>
		<div class="panel-body" style="font-size:15px; text-align:center">
			<form method="post" action="controller/doChangePassword.jsp">
				<table align="center" cellspacing="0px;" style="border-collapse:separate;border-spacing:20px;">

					<tbody>
						<tr>
							<td style="padding-right:50px">Old Password</td>
							<td>
								<input class="form-control" style="width:200px;" name="oldPass" required type="password" value="">
							</td>
						</tr>
						<tr>
							<td style="padding-right:50px">New Password</td>
							<td>
								<input class="form-control" style="width:200px;" required name="newPass" type="password" value="">
							</td>
						</tr>
						<tr>
							<td style="padding-right:50px">Retype Password</td>
							<td>
								<input class="form-control" style="width:200px;" required name="confirmPass" type="password" value="">
							</td>
						</tr>
						<tr>
							<td class="text-center text-info" style="font-weight:bolder;" colspan="3">
								<%
									String result = request.getParameter("result");
									if(result!=null){
								%>
									<%= result %>
								<%
									}
								%>
							</td>
						</tr>
					</tbody>
				</table>
				<input class="btn-group-lg" style="margin-left:-20px;" type="submit" value="Submit">
				<div style="clear:both"></div>
			</form>

		</div>
	</div>
</div>