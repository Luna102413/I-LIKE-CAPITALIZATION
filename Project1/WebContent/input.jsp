<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<html>
<head>
	<title>Input Page</title>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" rel="stylesheet">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link href="css/animate.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
</head>
<body class="text-center">
	<%
		String os = (String) request.getAttribute("os");
		String[] cities = (String[]) request.getAttribute("cities");
		String[] errors = (String[]) request.getAttribute("errors");
		boolean cityValid = true;
		boolean numberValid = true;
		int cityIndex = -1;
		
		try 
		{
			cityIndex = Integer.parseInt((String) request.getAttribute("cityIndex"));
		} 
		catch (NumberFormatException e) 
		{
		}
		
		if (errors != null && errors.length > 1) 
		{
			if (errors[0] != null) 
			{
				cityValid = errors[0].length() == 0;
			}
			if (errors[1] != null) 
			{
				numberValid = errors[1].length() == 0;
			}
		}
	%>
	<div class="cover-container d-flex h-100 p-3 mx-auto flex-column">
		<header class="masthead mb-auto">
			<div class="inner">
				<h3 class="masthead-brand animated fadeIn delay-1s fast"><a href="<%= request.getContextPath() %>">Computing Calculator</a></h3>
			</div>
		</header>
		<main role="main" class="inner cover">
		<div class="cover-heading">
			<%
				if (os == "Windows") 
				{
			%>
					<img class="cover-logo animated fadeInDown" src="http://pngimg.com/uploads/windows_logos/windows_logos_PNG42.png">
			<%
				} 
				else if (os == "Mac") 
				{
			%>
					<img class="cover-logo animated fadeInDown" src="http://pngimg.com/uploads/apple_logo/apple_logo_PNG19676.png">
			<%
				} 
				else 
				{
			%>
					<img class="cover-logo animated fadeInUpBig" src="http://pngimg.com/uploads/linux/linux_PNG46.png">
			<%
				}
			%>
		</div>
		<form action="calculate" method="post">
			<div class="form-row align-items-center justify-content-center">
				<div class="col-auto w-75 m-3">
					<select class="form-control animated fadeInLeft <% if (!cityValid) { %> is-invalid <% } %>" name="city">
						<option value="-1" <% if (cityIndex == -1) { %> selected <% } %>> --- Select a City --- </option>
						<%
							for (int i = 0; i < cities.length; i++) 
							{
						%>
								<option value="<%= i %>" <% if (i == cityIndex) { %> selected <% } %>><%= cities[i].trim() %></option>
						<%
							}
						%>
					</select>
					<div class="invalid-tooltip animated delay-1s slow">${ errors[0].trim() }</div>
				</div>
				<div class="col-auto w-75 m-3">
					<input type="text" class="form-control animated fadeInRight <% if (!numberValid) { %> is-invalid <% } %>" name="number" value="${ number }" placeholder="Enter an integer">
					<div class="invalid-tooltip animated delay-1s slow">${ errors[1].trim() }</div>
				</div>
				<div class="col-auto w-75 m-3">
					<input type="submit" class="btn btn-lg btn-secondary animated fadeInUp" value="Calculate">
				</div>
			</div>
		</form>
		</main>
		<footer class="mastfoot mt-auto animated fadeIn fast">
			<div class="inner">
			</div>
		</footer>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
</body>
</html>