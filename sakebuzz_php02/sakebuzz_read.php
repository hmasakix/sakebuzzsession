<?php
session_start();
include('functions.php');
check_session_id();

// DB接続
$dbn ='mysql:dbname=gs_php_dev16;charset=utf8mb4;port=3306;host=localhost';
$user = 'root';
$pwd = '';

try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

// SQL作成&実行
$sql = 'SELECT * FROM sakebuzz';
$stmt = $pdo->prepare($sql);

try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

// SQL実行の処理
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
$output = "";
foreach ($result as $record) {
  $output .= "
    <tr> 
     <td>{$record["product_name"]}</td>
     <td>{$record["flavor"]}</td>
     <td>{$record["restaurant"]}</td>
    </tr>
  ";
}

?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>sakebuzz（一覧画面）</title>
  <style>
    table {
      width: 100%;
      border-collapse: collapse;
      
    }
    th, td {
      border: 1px solid black;
      padding: 8px;
      text-align: left;
      background-color: #ffc1cc;
    }
    @media screen and (max-width: 600px) {
      table, thead, tbody, th, td, tr {
        display: block;
        
    }
    thead tr {
      position: absolute;
      top: -9999px;
      left: -9999px;
    }
    tr {
      border: 1px solid black;
      
    }
    td {
      border: none;
      border-bottom: 1px solid black;
      position: relative;
      padding-left: 50%;
      
    }
    td:before {
      position: absolute;
      top: 6px;
      left: 6px;
      width: 45%;
      padding-right: 10px;
      white-space: nowrap;
      content: attr(data-label);
      font-weight: bold;
    }
    }
  </style>
</head>

<body>
  <fieldset>
    <legend>sakebuzz（一覧画面）</legend>
    <table>
      <thead>
        <tr>
            <th>お酒の名前</th> 
            <th>味の特徴</th>
            <th>お店の名前</th>
        </tr>
      </thead>
      <tbody>
        <!-- ここに<tr><td>product_name</td><td>flavor</td><td>restaurant</td></tr>の形でデータが入る -->
        <?= $output ?>
      </tbody>
    </table>
    <a href="sakebuzz_input.php">入力画面</a>  
    <a href="sakebuzz_logout.php">ログアウト</a>
 
  </fieldset>
</body>

</html>