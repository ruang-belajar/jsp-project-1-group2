<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Project Group 1</title>

    <!-- Animate CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap" rel="stylesheet">

    <style>
  body {
    font-family: 'Orbitron', sans-serif;
    background: radial-gradient(circle at top left, #1e1e2f, #111118);
    background-size: 600% 600%;
    animation: gradientFlow 20s ease infinite;
    color: #fff;
    min-height: 100vh;
}

.profile-img {
    width: 200px;
    height: 250px;
    object-fit: cover;
    border-radius: 12px;
    border: 2px solid #ff00c8;
    box-shadow: 0 0 15px #ff00c8;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.profile-img:hover {
    transform: scale(1.05);
    box-shadow: 0 0 25px #ff00c8;
}

.card {
    background-color: rgba(0, 0, 0, 0.7);
    border: 2px solid #ff00c8;
    border-radius: 15px;
    transition: transform 0.3s ease;
}

/* Kustomisasi masing-masing card */
.card-dodi {
     box-shadow: 0 0 20px rgba(0, 200, 255, 0.5);
    border-color: #00c8ff;
}
.card-dodi:hover {
    box-shadow: 0 0 30px #00c8ff;
}
.card-arjun {
    box-shadow: 0 0 20px rgba(0, 255, 200, 0.5);
    border-color: #00ffc8;
}
.card-arjun:hover {
    box-shadow: 0 0 30px #00ffc8;
}
.card-wulan {
 box-shadow: 0 0 20px rgba(255, 0, 200, 0.5);
    border-color: #ff00c8;    
}
.card-wulan:hover {
     box-shadow: 0 0 30px #ff00c8;
}
.card-wanti {
    box-shadow: 0 0 20px rgba(200, 255, 0, 0.5);
    border-color: #c8ff00;
}
.card-wanti:hover {
    box-shadow: 0 0 30px #c8ff00;
}

.card:hover {
    transform: translateY(-5px);
}
/* Container group untuk seluruh card */
.card-group-hover:hover .card {
    filter: blur(2px) brightness(0.6);
    transition: filter 0.3s ease;
}

/* Hilangkan blur dari card yang sedang di-hover */
.card-group-hover:hover .card:hover {
    filter: none;
}

.name-link {
    font-size: 18px;
    font-weight: 600;
    color: #f0f0f0;
    text-decoration: none;
    text-shadow: 0 0 5px rgba(255, 255, 255, 0.3);
}

.text-dodi:hover {
  color: #00c8ff;
  text-shadow: 0 0 8px #00c8ff;
}

.text-arjun:hover {
  color: #00ffc8;
  text-shadow: 0 0 8px #00ffc8;
}

.text-wulan:hover {
  color: #ff00c8;
  text-shadow: 0 0 8px #ff00c8;
}

.text-wanti:hover {
  color: #c8ff00;
  text-shadow: 0 0 8px #c8ff00;
}

.bg-light {
    background-color: rgba(255, 255, 255, 0.1) !important;
    color: #fff;
}

/* Animasi */
@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.fade-in-up {
    opacity: 0;
    animation: fadeInUp 0.6s ease forwards;
}
@keyframes gradientFlow {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}   

    </style>
</head>
<body>

<div class="container py-5">
    <h1 class="text-center mb-5 animate__animated animate__pulse animate__infinite" style="color:#f0f0f0;;">Group 2</h1>

    <div class="row text-center card-group-hover">
        <!-- Dodi -->
        <div class="col-md-3 mb-4 fade-in-up" style="animation-delay: 0.3s;">
            <div class="card p-4 card-dodi">
                <img src="dodi.jpg" alt="Foto Dodi" class="profile-img mx-auto d-block mb-3 card-dodi">
                <div class="bg-light border rounded p-2 d-inline-block">
                    <a href="dodi.messageboard.jsp" class="name-link d-block text-dodi mb-1">Muhamad Dodi</a>
                    <small class="text-light">NIM: 22110483</small>
                </div>
            </div>
        </div>

        <!-- Arjun -->
        <div class="col-md-3 mb-4 fade-in-up" style="animation-delay: 0.6s;">
            <div class="card p-4 card-arjun">
                <img src="arjun.jpg" alt="Foto Arjun" class="profile-img mx-auto d-block mb-3 card-arjun">
                <div class="bg-light border rounded p-2 d-inline-block">
                    <a href="arjun.messageboard.jsp" class="name-link d-block text-arjun mb-1">Arjun Sefulloh</a>
                    <small class="text-light">NIM: 22110568</small>
                </div>
            </div>
        </div>

        <!-- Wulan -->
        <div class="col-md-3 mb-4 fade-in-up" style="animation-delay: 0.9s;">
            <div class="card p-4 card-wulan">
                <img src="wulan.jpg" alt="Foto Wulan" class="profile-img mx-auto d-block mb-3 card-wulan">
                <div class="bg-light border rounded p-2 d-inline-block">
                    <a href="wulan.messageboard.jsp" class="name-link d-block text-wulan mb-1">Wulan Nuraeni</a>
                    <small class="text-light">NIM: 22110516</small>
                </div>
            </div>
        </div>

        <!-- Fani -->
        <div class="col-md-3 mb-4 fade-in-up" style="animation-delay: 1.2s;">
            <div class="card p-4 card-wanti">
                <img src="wanti.png" alt="Foto wanti" class="profile-img mx-auto d-block mb-3 card-wanti">
                <div class="bg-light border rounded p-2 d-inline-block">
                    <a href="wanti.messageboard.jsp" class="name-link d-block text-wanti mb-1">Wanti Nur S</a>
                    <small class="text-light">NIM: 22110522</small>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
