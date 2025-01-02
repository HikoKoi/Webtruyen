<?php
// Kiểm tra xem người dùng vào trang này bằng cách nào
if(!isset($_GET['page'])){
    header('Location:02_index.php?page=02_giaodien');
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
    <!-- Slider -->
    <div class="slider-container">
        <div class="slides">
            <!-- Slide 1 -->
            <div class="slide" id="slide1">
                <a href="02_index.php?page=02_aot"><img src="anh/naot.jpg" alt="Banner 1"></a>
                <div class="slide-info" data-title="Attack On TiTan"
                    data-desc="Hơn 100 năm trước,người khổng lồ tấn công...">
                </div>
            </div>
            <!-- Slide 2 -->
            <div class="slide" id="slide2">
                <a href="02_index.php?page=02_dan"><img src="anh/ndan.jpg" alt="Banner 2"></a>
                <div class="slide-info" data-title="sieunhienvutrang.html"
                    data-desc="Câu chuyện hấp dẫn về cuộc phiêu lưu kỳ thú...">
                </div>
            </div>
            <!-- Slide 3 -->
            <div class="slide" id="slide3">
                <a href="02_index.php?page=02_hero"><img src="anh/nhero.jpg" alt="Banner 3"></a>
                <div class="slide-info" data-title="Another Great Story" data-desc="Thêm nội dung thú vị...">
                </div>
            </div>
            <!-- Slide 4 -->
            <div class="slide" id="slide4">
                <a href="02_index.php?page=02_solo"><img src="anh/nsolo.jpg" alt="Banner 4"></a>
                <div class="slide-info" data-title="solo leveling" data-desc="Thêm nội dung thú vị...">
                </div>
            </div>
            <!-- slide 5 -->
            <div class="slide" id="slide5">
                <a href="02_index.php?page=02_op"><img src="anh/nop.jpg" alt="Banner 5"></a>
                <div class="slide-info" data-title="one piece" data-desc="Thêm nội dung thú vị...">
                </div>
            </div>
            <!-- slide 6 -->
            <div class="slide" id="slide6">
                <a href="02_index.php?page=02_iruma"><img src="anh/niruma.jpg"  alt="Banner 6"></a>
                <div class="slide-info" data-title="iruma kun" data-desc="Thêm nội dung thú vị...">
                </div>
            </div>
        </div>

        <div class="dots">
            <button onclick="showSlide(1)"></button>
            <button onclick="showSlide(2)"></button>
            <button onclick="showSlide(3)"></button>
            <button onclick="showSlide(4)"></button>
            <button onclick="showSlide(5)"></button>
            <button onclick="showSlide(6)"></button>
        </div>
    </div>




    <!-- Mới Cập Nhật -->
    <div class="container">
        <h1>Mới Cập Nhật</h1>
        <div class="grid">
            <a href="02_index.php?page=02_solo" class="link"><div class="card">
                <img src="anh/nsolo.jpg" alt="solo leveling">
                <h2>Solo Leveling</h2>
            </div></a>
            <a href="02_index.php?page=02_op" class="link"><div class="card">
                <img src="anh/nop.jpg" alt="One piece">
                <h2>One Piece</h2>
            </div></a>
            <a href="02_index.php?page=02_aot" class="link"><div class="card">
                <img src="anh/naot.jpg" alt="Attack on titan">
                <h2>Attack on Titan</h2>
            </div></a>
            <a href="02_index.php?page=02_iruma" class="link"><div class="card">
                <img src="anh/niruma.jpg" alt="Mairimashita Iruma-kun">
                <h2>Mairimashita! Iruma-kun</h2>
            </div></a>
            <a href="02_index.php?page=02_dan"class="link" ><div class="card">
                <img src="anh/ndan.jpg" alt="vutrangsieunhien">
                <h2>Dan Da Dan</h2>
            </div></a>
        </div>
        <h1>Truyện Mới</h1>
        <div class="grid">
            <a href="02_index.php?page=02_hero" class="link"><div class="card">
                <img src="anh/nhero.jpg" alt="My Hero Academia">
                <h2>My hero Academia</h2>
            </div></a>
            <a href="02_index.php?page=02_solo" class="link"><div class="card">
                <img src="anh/nsolo.jpg" alt="Solo leveling">
                <h2>Solo leveling</h2>
            </div></a>
            <a href="02_index.php?page=02_dan" class="link"><div class="card">
                <img src="anh/ndan.jpg" alt="vutrangsieunhien">
                <h2>Dan Da Dan</h2>
            </div></a>
            <a href="02_index.php?page=02_aot" class="link"><div class="card">
                <img src="anh/naot.jpg" alt="Attack on titan">
                <h2>Attack on Titan</h2>
            </div></a>
            <a href="02_index.php?page=02_op" class="link"><div class="card">
                <img src="anh/nop.jpg" alt="One Piece">
                <h2>One Piece</h2>
            </div></a>
        </div>
    </div>

    <!-- Truyện Nổi Bật -->
    <div class="highlight-section">
        <h1>Truyện Nổi Bật</h1>
        <div class="tabs">
            <button id="we" onclick="showContent('week')" style=" background: #fff;color: #00509e;" class="tab">Tuần</button>
            <button id="mon" onclick="showContent('month')" class="tab">Tháng</button>
            <button id="al" onclick="showContent('all')" class="tab">Mọi Lúc</button>
        </div>
        <div class="highlight-grid active" style="display: block;" id="week">
            <div  class="highlight-card">
                <img src="anh/ddan.jpg" alt="Danadan">
                <div class="info" >
                    <h2>Dan Da Dan</h2>
                    <p>Chương 122 - 1 ngày trước</p>
                    <p>341,7K lượt xem</p>
                </div>
            </div>
            <div class="highlight-card">
                <img src="anh/diruma.jpg" alt="Mairimashita! Iruma-kun">
                <div class="info">
                    <h2>Mairimashita! Iruma-kun</h2>
                    <p>Chương 373 - 3 ngày trước</p>
                    <p>44,6K lượt xem</p>
                </div>
            </div>
            <!-- Thêm các card khác theo cấu trúc tương tự -->
        </div>
        <div class="highlight-grid" style="display: none;" id="month">
            <div class="highlight-card">
                <img src="anh/diruma.jpg" alt="Mairimashita! Iruma-kun">
                <div class="info">
                    <h2>Mairimashita! Iruma-kun</h2>
                    <p>Chương 373 - 3 ngày trước</p>
                    <p>44,6K lượt xem</p>
                </div>
            </div>
            <div  class="highlight-card">
                <img src="anh/dsolo.jpg" alt="Solo Leveling">
                <div class="info">
                    <h2>Solo Leveling</h2>
                    <p>Chương 97 - 4 ngày trước</p>
                    <p>79,5K lượt xem</p>
                </div>
            </div>
            
            <!-- Thêm các card khác theo cấu trúc tương tự -->
        </div>
        <div class="highlight-grid" style="display: none;" id="all">
            <div  class="highlight-card">
                <img src="anh/dop.jpg" alt="One Piece">
                <div class="info">
                    <h2>One Piece</h2>
                    <p>Chương 1075 - 6 ngày trước</p>
                    <p>975,4K lượt xem</p>
                </div>
            </div>
            <div class="highlight-card">
                <img src="anh/daot.jpg" alt="Attack on Titan">
                <div class="info">
                    <h2>Attack on Titan</h2>
                    <p>Chương 135 - 8 ngày trước</p>
                    <p>1,6M lượt xem</p>
                </div>
            </div>
            <!-- Thêm các card khác theo cấu trúc tương tự -->
        </div>
    </div>


    <script>
        let currentSlide = 0;
        function showSlide(index) {
            const slides = document.querySelector('.slides');
            const dots = document.querySelectorAll('.dots button');

            currentSlide = index - 1; // Adjust index to 0-based
            slides.style.transform = `translateX(-${currentSlide * 100}%)`;

            // Update active dot
            dots.forEach(dot => dot.classList.remove('active'));
            dots[currentSlide].classList.add('active');
        }

        // Initialize first dot as active
        document.querySelector('.dots button').classList.add('active');
        const imgNumber = document.querySelectorAll('.slides img');
        let img =imgNumber.length;
        let number=0;
        function auto(){ 
           number++;
           if (number>= img) number=0;
           showSlide(number+1);
        }
        setInterval(auto,4000);
    </script>
    <script>
        function showContent(id) {
         if (id==="week"){
            document.getElementById("week").style="display:block;"
            document.getElementById("month").style="display:none;"
            document.getElementById("all").style="display:none;"
            document.getElementById("we").style="background:#fff;color: #00509e;"
            document.getElementById("mon").style="background:#00509e;color: #fff;"
            document.getElementById("al").style="background:#00509e;color: #fff;"
         }else if(id==="month"){
            document.getElementById("month").style="display:block;"
            document.getElementById("week").style="display:none;"
            document.getElementById("all").style="display:none;"
            document.getElementById("we").style="background:#00509e;color: #fff;"
             document.getElementById("mon").style="background:#fff;color: #00509e;"
            document.getElementById("al").style="background:#00509e;color: #fff;"
        } else {
            document.getElementById("all").style="display:block;"
            document.getElementById("month").style="display:none;"
            document.getElementById("week").style="display:none;"
            document.getElementById("we").style="background:#00509e;color: #fff;"
            document.getElementById("al").style="background:#fff;color: #00509e;"
            document.getElementById("mon").style="background:#00509e;color: #fff;"
        }
          
        }
      </script>


</body>
</html>