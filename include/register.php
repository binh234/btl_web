<form action="../server/register_submit.php" method="POST" name="Form" onsubmit = "return(validate());">
                            <div class="row px-3"> <label class="mb-1">
                                <h6 class="mb-0 text-sm">Địa chỉ Email
                                <a class="text-danger">
                                        <?php
                                            if(isset($_SESSION['email'])){
                                                echo ":".$_SESSION['email'];
                                                unset($_SESSION['email']);
                                            }
                                        ?>
                                    </a>
                                </h6>
                            </label> <input class="mb-3" type="text" name="email" placeholder="Nhập địa chỉ Email"> </div>
                            <div class="row px-3"> <label class="mb-1">
                                <h6 class="mb-0 text-sm ">Họ tên
                                </h6>
                            </label> <input class="mb-3" type="text" name="account" placeholder="Nhập họ tên"> </div>
                            <div class="row px-3"> <label class="mb-1">
                                <h6 class="mb-0 text-sm">Mật khẩu</h6>
                            </label> <input class="mb-3" type="password" name="password" placeholder="Nhập mật khẩu"> </div>
                            <div class="row px-3"> <label class="mb-1">
                                <h6 class="mb-0 text-sm">Nhập lại mật khẩu
                                    <a class="text-danger">
                                        <?php
                                            if(isset($_SESSION['pass'])){
                                                echo ":".$_SESSION['pass'];
                                                unset($_SESSION['pass']);
                                            }
                                        ?>
                                    </a>
                                </h6>
                            </label> <input class="mb-3" type="password" name="repass" placeholder="Nhập lại mật khẩu"> </div>
                            <div class="row mb-3 px-3"> <button type="submit" class="btn btn-blue text-center">Đăng ký</button> </div>
                            <div class="row mb-4 px-3 text-center text-primary">
                                <?php
                                        if(isset($_SESSION['sussces'])){
                                            echo $_SESSION['sussces'];
                                            unset($_SESSION['sussces']);
                                        }
                                    ?>
                            </div>
                        </form>