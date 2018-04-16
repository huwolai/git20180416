function randomkeys($length) {
			$returnStr='';
			$pattern = '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLOMNOPQRSTUVWXYZ';
			for($i = 0; $i < $length; $i ++) {
				$returnStr .= $pattern {mt_rand ( 0, 61 )}; //生成php随机数
			}
			return $returnStr;
		}

		$a=array();
		
		while(count($a)<300)$a[strtoupper(randomkeys(8))]='';
		
		
		
		foreach($a as $k => $v){
			$sql="INSERT INTO `coupon_new` VALUES (null, '".$k."', '', '', '', null, null, null, null, null, null,null);";
			echo $sql;
			echo "<br />";			
		}
		
		$id=0;
		foreach($a as $k => $v){
			
			echo ++$id;
			echo ",";
			echo $k;
			echo "<br />";			
		}
		
		
		
		
		
		
		exit;