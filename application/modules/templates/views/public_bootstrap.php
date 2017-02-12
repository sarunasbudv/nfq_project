<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" href="<?php echo base_url(); ?>favicon.ico">

		<title>NFQ užduotis</title>

		<!-- Bootstrap core CSS -->
		<link href="<?php echo base_url(); ?>css/bootstrap.min.css" rel="stylesheet">
		<link href="<?php echo base_url(); ?>css/ie10-viewport-bug-workaround.css" rel="stylesheet">
		<link href="<?php echo base_url(); ?>css/jumbotron.css" rel="stylesheet">

		<!--[if lt IE 9]><script src="<?php echo base_url(); ?>assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
		<script src="<?php echo base_url(); ?>js/ie-emulation-modes-warning.js"></script>
		<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.css" rel="stylesheet"/>

		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

	</head>

	<body>

		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="<?php echo base_url(); ?>">NFQ užduotis</a>
				</div>
				<div id="navbar" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li>
							<a href="<?php echo base_url(); ?>">Pagrindinis</a>
						</li>
						<li>
							<a href="<?php echo base_url(); ?>books/create">Pridėti knygą</a>
						</li>
						<li>
							<a href="<?php echo base_url(); ?>genres/create">Pridėti žanrą</a>
						</li>
						<li>
							<a href="<?php echo base_url(); ?>authors/create">Pridėti autorių</a>
						</li>
					</ul>
				</div>
			</div>

		</nav>

		<div class="container">

			<div class="starter-template">
				<?php $this -> load -> view($view_module . '/' . $view_file); ?>
			</div>

		</div>

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script>
			window.jQuery || document.write('<script src="<?php echo base_url(); ?>
			assets / js / vendor / jquery.min.js"><\/script>')
		</script>
		<script src="<?php echo base_url(); ?>js/bootstrap.min.js"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<script src="<?php echo base_url(); ?>assets/js/ie10-viewport-bug-workaround.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.js"></script>
	</body>
