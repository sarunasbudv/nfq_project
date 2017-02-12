<h1><?= $headline ?></h1>
<?= validation_errors("<div class='alert alert-warning' role='alert'><strong>Įspėjimas! </strong>", "</div>") ?> 
<?php
if (isset($flash)) 
{
	echo $flash;
}
 ?>
<?php
$form_location = base_url() . "books/create/";
?>
<div style="width:50%;">
<form class="form-horizontal" method="post" action="<?= $form_location ?>">
	<fieldset>
		<div class="control-group">
			<label class="control-label" for="typeahead">Knygos Pavadinimas </label>
			<div class="controls">
				<input type="text" class="form-control" name="title">
			</div>
			
			<label class="control-label" for="typeahead">Išleidimo Metai </label>
			<div class="controls">
				<input type="text" class="form-control" name="year">
			</div>
			
			<label class="control-label" for="typeahead">Knygos Aprašymas </label>
			<div class="controls">
				<textarea class="form-control" rows="5" name="description"></textarea>
			</div>
			
			<label class="control-label" for="typeahead">Pasirinkite Knygos Autorius </label>
			<div class="controls">
			<?	
				$additional_dd_code= 'class="form-control" size="15"';
				echo form_multiselect('authors[]', $author_options, '', $additional_dd_code); 
			?>
			</div>
			
			<label class="control-label" for="typeahead">Pasirinkite Knygos Žanrus </label>
			<div class="controls">
			<?	
				$additional_dd_code= 'class="form-control" size="15"';
				echo form_multiselect('genres[]', $genre_options, '', $additional_dd_code); 
			?>
			</div>
			
		</div>
		<br/>
		<div class="form-actions">
			<button type="submit" class="btn btn-primary" name="submit" value="Submit">Išsaugoti</button>
		</div>
	</fieldset>
</form> 
</div>