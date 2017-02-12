<h1><?= $headline ?></h1>
  
    <?php foreach($query->result() as $row) {  ?>
    	<div style="width:100%;">
    		<div style="float:left; width:50%; padding: 5px;">
    		<table >
    			<tr>
        			<td><b>Knygos Pavadinimas:</b> <br/> <?= $row->title ?></td>
      			</tr>
      			<tr>	
       				<td><b>Knygos Žanras (-ai):</b> <br/> <?= $row->genre_title ?></td>
      			</tr>
      			<tr>
      				<td><b>Autorius (-iai):</b> <br/> <?= $row->name ?></td>
      			</tr>
      			<tr>
      				<td><b>Išleidimo Metai:</b> <br/> <?= $row->year ?></td>
      			</tr>
      		</table>
    		</div>
    		<div style="float:right; width:50%; padding: 5px;"><b>Knygos Aprašymas:</b> <br/> <?= nl2br($row->description) ?></div>
    		
    	</div>
     <? } ?>