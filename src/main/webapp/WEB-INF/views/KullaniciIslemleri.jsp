<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="utf-8">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="resources/assets/images/favicon.png">
    <title>Teknik Servis Uygulaması</title>
    <!--Toaster Popup message CSS -->
    <link href="resources/assets/node_modules/toast-master/css/jquery.toast.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="resources/dist/css/style.min.css" rel="stylesheet">
    <link href="resources/assets/toastr/toastr.css" rel="stylesheet" />
    <script src="resources/assets/node_modules/jquery/jquery-3.2.1.min.js"></script>
</head>
<body class="fixed-layout skin-megna-dark">

<!-- ============================================================== -->
<!-- Preloader - style you can find in spinners.css -->
<!-- ============================================================== -->
<div class="preloader">
    <div class="loader">
        <div class="loader__figure"></div>
        <p class="loader__label">Teknik Servis Uygulaması</p>
    </div>
</div>
<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper">
    <!-- ============================================================== -->
    <!-- Topbar header - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <c:import url="inc/Header.jsp"></c:import>

    <c:import url="inc/Left-Sidebar.jsp"></c:import>
    <div class="page-wrapper">

        <div class="container-fluid">

            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h4 class="text-themecolor">Kullanıcı Şifre İşlemleri</h4>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-5">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Kullanıcı Ekle</h4>
                            <h6 class="card-subtitle">Aşağıdaki Formdan Sisteme Yeni Kullanıcı Ekleyebilirsiniz</h6>
                            <form method="post" action="KullaniciEkle" class="form-horizontal p-t-20">
                                <div class="form-group row">
                                    <label class="col-sm-3 control-label">Kullanıcı Adı :</label>
                                    <div class="col-sm-9">
                                        <div class="input-group">
                                            <input name="userName" type="text" class="form-control" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-3 control-label">Şifre :</label>
                                    <div class="col-sm-9">
                                        <div class="input-group">
                                            <input name="password" type="password" class="form-control" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-3 control-label">Şifre Tekrar :</label>
                                    <div class="col-sm-9">
                                        <div class="input-group">
                                            <input name="passwordAgain" type="password" class="form-control" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row m-b-0">
                                    <div class="offset-sm-3 col-sm-9">
                                        <button type="submit" class="btn btn-success waves-effect waves-light">Kaydet</button>
                                    </div>
                                </div>
                                <hr>

                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">

                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Kullanıcılar</h4>
                            <h6 class="card-subtitle">Aşağıdaki Tabloda Sistemde Bulunan Kullanıcılara Ait Bilgiler Yer Almaktadır</h6>
                            <table class="table color-table info-table table-hover">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Kullanıcı Adı</th>
                                    <th>İşlem</th>

                                </tr>
                                </thead>
                                <tbody>
                                <c:if test="${ not empty usersList }">
                                    <c:forEach items="${usersList}" var="item" varStatus="sayac">
                                        <tr>
                                            <td>${sayac.index+1}</td>
                                            <td>${item.userName}</td>
                                            <td>




                                                <a href="/KullaniciSil/${item.id}"><span class="label label-danger"><i class="fa fa-remove"></i> Sil</span></a>

                                            </td>
                                        </tr>
                                    </c:forEach>
                                </c:if>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- footer -->
    <!-- ============================================================== -->

    <c:import url="inc/Footer.jsp"></c:import>
    <!-- ============================================================== -->
    <!-- End footer -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->


<c:if test="${kontrol=='success'}">
    <script>
        $("btn").ready(function () {
            toastr.success("${mesaj}","Başarılı");
        });
    </script>
</c:if>
<c:if test="${kontrol=='error'}">
    <script>
        $("btn").ready(function () {
            toastr.error("${mesaj}","Hata");
        });
    </script>
</c:if>



<!-- Bootstrap popper Core JavaScript -->
<script src="resources/assets/node_modules/popper/popper.min.js"></script>
<script src="resources/assets/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="resources/dist/js/perfect-scrollbar.jquery.min.js"></script>
<!--Wave Effects -->
<script src="resources/dist/js/waves.js"></script>
<!--Menu sidebar -->
<script src="resources/dist/js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="resources/dist/js/custom.min.js"></script>
<!-- ============================================================== -->

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