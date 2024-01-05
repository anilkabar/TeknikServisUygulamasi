<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<aside class="left-sidebar">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav">
                <li class="nav-small-cap">--- PERSONAL</li>
                <li> <a class="waves-effect waves-dark" href="Home"><i class="icon-speedometer"></i><span class="hide-menu">Anasayfa</span></a>
                </li>
                <li> <a class="waves-effect waves-dark" href="IslemBekleyenler" aria-expanded="false"><i class="fa fa-hourglass"></i><span class="hide-menu">İşlem Bekleyen <span class="label label-danger">0</span> </span></a>
                <li> <a class="waves-effect waves-dark" href="IslemTamamlananlar" aria-expanded="false"><i class="fa fa-check"></i><span class="hide-menu">İşlemi Yapılan <span class="label label-success">15</span></span></a>
                </li>
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>