<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Thay đổi mật khẩu</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show " id="profile" role="tabpanel" aria-labelledby="home-tab">
    <form action="../server/change_pass.php" method="POST" name="Form" >
        <div class="row px-3"> <label class="mb-1">
            <h6 class="mb-0 text-sm ">Mật khẩu hiện tại</h6>
        </label> <input class="mb-3" type="password" name="passold"  placeholder="Nhập mật khẩu hiện tại" required> </div>
        <div class="row px-3"> <label class="mb-1">
            <h6 class="mb-0 text-sm ">Mật khẩu mới</h6>
        </label> <input class="mb-3" type="password" name="passnew" placeholder="Nhập mật khẩu hiện mới" required> </div>
        <div class="row px-3"> <label class="mb-1">
            <h6 class="mb-0 text-sm ">Nhập lại mật khẩu mới</h6>
        </label> <input class="mb-3" type="password" name="repassnew" placeholder="Nhập lại mật khẩu hiện mới" required> </div>
        <div class="row mb-3 px-3"> 
            <button type="submit" class="btn btn-blue text-center">Thay đổi</button> 
        </div>
        <div class="row mb-4 px-3 text-center ">
            
        </div>
    </form> 
  </div>
  <div class="tab-pane fade show active text-primary" id="profile" role="tabpanel" aria-labelledby="home-tab">
        <?php
             if(isset($_SESSION['error'])){
                echo $_SESSION['error'];
                unset($_SESSION['error']);
                }
            
            if(isset($_SESSION['sussces'])){
                echo $_SESSION['sussces'];
                unset($_SESSION['sussces']);
                }
        ?>
             
  </div>
</div>