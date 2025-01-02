
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web</title>
    <link rel="stylesheet" href="css/login.css"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" /> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
</head>
<body>
    <!-- Header -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <header class="sticky-header navbar navbar-expand-lg navbar-light bg-light py-3">
        <div class="container d-flex justify-content-between align-items-center">
            <div class="navbar-nav">
                <a class="nav-link" href="01_index.php?page=01_giaodien">Trang Chủ</a>
                <a class="nav-link" href="01_index.php?page=01_giaodien">Discord</a>
                <a class="nav-link" href="01_index.php?page=01_giaodien">Facebook</a>
            </div>
            <div class="name mx-auto" style="width: 32%;">
                <a href="01_index.php?page=01_giaodien" style="text-decoration: none;color: black;"><h1 class="text-uppercase fw-bold">BLACK WEB</h1></a>
            </div>
            <div class="d-flex align-items-center">
                <button class="btn btn-light" data-bs-toggle="modal" data-bs-target="#searchModal" disabled>
                    <i style="color: white" class="fas fa-search"></i>
                </button>
                <div class="dropdown">
                    <button class="btn btn-light dropdown-toggle" type="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        <i class="fa-solid fa-bars"></i>
                    </button>   
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="login.php">Người dùng</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>

 


    <!-- Icon Messenger  -->
    <div class="fixed-icon">
        <a href="01_index.php?page=01_giaodien">
            <img src="anh/mess.jpg" alt="Messenger Icon">
        </a>
    </div>




     <!-- Login Container -->
     <div class="login-container" style="margin-top: 50px;">
            <!-- Avatar -->
            <img src="anh/avatar.png" alt="Avatar" class="avatar">
            <!-- Login Form -->
            <form id="loginForm" action="login.php" method="post">
                <input type="text" name="username" placeholder="Nhập tên đăng nhập của bạn" id="user" required>
                <input type="password" name="password" placeholder="Nhập mật khẩu của bạn" id="pass" required>
                <button type="submit">Đăng nhập</button>
                <div id="error-message" class="error"></div>
            </form>
            <?php
            session_start();
            if(isset($_GET['page'])){
                switch($_GET['page']){
                    case 'register':
                        echo "<p style='color: green; padding-top: 5px;' class='warning'>Đăng ký thành công</p>";
                        break;
                }
            }
            
            include('connect.php');
            if(isset($_POST['username']) && isset($_POST['password'])){
                $username = $_POST['username'];
                $password = $_POST['password'];



                $sql = "SELECT * from `user` where username = '$username' and password = '$password' ";
                $result = $conn->query($sql);
                if ($result->num_rows > 0){
                    $user = $result->fetch_assoc();
                    $_SESSION['username'] = $user['username'];
                    header('location: 02_index.php');
                    // echo $_SESSION['username'];
                    
                }
                else{
                    echo "<p style='color: red; padding-top: 5px;' class='warning'>Tên đăng nhập hoặc mật khẩu không hợp lệ</p>";
                }

            }
            ?>
            <!-- Bottom Links -->
            <div class="bottom-container">
                <div class="checkbox-container">
                    <input type="checkbox" id="stayIn" checked>
                    <label for="stayIn">Ghi nhớ đăng nhập</label>
                </div>
                <div class="help-link">
                    <a href="help.php">Cần trợ giúp?</a>
                </div>
            </div>
            <!-- Register Link -->
            <div class="register-container">
                <p>Chưa có tài khoản? <a href="register.php">Đăng ký ngay</a></p>
            </div>
        </div>






    <!-- Footer  -->
    <footer class="footer mt-5">
        <div class="container-fluid py-4">
            <div class="text-center text-muted mb-4">
                <p>Đọc truyện tranh manga (manhua, manhwa) sớm nhất với bản đẹp chất lượng sắc nét chỉ có tại
                    <strong>Black Web</strong>. Được cập nhật liên tục trên
                    <strong>BlackWeb.Net</strong>.
                </p>
            </div>

            <div class="footer-bottom py-4 text-center text-white">
                <p class="mb-1">Contact for work, copyright and more: <a href="01_index.php?page=01_giaodien"
                        class="text-success">Black.Web@gmail.com</a></p>
                <ul class="list-inline">
                    <li class="list-inline-item"><a href="01_index.php?page=01_giaodien" class="text-white text-decoration-none">Điều khoản dịch
                            vụ</a></li>
                    <li class="list-inline-item"><a href="01_index.php?page=01_giaodien" class="text-white text-decoration-none">Chính sách bảo
                            mật</a></li>
                </ul>
                <p class="mt-3">&copy; 2024 - <a href="01_index.php?page=01_giaodien" class="text-white text-decoration-none">BlackWeb.net</a></p>
            </div>
        </div>
    </footer>
</body>
</html>