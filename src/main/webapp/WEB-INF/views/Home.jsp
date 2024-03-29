<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <title>Teknik Servis Uygulması</title>
    <!--Toaster Popup message CSS -->
    <link href="resources/assets/node_modules/toast-master/css/jquery.toast.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="resources/dist/css/style.min.css" rel="stylesheet">

    <script src="resources/assets/node_modules/jquery/jquery-3.2.1.min.js"></script>
</head>
<body class="skin-megna-dark fixed-layout">

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
                    <h4 class="text-themecolor">Anasayfa</h4>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Info box -->
            <!-- ============================================================== -->
            <!-- .row -->
            <div class="row">
                <!-- Column -->
                <div class="col-lg-4 col-md-6">
                    <a href="IslemBekleyenler">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-row">
                                    <div class="round align-self-center round-danger"><i class="fa fa-hourglass"></i></div>
                                    <div class="m-l-10 align-self-center">
                                        <h3 class="m-b-0 text-dark">${islemBekleyenCihazSayisi}</h3>
                                        <h5 class="text-muted m-b-0">İşlem Bekleyen Cihaz Sayısı</h5></div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- Column -->
                <!-- Column -->
                <div class="col-lg-4 col-md-6">
                    <a href="IslemTamamlananlar">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-row">
                                    <div class="round align-self-center round-info"><i class="fa fa-check"></i></div>
                                    <div class="m-l-10 align-self-center">
                                        <h3 class="m-b-0 text-dark">${islemTamamlananCihazSayisi}</h3>
                                        <h5 class="text-muted m-b-0">İşlem Tamamlanan Cihaz Sayısı</h5></div>
                                </div>
                            </div>
                        </div>
                    </a>

                </div>

                <!-- Column -->
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
</body>
</html>