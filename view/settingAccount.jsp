<%
	String username = (String)session.getAttribute("username");
%>
<div class="col-md-8" style="background:white;">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h4>Edit Account</h4>
		</div>
		<div class="panel-body" style="font-size:15px; text-align:center">
			<form>
				<table align="center" cellspacing="0px;" style="border-collapse:separate;border-spacing:20px;">

					<tbody>
						<tr>
							<td>Username</td>
							<td>
								<input class="form-control" type="text" disabled value="<%= username %>">
							</td>
						</tr>
						<tr>
							<td>Email</td>
							<td>
								<input class="form-control" type="text" value="">
							</td>
						</tr>
						<tr>
							<td>Country</td>
							<td>
								<input class="form-control" type="text" value="">
							</td>
						</tr>
					</tbody>
				</table>
				<input class="btn btn-group-lg" type="submit" value="Submit">
				<div style="clear:both"></div>
			</form>
		</div>
	</div>
</div>