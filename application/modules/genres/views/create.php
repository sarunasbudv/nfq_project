<h1><?= $headline ?></h1>
<?= validation_errors("<div class='alert alert-warning' role='alert'><strong>Įspėjimas! </strong>", "</div>") ?> 
<?php
if (isset($flash)) 
{
	echo $flash;
}
 ?>
<?php
$form_location = base_url() . "genres/create/";
?>
<div style="width:50%;">
<form class="form-horizontal" method="post" action="<?= $form_location ?>">
	<fieldset>
		<div class="control-group">
			<label class="control-label" for="typeahead">Žanro Pavadinimas </label>
			<div class="controls">
				<input type="text" class="form-control input-m" name="genre_title">
			</div>
		</div>
		<br/>
		<div class="form-actions">
			<button type="submit" class="btn btn-primary" name="submit" value="Submit">Išsaugoti</button>
		</div>
	</fieldset>
</form> 
</div>