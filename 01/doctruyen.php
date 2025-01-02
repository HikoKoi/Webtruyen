<?php
session_start();

// Kiểm tra xem người dùng đã đăng nhập hay chưa
if (!isset($_SESSION['username'])) {
    // Nếu chưa đăng nhập, chuyển hướng về trang đăng nhập
    header('Location: login.php');
    exit();
}
?>
<?php
require("connect.php");

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Giao Diện Truyện</title>
  <link rel="stylesheet" href="css/doc.css" />
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
                <button class="btn btn-light" data-bs-toggle="modal" data-bs-target="#searchModal" disabled>
                    <i style="color: white;" class="fas fa-search"></i>
                </button>
                <div class="dropdown">
                    <button class="btn btn-light dropdown-toggle" type="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        Xin chào, <?php echo $_SESSION['username']; ?>
                    </button>   
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="logout.php">Đăng xuất</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
  <main class="content">
    <div class="chapter-info">
      
      <h2 id="chapter_title">Chương 1</h2>
      <div class="buttons">
        <button class="btn-prev">Chương Trước</button>
        <button class="btn-next">Chương Sau</button>
      </div>
    </div>

    <div class="manga-viewer">
    <?php
    
            $story_id = isset($_GET['story_id']) ? intval($_GET['story_id']) : 1;
            $chapter_number = isset($_GET['chapter_number']) ? intval($_GET['chapter_number']) : 1;
            $user_id = $_SESSION['username'];

            // Truy vấn lưu lịch sử
            $sql = "INSERT INTO `history`(`user_id`, `story_id`) VALUES ('$user_id','$story_id');";
            $conn->query($sql);

                        
              // Truy vấn danh sách ảnh
            $sql = "SELECT image_path FROM pages WHERE story_id = $story_id AND chapter_number = $chapter_number;";
            $result = $conn->query($sql);

              // Kiểm tra và hiển thị ảnh
            if ($result->num_rows > 0) {
                
                while ($row = $result->fetch_assoc()) {
                    // Thay thế đường dẫn nội bộ thành URL
                    $image_url = str_replace('C:/xampp/htdocs/', 'http://localhost/', $row["image_path"]);
                    echo '<img src="' . htmlspecialchars($image_url) . '" alt="" style="max-width:100%; margin-bottom:10px;"><br>';
                }
            } else {
                echo "Không tìm thấy hình ảnh nào.";
            }


            $conn->close();
            ?>  

    </div>
  </main>

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
  <script>
  // Lấy `story_id` và `chapter_number` từ URL
  const urlParams = new URLSearchParams(window.location.search);
  let storyId = urlParams.get('story_id') || 1; // Mặc định là 1 nếu không có trong URL
  let chapterNumber = parseInt(urlParams.get('chapter_number')) || 1; // Mặc định là chương 1 

  // Hiển thị số chương hiện tại
  const chapterTitle = document.getElementById('chapter_title');
  chapterTitle.textContent = `Chương ${chapterNumber}`;
    // Lấy tham chiếu đến các nút
  const nextButton = document.querySelector('.btn-next');
  const prevButton = document.querySelector('.btn-prev');

  

  // Gắn sự kiện cho nút "Chương Sau"
  nextButton.addEventListener('click', () => {
    chapterNumber++; // Tăng chương lên 1
    window.location.href = `?story_id=${storyId}&chapter_number=${chapterNumber}`; // Điều hướng đến chương mới
  });

  // Gắn sự kiện cho nút "Chương Trước"
  prevButton.addEventListener('click', () => {
    if (chapterNumber > 1) {
      chapterNumber--; // Giảm chương đi 1, nếu lớn hơn 1
      window.location.href = `?story_id=${storyId}&chapter_number=${chapterNumber}`; // Điều hướng đến chương mới
    }
  });

  // Vô hiệu hóa nút "Chương Trước" nếu là chương đầu tiên
  if (chapterNumber <= 1) {
    prevButton.disabled = true;
    prevButton.style.cursor = 'not-allowed';
  }
  // Vô hiệu hóa nút "Chương Sau" nếu là chương cuối cùng
  if (chapterNumber >= 2) {
    nextButton.disabled = true;
    nextButton.style.cursor = 'not-allowed';
  }
  </script>
</body>

</html>