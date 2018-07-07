<?php
$sep='';
if(isset($users)){

	foreach($users as $row){ 
		 echo $row['name'].','.$row['level'].','.$row['attack'].','.$row['defence'].','.$row['health'].','.$row['user'].','.$sep ;
	}
}

?>