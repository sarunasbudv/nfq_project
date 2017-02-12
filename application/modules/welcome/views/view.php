<h1><?= $headline ?></h1>
<div style="float:right; margin-right:50px; margin-bottom:20px;">
<?php
$form_location = base_url();
?>

<form action="<?= $form_location ?>" method = "post">
<div class="search">
	<input type="text" class="form-control input-m" maxlength="64" name = "keyword" placeholder="Paieška" />
</div>
</form>
</div>
<? if ($search==FALSE){ ?>
<p><?= $showing_statement ?></p>
<?= $pagination ?>
<? } ?>
  <table data-toggle="table"  data-sort-name="name" data-sort-order="desc">
    <thead>
      <tr>
        <th data-field="name" data-sortable="true">Knygos pavadinimas</th>
        <th data-field="genre" data-sortable="true">Žanras (-ai)</th>
        <th data-field="author" data-sortable="true">Autorius (-iai)</th>
        <th data-field="year" data-sortable="true">Išleidimo metai</th>
      </tr>
    </thead>
    <tbody>
    <?php foreach($query->result() as $row) {  ?>
      <tr>
        <td><a href="<?php echo base_url(); ?>book/view/<?= $row->id ?>"><?= $row->title ?></a></td>
        <td><?= $row->genre_title ?></td>
        <td><?= $row->name ?></td>
        <td><?= $row->year ?></td> 
      </tr>
     <? } ?>
    </tbody>
  </table>
<? if ($search==FALSE){ ?>
<?= $pagination ?>
<? } ?>




