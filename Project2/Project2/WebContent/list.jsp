<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<%@ page import="edu.umsl.math.beans.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Math Question Bank</title>
</head>
<body>
	<input id="crtpg" type="hidden" value="${crtpg}" />
	<%
		List<Problem> myproblist = (List<Problem>) request.getAttribute("problist");
	%>
	<div class="container">
		<div class="d-flex justify-content-center align-items-center">
			<form action="listmath" method="post">
				<div class="form-row">
					<div class="col-10">
						<textarea class="form-control" placeholder="Give a problem that you are having"></textarea>
					</div>
					<div>
					</div>
				</div>
			</form>
		</div>
		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				<table width="100%" class="table table-bordered table-striped">
					<tr>
						<td colspan="3">
							<table width="100%">
								<tr>
									<td width="70%" class="text-center"></td>
									<td width="20%">
										<div class="input-group">
											<input id="probpage" type="text" class="form-control"
												style="width: 5em" placeholder="${crtpg}/${maxpg}">
											<button type="button" onclick="goToProblemsAtPage()"
												style="height: 2.4em" class="btn btn-default btn-md">
												<span class="glyphicon glyphicon-share-alt"></span>
											</button>
										</div>
									</td>
									<td width="10%">
										<div class="input-group-btn">
											<c:if test="${crtpg > 1}">
												<button id="upleftpagebtn" type="button"
													style="height: 2.4em" onclick="loadProblemsAtPage(0)"
													class="btn btn-default">
													<span class="glyphicon glyphicon-triangle-left"
														aria-label="Left"></span>
												</button>
											</c:if>
											<c:if test="${crtpg < maxpg}">
												<button id='uprightpagebtn' type="button"
													style="height: 2.4em" onclick="loadProblemsAtPage(1)"
													class="btn btn-default">
													<span class="glyphicon glyphicon-triangle-right"
														aria-label="Right"></span>
												</button>
											</c:if>
										</div>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<%
						for (Problem prob : myproblist) {
					%>
					<tr>
						<td id="pid<%=prob.getPid()%>" width="8%" class="text-center"><%=prob.getPid()%></td>
						<td width="84%"><%=prob.getContent()%></td>
						<td width="8%"></td>
					</tr>
					<%
						}
					%>
					<tr>
						<td colspan="3">
							<table width="100%">
								<tr>
									<td width="70%" class="text-center"></td>
									<td width="20%">
										<div class="input-group">
											<input id="probpage2" type="text" class="form-control"
												style="width: 5em" placeholder="${crtpg}/${maxpg}">
											<button type="button" onclick="goToProblemsAtPage()"
												style="height: 2.4em" class="btn btn-default btn-md">
												<span class="glyphicon glyphicon-share-alt"></span>
											</button>
										</div>
									</td>
									<td width="10%">
										<div class="input-group-btn">
											<c:if test="${crtpg > 1}">
												<button id="upleftpagebtn" type="button"
													style="height: 2.4em" onclick="loadProblemsAtPage(0)"
													class="btn btn-default">
													<span class="glyphicon glyphicon-triangle-left"
														aria-label="Left"></span>
												</button>
											</c:if>
											<c:if test="${crtpg < maxpg}">
												<button id='uprightpagebtn' type="button"
													style="height: 2.4em" onclick="loadProblemsAtPage(1)"
													class="btn btn-default">
													<span class="glyphicon glyphicon-triangle-right"
														aria-label="Right"></span>
												</button>
											</c:if>
										</div>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
	<script type="text/javascript" src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
	<script type="text/javascript" src="js/MathBank.js"></script>
	<script type="text/javascript">
		window.MathJax = {
			tex2jax : {
				inlineMath : [ [ '$', '$' ], [ "\\(", "\\)" ] ],
				processEscapes : true
			}
		};
	</script>
</body>
</html>