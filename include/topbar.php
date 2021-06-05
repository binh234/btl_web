<section id="topbar" class="d-flex align-items-center">
        <div class="container d-flex justify-content-center justify-content-md-between">
            <div class="contact-info d-flex align-items-center">
                <i class="bi bi-envelope"></i><a href="mailto:cskh@vinfast.vn"> cskh@vinfast.vn</a>
                <i class="bi bi-phone"></i><span>1900-232389</span>
            </div>
            <div class="social-links d-none d-md-flex align-items-center">
                <?php
                if(isset($_SESSION['user'])){ ?>
                    <a href="client/info.php" class="nav-link pr-2" >
                        <i class="bi bi-person"></i>
                        <?php
                            echo $_SESSION['user'];
                        ?>
                    </a>|
                    <a href="server/logout.php">
                        <i class="bi bi-door-open-fill"></i>
                        Đăng xuất
                    </a>
                <?php
                }
                else{ ?>
                    <a href="client/login.php" class="nav-link pr-2">
                        <i class="bi bi-person"></i>
                        Đăng nhập
                    </a>
                <?php
                }
                ?>
                

                <?php
                if(isset($_SESSION['admin'])){ ?>
                    <a href="client/admin.php" class="nav-link pr-2" >
                        <i class="bi bi-journal"></i>
                        <?php
                            echo "Quản lý";
                        ?>
                    </a>|
                <?php
                }
                elseif(isset($_SESSION['manager'])){ ?>
                    <a href="admin/dashboard.php" class="nav-link pr-2">
                        <i class="bi bi-journal"></i>
                        <?php
                            echo "Quản lý";
                        ?>
                    </a>
                <?php
                }
                ?>

                <a href="https://www.facebook.com/VinFastAuto.Official/" class="facebook"><i class="bi bi-facebook"></i></a>
                <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                <a href="https://www.youtube.com/channel/UCA5OijDHvvWJ3vy5iVdWcAQ" class="youtube"><i class="bi-youtube"></i></a>
            </div>
        </div>
    </section>