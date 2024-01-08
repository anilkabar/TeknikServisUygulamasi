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

            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">İşlem Bekleyen Cihazlar</h4>
                            <h6 class="card-subtitle">Aşağıdaki Tabloda İşlem Bekleyen Cihazlar Listelenmektedir. İşlemi Tamamlanan Cihazı Listeden Kaldırmak İçin  İşlem Tamamlandı Butonunu Kullanabilirsiniz</h6>
                            <table class="table color-table info-table table-hover">
                                <thead>

                                    <tr>
                                        <th>#</th>
                                        <th>Marka</th>
                                        <th>Model</th>
                                        <th>İşletim Sistemi</th>
                                        <th>Seri Numarası</th>
                                        <th width="440px">Şikayet</th>
                                        <th>İslem</th>

                                    </tr>


                                </thead>
                                <tbody>
                                <c:forEach items="${cihazlarList}" var="item">
                                    <tr>
                                        <td>1</td>
                                        <td>${item.marka}</td>
                                        <td>${item.model}</td>
                                        <td>${item.isletimSistemi}</td>
                                        <td>${item.seriNumarasi}</td>
                                        <td>${item.sikayet}</td>
                                        <td>

                                            <a href="/IslemYap/${item.id}"><span class="label label-inverse"><i class="fa fa-mail-reply"></i> İşlem Tamamlandı</span></a>



                                        </td>
                                    </tr>
                                </c:forEach>





                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>




        </div>

    </div>

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