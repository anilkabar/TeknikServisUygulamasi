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

    <!-- Custom CSS -->
    <link href="resources/dist/css/style.min.css" rel="stylesheet">
    <link href="resources/assets/toastr/toastr.css" rel="stylesheet" />

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

            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Teknik Servis Gelen Cihaz Ekleme
                            </h4>
                            <h6 class="card-subtitle">Aşağıdaki Formdan Gelen Cihaza Ait Bilgileri Doldurup Ekleme İşlemi Yapabilirsiniz ${kontrol}  </h6>
                            <hr>
                            <form action="CihazEkle" method="post">
                                <div class="form-group row">
                                    <label class="col-sm-1 control-label">Marka :</label>
                                    <div class="col-sm-3">
                                        <div class="input-group">
                                            <input name="marka" type="text" class="form-control" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-1 control-label">Model :</label>
                                    <div class="col-sm-3">
                                        <div class="input-group">
                                            <input name="model" type="text" class="form-control" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-1 control-label">İşletim Sistemi :</label>
                                    <div class="col-sm-3">
                                        <div class="input-group">
                                            <input name="isletimSistemi" type="text" class="form-control" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-1 control-label">Seri Numarası :</label>
                                    <div class="col-sm-3">
                                        <div class="input-group">
                                            <input name="seriNumarasi" type="text" class="form-control" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-1 control-label">Şikayet :</label>
                                    <div class="col-sm-3">
                                        <div class="input-group">
                                <textarea class="form-control" name="sikayet" rows="4" cols="50" required></textarea>
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
            </div>


        </div>

    </div>

</div>

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