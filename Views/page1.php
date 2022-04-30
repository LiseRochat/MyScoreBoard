<h1>Bonjour Tous le monde Page 1 !</h1>
<!-- Je parcours les lignes de ma table presente dans ma base de données -->
<?php foreach ($datas as $ligne) :?>
<br>
----------------------------
<br>
Information 1 :<?php echo $ligne["data1"]; ?>
<br>
Information 2 :<?php echo $ligne["data1"]; ?>
<br>
----------------------------

<?php endforeach; ?>