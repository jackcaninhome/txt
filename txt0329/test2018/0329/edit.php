<?php
if( !isset($_GET['id']) || empty ($_GET['id']))
{
	echo '不對';
	echo '<a href="list.php">回到列表</a>';
	exit;
}

//$db = new PDO('連線字串',帳號,密碼,額外參數);
//$db = new PDO('mysql:host=localhost;dbname=test0329;charset=utf8'
//	,'mememe','123456' );
try {
	$db = new PDO('mysql:host=localhost;dbname=test0329;charset=utf8'
		,'mememe','123456', array( 
			PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
			PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
		) );
}catch(PDOException $err) {
	echo "ERROR:";
	echo $err->getMessage();  //真實世界不這樣做
	echo '<a href="list.php">回到列表</a>';
	exit;
}

//echo "連線成功";

$stmt = $db->prepare('select * from moneybook where m_id =?');
$stmt->execute([$_GET['id']]);
//echo '新增了';
//echo $stmt->rowCount();
//echo '筆資料';


$row =$stmt->fetch();
if (!$row){
	echo '資料不存在';
	echo '<a href="list.php">回到列表</a>';
	exit; 	
}
?>

<form method="POST" action="update.php">
	<input type="hidden" name="id" value="<?php echo $row['m_id']; ?>">
	請輸入商品：<input type="text" name="prod" value=<?php echo $row['name']; ?>">
	金額：<input type="text" name="price" value=<?php echo $row['cost']; ?>">
	<input type="submit"> <a href="list.php">取消</a>
</form>


