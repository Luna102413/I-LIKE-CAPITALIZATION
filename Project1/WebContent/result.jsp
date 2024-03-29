<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<html>
<head>
	<title>Result Page</title>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" rel="stylesheet">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link href="css/animate.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
</head>
<body class="text-center">
	
	<div class="cover-container d-flex h-100 p-3 mx-auto flex-column">
		<header class="masthead mb-auto">
			<div class="inner">
				<h3 class="masthead-brand animated fadeIn delay-1s fast"><a href="<%= request.getContextPath() %>">Computing Calculator</a></h3>
			</div>
		</header>
		<main role="main" class="inner cover">
			<div class="text-left"><h1 id="city" class="animated fadeInLeft">City: <%= request.getAttribute("city") %></h1></div>
			<div class="text-left"><h1 id="number" class="animated fadeInRight">Number: <%= request.getAttribute("number") %></h1></div>
			<div class="text-left"><h1 id="result" class="animated fadeInLeft">Result: <%= request.getAttribute("result") %></h1></div>
			<div class="text-left"><h1 id="invoice" class="animated fadeInRight">Invoice: <%= request.getAttribute("invoice") %></h1></div>
			<div><h3 class="animated fadeIn slow"><a href="<%= request.getContextPath() %>">Back</a></h3></div>
		</main>
		<footer class="mastfoot mt-auto animated fadeIn fast">
			<div class="inner">
			</div>
		</footer>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
	<script>
		var city = $("#city").html().split(":")[1];
		var number = $("#number").html().split(":")[1];
		var result = $("#result").html().split(":")[1];
		var invoice = $("#invoice").html().split(":")[1];
		
		console.log(city);
		console.log(number);
		console.log(result);
		console.log(invoice);
	</script>
</body>
</html>