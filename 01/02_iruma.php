<?php
// Kiểm tra xem người dùng vào trang này bằng cách nào
if(!isset($_GET['page'])){
    header('Location:02_index.php');
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
    <title>Đọc Mairimashita! Iruma-kun</title>
    <link rel="stylesheet" href="css/main.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />

</head>

<body>
    <!-- Banner -->
    <section class="banner content-wrapper mt-4 d-block">
        <img class="abc" src="anh/niruma.jpg"
            alt="Banner">
        <!-- Main Content -->
        <main class="content">
            <div class="d-flex flex-wrap">
                <div class="col-md-2">
                    <img src="anh/diruma.jpg"
                        class="img-fluid rounded" alt="Manga Cover">
                </div>
                <div class="col-md-10 ps-md-4">
                    <h5>Tác giả : Osamu Nishi</h5>
                    <h1>Mairimashita! Iruma-kun</h1>
                    <p style="color: white;">11 giờ trước</p>
                    <div class="mt-3">
                        <a href="02_index.php?page=02_shounen"><span class="badge bg-secondary">Shounen</span></a>
                        <a href="02_index.php?page=02_comedy"><span class="badge bg-secondary">Comedy</span></a>
                        <a href="02_index.php?page=02_drama"><span class="badge bg-secondary">Drama</span></a>
                       
                    </div>
                    <div class="mt-3">
                        <!-- <button href="#" class="btn btn-primary" disabled>Đăng nhập để theo dõi</button> -->
                        <a href="doctruyen.php?story_id=5&chapter_number=1"><button href="#" class="btn btn-primary">Đọc Từ Chương 1</button></a>
                    </div>
                </div>
            </div>
        </main>
    </section>

    <section class="additional-info container mt-4 content-wrapper">
        <div class="row">
            <div class="col-md-8">
                <div class="card p-3 mb-4">
                    <div class="d-flex align-items-center">
                        <div class="me-3">
                            <i class="fas fa-user fa-2x"></i>
                        </div>
                        <div>
                            <h5 style="padding-right:0px;" class="mb-0">THEREADER</h5>
                            <small>21 TRUYỆN</small>
                        </div>
                    </div>
                    <p class="mt-3" style="text-align: left;">Mairimashita! Iruma-kun là câu chuyện kể về cậu bé Suzuki Iruma, người đã bị bố mẹ mình kí khế ước bán cho ác ma để đổi lấy tiền tài và bình an!</div>
                <div class="card p-3">
                    <h6 class="fw-bold" >MỚI NHẤT</h6>
                    <div class="d-flex justify-content-between">
                        <span>Có 1 chương đã được đăng gần đây</span>
                    </div>
                    <div class="chapter-list mt-3">
                        <div class="chapter-item p-2 d-flex justify-content-between align-items-center border-bottom">
                            <div class="text-align-left">
                                <a href="doctruyen.php?story_id=5&chapter_number=1" class="link"><h6>Chương 1</h6></a>
                                <small style="margin-right:150px;" >Không có tiêu đề</small>
                                <small class="d-block text-muted">11 giờ trước - 19.1K lượt xem - 1 bình luận</small>
                            </div>
                            <a href="doctruyen.php?story_id=5&chapter_number=1" class="btn btn-light">
                                <i class="fas fa-check"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <h6 class="fw-bold">CÙNG NHÓM DỊCH</h6>
                <ul class="list-unstyled">
                    <li class="d-flex align-items-center mb-2">
                        <img src="anh/dhero.jpg"
                            class="rounded me-2" alt="Comic Cover">
                        <div>
                            <a href="02_index.php?page=02_hero" class="text-decoration-none">My hero Academia</a>
                            <small class="d-block text-muted">C. 251 - 5 NGÀY TRƯỚC</small>
                        </div>
                    </li>
                    <li class="d-flex align-items-center mb-2">
                        <img src="anh/daot.jpg"
                            class="rounded me-2" alt="Comic Cover">
                        <div>
                            <a href="02_index.php?page=02_aot" class="text-decoration-none">Attack on titan</a>
                            <small class="d-block text-muted">C. 135 - 8 NGÀY TRƯỚC</small>
                        </div>
                    </li>
                    <li class="d-flex align-items-center mb-2">
                        <img src="anh/ddan.jpg"
                            class="rounded me-2" alt="Comic Cover">
                        <div>
                            <a href="02_index.php?page=02_dan" class="text-decoration-none">Dan Da Dan</a>
                            <small class="d-block text-muted">C. 122 - 1 NGÀY TRƯỚC</small>
                        </div>
                    </li>
                    <li class="d-flex align-items-center mb-2">
                        <img src="anh/dop.jpg"
                            class="rounded me-2" alt="Comic Cover">
                        <div>
                            <a href="02_index.php?page=02_op" class="text-decoration-none">One Piece</a>
                            <small class="d-block text-muted">C. 1075 - 6 NGÀY TRƯỚC</small>
                        </div>
                    </li>
                    <li class="d-flex align-items-center mb-2">
                        <img src="anh/dsolo.jpg"
                            class="rounded me-2" alt="Comic Cover">
                        <div>
                            <a href="02_index.php?page=02_solo" class="text-decoration-none">Solo Leveling</a>
                            <small class="d-block text-muted">C. 97 - 4 NGÀY TRƯỚC</small>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <section class="chapter-list container mt-4 content-wrapper">
        <div class="row">
            <div class="col-md-8">
                <div class="card p-3">
                    <h6 class="fw-bold">THÔNG TIN THÊM</h6>
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <span>7 chương đã đăng</span>
                        <span>13.1M lượt xem</span>
                    </div>
                    <div class="list-group">
                        <div class="list-group-item d-flex justify-content-between align-items-center">
                            <div>
                                <a href="doctruyen.php?story_id=5&chapter_number=1" class="link"><h6>Chương 1</h6></a>
                                <small>Không có tiêu đề</small>
                                <p class="text-muted">6 tháng trước - 5.8M lượt xem - 21 bình luận</p>
                            </div>
                            <a href="doctruyen.php?story_id=5&chapter_number=1" class="btn btn-light">
                                <i class="fas fa-check"></i>
                            </a>
                        </div>
                        <div class="list-group-item d-flex justify-content-between align-items-center">
                            <div>
                                <a href="doctruyen.php?story_id=5&chapter_number=2" class="link"><h6>Chương 2</h6></a>
                                <small>Không có tiêu đề</small>
                                <p class="text-muted">5 tháng trước - 3.5M lượt xem - 8 bình luận</p>
                            </div>
                            <a href="doctruyen.php?story_id=5&chapter_number=2" class="btn btn-light">
                                <i class="fas fa-check"></i>
                            </a>
                        </div>
                        <div class="list-group-item d-flex justify-content-between align-items-center">
                            <div>
                                <a href="#" class="link"><h6>Chương 3</h6></a>
                                <small>Không có tiêu đề</small>
                                <p class="text-muted">4 tháng trước - 2.1M lượt xem - 12 bình luận</p>
                            </div>
                            <a href="#" class="btn btn-light">
                                <i class="fas fa-lock"></i>
                            </a>
                        </div>
                        <div class="list-group-item d-flex justify-content-between align-items-center">
                            <div>
                                <a href="#" class="link"><h6>Chương 4</h6></a>
                                <small>Không có tiêu đề</small>
                                <p class="text-muted">3 tháng trước - 1.9M lượt xem - 16 bình luận</p>
                            </div>
                            <a href="#" class="btn btn-light">
                                <i class="fas fa-lock"></i>
                            </a>
                        </div>
                        <div class="list-group-item d-flex justify-content-between align-items-center">
                            <div>
                                <a href="#" class="link"><h6>Chương 5</h6></a>
                                <small>Không có tiêu đề</small>
                                <p class="text-muted">2 tháng trước - 1.3M lượt xem - 5 bình luận</p>
                            </div>
                            <a href="#" class="btn btn-light">
                                <i class="fas fa-lock"></i>
                            </a>
                        </div>
                        <div class="list-group-item d-flex justify-content-between align-items-center">
                            <div class="text-align-left">
                                <a href="#" class="link"><h6>Chương 6</h6></a>
                                <small>Không có tiêu đề</small>
                                <p class="text-muted">1 tháng trước - 1.5M lượt xem - 13 bình luận</p>
                            </div>
                            <a href="#" class="btn btn-light">
                                <i class="fas fa-lock"></i>
                            </a>
                        </div>
                        <div class="list-group-item d-flex justify-content-between align-items-center">
                            <div>
                                <a href="#" class="link"><h6>Chương 7</h6></a>
                                <small>Không có tiêu đề</small>
                                <p class="text-muted">11 giờ trước - 19.1K lượt xem - 1 bình luận</p>
                            </div>
                            <a href="#" class="btn btn-light">
                                <i class="fas fa-lock"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <h6 class="fw-bold" style="margin-bottom: 20px;">ĐỀ XUẤT</h6>
                <ul class="list-unstyled">
                    <li class="d-flex mb-3">
                        <img src="anh/daot.jpg"
                            alt="Comic Cover" class="me-3 rounded">
                        <div>
                            <a href="02_index.php?page=02_aot" class="text-decoration-none">Attack on Titan</a>
                            <small class="d-block text-muted">C. 135 - 8 NGÀY TRƯỚC</small>
                        </div>
                    </li>
                    <li class="d-flex mb-3">
                        <img src="anh/ddan.jpg"
                            alt="Comic Cover" class="me-3 rounded">
                        <div>
                            <a href="02_index.php?page=02_dan" class="text-decoration-none">Dan Da Dan</a>
                            <small class="d-block text-muted">C. 122 - 1 NGÀY TRƯỚC</small>
                        </div>
                    </li>
                    <li class="d-flex mb-3">
                        <img src="anh/diruma.jpg"
                            alt="Comic Cover" class="me-3 rounded">
                        <div>
                            <a href="02_index.php?page=02_iruma" class="text-decoration-none">Mairimashita! Iruma-kun</a>
                            <small class="d-block text-muted">C. 373 - 3 NGÀY TRƯỚC</small>
                        </div>
                    </li>
                    <li class="d-flex mb-3">
                        <img src="anh/dhero.jpg"
                            alt="Comic Cover" class="me-3 rounded">
                        <div>
                            <a href="02_index.php?page=02_hero" class="text-decoration-none">My hero Academia</a>
                            <small class="d-block text-muted">C. 251 - 5 NGÀY TRƯỚC</small>
                        </div>
                    </li>
                    <li class="d-flex mb-3">
                        <img src="anh/dop.jpg"
                            alt="Comic Cover" class="me-3 rounded">
                        <div>
                            <a href="02_index.php?page=02_op" class="text-decoration-none">One Piece</a>
                            <small class="d-block text-muted">C. 1075 - 6 NGÀY TRƯỚC</small>
                        </div>
                    </li>
                    <li class="d-flex mb-3">
                        <img src="anh/dsolo.jpg"
                            alt="Comic Cover" class="me-3 rounded">
                        <div>
                            <a href="02_index.php?page=02_solo" class="text-decoration-none">Solo Leveling</a>
                            <small class="d-block text-muted">C. 97 - 4 NGÀY TRƯỚC</small>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>
</body>

</html>