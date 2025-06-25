<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Halaman Wanti</title>

    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Google Fonts: Orbitron for futuristic style -->
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap" rel="stylesheet">

    <style>
body {
    font-family: 'Orbitron', sans-serif;
    background: linear-gradient(135deg, #1a1f14, #2f4f1f, #3d5f2a);
    color: #c8ff00;
    min-height: 100vh;
    padding-top: 40px;
    background-attachment: fixed;
}

.profile-img {
    width: 200px;
    height: 250px;
    object-fit: cover;
    border-radius: 12px;
    border: 3px solid #c8ff00;
    box-shadow: 0 0 15px #c8ff00;
    transition: transform 0.4s ease;
}

.profile-img:hover {
    transform: scale(1.05);
}

.card-custom {
    background-color: rgba(255, 255, 255, 0.05);
    border: 1px solid #c8ff00;
    border-radius: 15px;
    box-shadow: 0 0 25px #c8ff00;
    padding: 20px;
    animation: fadeIn 0.8s ease;
}

.message-box {
    max-height: 300px;
    overflow-y: auto;
}

.message-box .border {
    border: 1px solid #c8ff00;
    padding: 10px;
    margin-bottom: 10px;
    border-radius: 8px;
    background-color: rgba(200, 255, 0, 0.08);
    transition: background-color 0.3s ease;
}

.message-box .border:hover {
    background-color: rgba(200, 255, 0, 0.2);
}

.btn-primary {
    background-color: #c8ff00;
    color: #000;
    font-weight: bold;
    border: none;
    box-shadow: 0 0 10px #c8ff00;
}

.btn-primary:hover {
    background-color: #aaff33;
    box-shadow: 0 0 15px #c8ff00;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(10px); }
    to { opacity: 1; transform: translateY(0); }
}

@keyframes highlight {
    0%   { background-color: rgba(200, 255, 0, 0.3); }
    100% { background-color: transparent; }
}

.new-message {
    animation: highlight 1.5s ease-out;
}
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-4 mb-4">
            <div class="card-custom text-center">
                <h4 class="mb-3">Wanti</h4>
                <img src="wanti.png" alt="Foto Wanti" class="profile-img mb-3">

                <!-- Form kirim pesan -->
                <form method="post">
                    <div class="form-group">
                        <input type="text" name="pengirim" class="form-control" placeholder="Nama Anda" required>
                    </div>
                    <div class="form-group">
                        <input type="text" name="pesan" class="form-control" placeholder="Tulis pesan..." required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Kirim Pesan</button>
                </form>
            </div>
        </div>

        <div class="col-md-8 mb-4">
            <div class="card-custom">
                <h5 class="mb-3">💬 Pesan Masuk</h5>
                <div class="message-box">
                    <c:forEach items="${list}" var="row">
                        <div class="border new-message">
                            <strong>${row.pengirim}:</strong>
                            <span>${row.pesan}</span>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
