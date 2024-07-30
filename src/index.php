<?php
echo 'PHP version: ' . phpversion() . '<br><br>';

$dsn = 'mysql:host=mysql;dbname=my_database;charset=utf8mb4';
$username = 'user';
$password = 'password';

try {
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->exec('SET NAMES utf8mb4');

    $stmt = $pdo->prepare('SELECT * FROM pokemons');
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

    foreach ($result as $row) {
        $id               = $row['id'];
        $idType           = gettype($id);
        $no               = $row['no'];
        $noType           = gettype($no);
        $name             =  $row['name'];
        $nameType         = gettype($name);
        $flgEvolution     = $row['flg_evolution'];
        $flgEvolutionType = gettype($flgEvolution);
        $height           = $row['height'];
        $heightType       = gettype($height);
        $weight           = $row['weight'];
        $weightType       = gettype($weight);
        $memo             = $row['memo'];
        $memoType         = gettype($memo);
        $createdOn        = $row['created_on'];
        $createdOnType    = gettype($createdOn);
        $modifiedOn       = $row['modified_on'];
        $modifiedOnType   = gettype($modifiedOn);

        echo "id: $id($idType) / no: $no($noType) / name: $name(string) / flg_evolution: $flgEvolution($flgEvolutionType) / height: $height($heightType) / weight: $weight($weightType) / memo: $memo($memoType) / created_on: $createdOn($createdOnType) / modified_on: $modifiedOn($modifiedOnType)<br />";
    }
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}
