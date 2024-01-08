<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <title>Teknik Servis Uygulaması Giriş Ekranı</title>
    <link rel="icon" type="image/png" sizes="16x16" href="/images/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1,minimum-scale=1, maximum-scale=1, user-scalable=0">
    <link rel="stylesheet" type="text/css" href="resources/assets/Login/css/style.css">
    <script src="resources/assets/Login/js/fa-a81368914c.js"></script>
    <script src="resources/assets/node_modules/jquery/jquery-3.2.1.min.js"></script>
    <link href="resources/assets/toastr/toastr.css" rel="stylesheet" />


</head>
<body>



<c:if test="${ not empty mesaj }">
    <script>
        $("btn").ready(function () {
            toastr.error("${mesaj}","Hata");
        });
    </script>
</c:if>
<img class="wave" src="resources/assets/Login/img/wave.png">
<div class="container">
    <div class="img">
        <img src="resources/assets/Login/img/logo.png">
    </div>

    <div class="login-content">
        <form action="/UserLogin" method="post">
            <img src="resources/assets/Login/img/avatar.svg">
            <h1 class="title">
                Teknik Servis Uygulaması
            </h1>
            <div class="input-div one">
                <div class="i">
                    <i class="fas fa-user"></i>
                </div>
                <div class="div">
                    <input name="userName" maxlength="50" autocomplete="off" type="text" required class="input" placeholder="Kullanici Adı">
                </div>
            </div>
            <div class="input-div pass">
                <div class="i">
                    <i class="fas fa-lock"></i>
                </div>
                <div class="div">
                    <input name="password" maxlength="16" autocomplete="off" type="password" required class="input" placeholder="Şifre">
                </div>
            </div>
            <input type="submit" class="btn" value="GİRİŞ YAP">
        </form>
    </div>
</div>
<script src="resources/assets/toastr/toastr.js"></script>

<script>
    toastr.options = {
        "closeButton": true,
        "debug": true,
        "newestOnTop": false,
        "progressBar": true,
        "positionClass": "toast-bottom-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "8000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    }

</script>
</body>
</html>