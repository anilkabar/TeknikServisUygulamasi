<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<header class="topbar">
    <nav class="navbar top-navbar navbar-expand-md navbar-dark">
        <!-- ============================================================== -->
        <!-- Logo -->
        <!-- ============================================================== -->
        <div class="navbar-header">
            <a class="navbar-brand" href="Home">
                <!-- Logo icon --><b>
                <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                <!-- Dark Logo icon -->

                <p class="font-bold">Teknik</p>
                <!-- Light Logo icon -->

            </b>
                <!--End Logo icon -->
                <span class="hidden-xs">Servis </span>
            </a>
        </div>
        <!-- ============================================================== -->
        <!-- End Logo -->
        <!-- ============================================================== -->
        <div class="navbar-collapse">
            <!-- ============================================================== -->
            <!-- toggle and nav items -->
            <!-- ============================================================== -->
            <ul class="navbar-nav mr-auto">
                <!-- This is  -->
                <li class="nav-item"> <a class="nav-link nav-toggler d-block d-sm-none waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                <li class="nav-item"> <a class="nav-link sidebartoggler d-none d-lg-block d-md-block waves-effect waves-dark" href="Home"><i class="icon-menu"></i></a> </li>
            </ul>
            <!-- ============================================================== -->
            <ul class="navbar-nav my-lg-0">
                <!-- User Profile -->
                <!-- ============================================================== -->
                <li class="nav-item dropdown u-pro">
                    <a class="nav-link dropdown-toggle waves-effect waves-dark profile-pic" href="" id="dropdown-menu dropdown-menu-right animated flipInY" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <span class="hidden-md-down">Hoşgeldin : ${users.userName} <i class="fa fa-angle-down"></i></span> </a>
                    <div class="dropdown-menu dropdown-menu-right animated flipInY">
                        <!-- text-->
                        <!-- text-->

                        <!-- text-->
                        <div class="dropdown-divider"></div>
                        <!-- text-->
                        <a href="/KullaniciIslemleri" class="dropdown-item"><i class="fa fa-user"></i> Kullanici İslemleri</a>
                        <a href="Logout" class="dropdown-item"><i class="fa fa-power-off"></i> Çıkış Yap</a>
                        <!-- text-->
                    </div>
                </li>
                <!-- ============================================================== -->
                <!-- End User Profile -->
                <!-- ============================================================== -->
            </ul>
        </div>
    </nav>
</header>

