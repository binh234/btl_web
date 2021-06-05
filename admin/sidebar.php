<?php
    include '../include/consql.php';
    if(isset( $_SESSION['admin']) or isset( $_SESSION['manager'])){
        $emailuser= $_SESSION['useremail'];
        $sql ="SELECT * FROM user where email !='$emailuser' ";
        $result = mysqli_query($conn, $sql);
        $users = mysqli_fetch_all($result, MYSQLI_ASSOC); 
    }
    else{
        header("location:../index.php");
    }
?>

<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon">
            <img src="../assets/img/logo.png" alt="logo" style="max-height:40px;">
        </div>
        <div class="sidebar-brand-text mx-3">Vin Fast</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item" id="nav-dashboard">
        <a class="nav-link" href="dashboard.php">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Sản phẩm
    </div>

    <!-- Nav Item -Products Menu -->
    <li class="nav-item" id="nav-car">
        <a class="nav-link" href="car.php">
            <i class="fas fa-fw fa-car"></i>
            <span>Ô tô</span>
        </a>
    </li>

    <li class="nav-item" id="nav-motor">
        <a class="nav-link" href="motor.php">
            <i class="fas fa-fw fa-motorcycle"></i>
            <span>Xe máy điện</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Khách hàng
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item" id="nav-customer">
        <a class="nav-link" href="customer.php">
            <i class="fas fa-fw fa-address-book"></i>
            <span>Khách hàng</span>
        </a>
    </li>


    <li class="nav-item" id="nav-member">
        <a class="nav-link" href="member.php">
            <i class="fas fa-fw fa-id-card"></i>
            <span>Thành viên</span>
        </a>
    </li>


    <li class="nav-item" id="nav-get-news">
        <a class="nav-link" href="get-news.php">
            <i class="fas fa-fw fa-newspaper"></i>
            <span>Nhận tin</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Dịch vụ
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item" id="nav-maintenance">
        <a class="nav-link" href="maintenance.php">
            <i class="fas fa-fw fa-cogs"></i>
            <span>Bảo dưỡng</span>
        </a>
    </li>

    <li class="nav-item" id="nav-promotion">
        <a class="nav-link" href="promotion.php">
            <i class="fas fa-fw fa-tag"></i>
            <span>Khuyến mãi</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->