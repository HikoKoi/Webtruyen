<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lịch Sử Đọc</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .table-container {
            margin: 20px auto;
            width: 80%;
        }
        .table th, .table td {
            vertical-align: middle;
        }
        .table img {
            max-width: 100px;
            height: auto;
        }
    </style>
</head>
<body>
    <div class="container table-container">
        <table class="table table-bordered table-hover text-center">
            <thead class="table-dark">
                <tr>
                    <th colspan="3">DANH SÁCH LỊCH SỬ ĐỌC</th>
                </tr>
                <tr>
                    <th>Ảnh</th>
                    <th>Tên Truyện</th>
                    <th>Chức Năng</th>
                </tr>
            </thead>
            <tbody>
                <?php
                require("connect.php");

                $user_id = $_SESSION['username'];

                $sql = "SELECT * FROM `history` WHERE user_id = '$user_id'";
                $result = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_assoc($result)) {
                    switch($row["story_id"]){
                        case 1:
                            $story_name = "Dan Da Dan";
                            $src = "anh/ddan.jpg";
                            $str = "02_index.php?page=02_dan";
                            break;
                        case 2:
                            $story_name = "One Piece";
                            $src = "anh/dop.jpg";
                            $str = "02_index.php?page=02_op";
                            break;
                        case 3:
                            $story_name = "Attack on Titan";
                            $src = "anh/daot.jpg";
                            $str = "02_index.php?page=02_aot";
                            break;
                        case 4:
                            $story_name = "Solo Leveling";
                            $src = "anh/dsolo.jpg";
                            $str = "02_index.php?page=02_solo";
                            break;
                        case 5:
                            $story_name = "Mairimashita! Iruma-kun";
                            $src = "anh/diruma.jpg";
                            $str = "02_index.php?page=02_iruma";
                            break;
                        case 6:
                            $story_name = "My Hero Academia";
                            $src = "anh/dhero.jpg";
                            $str = "02_index.php?page=02_hero";
                            break;
                    }
                
                ?>
                <tr>
                    <td><img src="<?php echo $src; ?>" ></td>
                    <td><?php echo $story_name; ?></td>
                    <td>
                    <a href="<?php echo $str; ?>" class='btn btn-primary'>Đọc Tiếp</a>
                    </td>
                </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>