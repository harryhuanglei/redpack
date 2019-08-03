<?php
require_once './include/common.inc.php'; ?>

<?php
switch ($type) {
	case "pc":
	if($cfg['config']['videoww']==1){
		exit(tohtml($cfg['config']['livefp']) );}
		else if($cfg['config']['videoww']==0){
		exit(tohtml($cfg['config']['livefp']));
		}
		break;
	case "m":
		$yyid = $cfg['config']['phonefp'];
		if($cfg['config']['livetype']==1){ yyvideo($yyid,1); }
		if($cfg['config']['livetype']==0){ yyvideo($yyid,2); }
		if($cfg['config']['livetype']==2){exit(tohtml($yyid));}
		break;
} ?>
