<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<aside class="left-sidebar">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav">
                <li class="nav-small-cap">--- Menüler</li>
                <li> <a class="waves-effect waves-dark" href="Home"><i class="icon-speedometer"></i><span class="hide-menu">Anasayfa</span></a>
                </li>
                <li> <a class="waves-effect waves-dark" href="CihazEkleme" aria-expanded="false"><i class="fa fa-save"></i><span class="hide-menu">Cihaz Ekleme </span></a>
                <li> <a class="waves-effect waves-dark" href="IslemBekleyenler" aria-expanded="false"><i class="fa fa-hourglass"></i><span class="hide-menu">İşlem Bekleyen </span></a>
                <li> <a class="waves-effect waves-dark" href="IslemTamamlananlar" aria-expanded="false"><i class="fa fa-check"></i><span class="hide-menu">İşlemi Yapılan </span></a>
                </li>
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>