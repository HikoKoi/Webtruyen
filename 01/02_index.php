<?php
session_start();
if(!isset($_GET['page'])){
    header('Location:02_index.php?page=02_giaodien');
}
// Kiểm tra xem người dùng đã đăng nhập hay chưa
if (!isset($_SESSION['username'])) {
    // Nếu chưa đăng nhập, chuyển hướng về trang đăng nhập
    header('Location: login.php');
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web</title>
    <link rel="stylesheet" href="css/index.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" /> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
</head>
<body>
    <!-- Header -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <header class="sticky-header navbar navbar-expand-lg navbar-light bg-light py-3">
        <div class="container d-flex justify-content-between align-items-center">
            <div class="navbar-nav">
                <a class="nav-link" href="02_index.php?page=02_giaodien">Trang Chủ</a>
                <a class="nav-link" href="02_index.php?page=02_giaodien">Discord</a>
                <a class="nav-link" href="02_index.php?page=02_giaodien">Facebook</a>
            </div>
            <div class="name mx-auto" style="width: 25.45%;">
                <a href="02_index.php?page=02_giaodien" style="text-decoration: none;color: black;"><h1 class="text-uppercase fw-bold">BLACK WEB</h1></a>
            </div>
            <div class="d-flex align-items-center">
                <button class="btn btn-light" data-bs-toggle="modal" data-bs-target="#searchModal">
                    <i class="fas fa-search"></i>
                </button>
                <div class="dropdown">
                    <button class="btn btn-light dropdown-toggle" type="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        Xin chào, <?php echo $_SESSION['username']; ?>
                    </button>   
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="logout.php">Đăng xuất</a></li>
                        <li><a class="dropdown-item" href="02_index.php?page=history">Lịch sử đọc</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>

    <!-- Modal Search  -->
    <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="searchModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="searchModalLabel">Tìm kiếm</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="searchInput" class="form-label">Nhập từ khóa:</label>
                            <input type="text" class="form-control" id="searchInput" placeholder="Tìm kiếm...">
                        </div>
                        <div class="result-container">
                            <!-- Các thông tin truyện tranh sẽ được hiển thị tại đây -->
                            <a href="02_index.php?page=02_op" class="link"><div class="manga-item" data-name="one piece">
                                <img src="anh/dop.jpg" alt="One Piece">
                                <h3>One Piece</h3>
                                <p>Thể loại: Action, Shounen,...</p>
                                <p>Luffy và băng Mũ Rơm tìm kiếm kho báu One Piece.</p>
                            </div></a>
                            <a href="02_index.php?page=02_solo" class="link"><div class="manga-item" data-name="solo leveling">
                                <img src="anh/dsolo.jpg" alt="Solo leveling">
                                <h3>Solo Leveling</h3>
                                <p>Thể loại: Action, Adventure, Shounen,...</p>
                                <p>Hành trình từ thợ săn kém cỏi đến hạng S mạnh nhất thế giới.</p>
                            </div></a>
                            <a href="02_index.php?page=02_dan" class="link"><div class="manga-item" data-name="dan da dan">
                                <img src="anh/ddan.jpg" alt="vutrangsieunhien">
                                <h3>Dan Da Dan</h3>
                                <p>Thể loại: Action, Comedy,...</p>
                                <p>Chuyện tình bi hài pha lẫn kinh dị và huyền bí của 2 nhân vật chính.</p>
                            </div></a>
                            <a href="02_index.php?page=02_aot" class="link"><div class="manga-item" data-name="attack on titan">
                                <img src="anh/daot.jpg" alt="Attack On Titan">
                                <h3>Attack On Titan</h3>
                                <p>Thể loại: Action, Horor,...</p>
                                <p>100 năm trước,người khổng lồ Titan đã tấn công và đẩy loài người tới bờ vực tuyệt chủng.</p>
                            </div></a>
                            <a href="02_index.php?page=02_hero" class="link"><div class="manga-item" data-name="my hero academia">
                                <img src="anh/dhero.jpg" alt="My Hero Academia">
                                <h3>My Hero Academia</h3>
                                <p>Thể loại: Action, Shounen,...</p>
                                <p>Câu chuyện về Izuku Midoriya, từ một kẻ bất tài trở thành một siêu anh hùng.</p>
                            </div></a>
                            <a href="02_index.php?page=02_iruma" class="link"><div class="manga-item" data-name="mairimashita! iruma-kun">
                                <img src="anh/diruma.jpg" alt="Mairimashita! Iruma-kun">
                                <h3>Mairimashita! Iruma-kun</h3>
                                <p>Thể loại: Drama, Shounen, ...</p>
                                <p>Câu chuyện kể về cậu bé Suzuki Iruma, người đã bị bố mẹ mình kí khế ước bán cho ác ma để đổi lấy tiền tài và bình an.</p>
                            </div></a>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Script Search  -->
    <script>
        document.addEventListener('DOMContentLoaded', function () {    // Lấy các phần tử cần thiết
        const searchInput = document.getElementById('searchInput');
        const mangaItems = document.querySelectorAll('.manga-item');
        

    // Lắng nghe sự kiện 'input' trên thanh tìm kiếm
        searchInput.addEventListener('input', function () {
        const filter = searchInput.value.toLowerCase().trim();
       
        // Duyệt qua tất cả các truyện để kiểm tra từ khóa
        if (filter === '') {
                // Nếu thanh tìm kiếm rỗng, ẩn tất cả các truyện
                mangaItems.forEach(item => {
                    item.style.display = 'none';
                });} else{
        mangaItems.forEach(item => {
            const mangaName = item.getAttribute('data-name');
            if (mangaName.includes(filter)) {
                item.style.display = 'block'; // Hiển thị truyện phù hợp
            } else {
                item.style.display = 'none'; // Ẩn truyện không phù hợp
            }
        });}
    });
});
    </script>



    <!-- Icon Messenger  -->
    <div class="fixed-icon">
        <a href="02_index.php?page=02_giaodien">
            <img src="anh/mess.jpg" alt="Messenger Icon">
        </a>
    </div>




    <!-- Php  -->
    <?php
        include("connect.php");
        if(isset($_GET['page'])){
            switch($_GET['page']){
                case '02_giaodien':
                    include "02_giaodien.php";
                    break;
                case 'login':
                    include "login.php";
                    break;
                case '02_op':
                    include "02_op.php";
                    break;
                case '02_solo':
                    include "02_solo.php";
                    break;
                case '02_dan':
                    include "02_dan.php";
                    break;
                case '02_aot':
                    include "02_aot.php";
                    break;
                case '02_hero':
                    include "02_hero.php";
                    break;
                case '02_iruma':
                    include "02_iruma.php";
                    break;
                case '02_action':
                    include "02_action.php";
                    break;
                case '02_adventure':
                    include "02_adventure.php";
                    break;
                case '02_comedy':
                    include "02_comedy.php";
                    break;
                case '02_drama':
                    include "02_drama.php";
                    break;
                case '02_shounen':
                    include "02_shounen.php";
                    break;
                case '02_mystery':
                    include "02_mystery.php";
                    break;
                case 'history':
                    include "history.php";
                    break;
            }
        }
        else{
            include "02_giaodien.php";
        }
        
    ?>





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
                <p class="mb-1">Contact for work, copyright and more: <a href="02_index.php?page=02_giaodien"
                        class="text-success">Black.Web@gmail.com</a></p>
                <ul class="list-inline">
                    <li class="list-inline-item"><a href="02_index.php?page=02_giaodien" class="text-white text-decoration-none">Điều khoản dịch
                            vụ</a></li>
                    <li class="list-inline-item"><a href="02_index.php?page=02_giaodien" class="text-white text-decoration-none">Chính sách bảo
                            mật</a></li>
                </ul>
                <p class="mt-3">&copy; 2024 - <a href="02_index.php?page=02_giaodien" class="text-white text-decoration-none">BlackWeb.net</a></p>
            </div>
        </div>
    </footer>
</body>
</html>