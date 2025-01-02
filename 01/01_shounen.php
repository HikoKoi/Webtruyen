<?php
// Kiểm tra xem người dùng vào trang này bằng cách nào
if(!isset($_GET['page'])){
    header('Location:01_index.php?page=01_giaodien');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web</title>
    <link rel="stylesheet" href="index.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" /> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
</head>
<body>

    <!-- Mới Cập Nhật -->
    <div class="container">
        <h1>Shounen</h1>
        <div class="grid">
            <a href="01_index.php?page=01_solo" class="link"><div class="card">
                <img src="anh/nsolo.jpg" alt="solo leveling">
                <h2>Solo Leveling</h2>
            </div></a>
            <a href="01_index.php?page=01_op" class="link"><div class="card">
                <img src="anh/nop.jpg" alt="One piece">
                <h2>One Piece</h2>
            </div></a>
            <a href="01_index.php?page=01_aot" class="link"><div class="card">
                <img src="anh/naot.jpg" alt="Attack on titan">
                <h2>Attack on Titan</h2>
            </div></a>
            <a href="01_index.php?page=01_hero" class="link"><div class="card">
                <img src="anh/nhero.jpg" alt="My Hero Academia">
                <h2>My hero Academia</h2>
            </div></a>
            <a href="01_index.php?page=01_iruma" class="link"><div class="card">
                <img src="anh/niruma.jpg" alt="Mairimashita Iruma-kun">
                <h2>Mairimashita! Iruma-kun</h2>
            </div></a>
        </div>
        <h1>Truyện Khác Cùng Nhóm Dịch</h1>
        <div class="grid">
            <a href="01_index.php?page=01_dan"class="link" ><div class="card">
                <img src="anh/ndan.jpg" alt="vutrangsieunhien">
                <h2>Dan Da Dan</h2>
            </div></a>
            
        </div>
    </div>
</body>
</html>