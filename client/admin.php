<?php
    session_start();
    include '../include/consql.php';
    $emailuser='';
    if(isset( $_SESSION['admin'])){
        $emailuser= $_SESSION['useremail'];
        $sql ="SELECT * FROM `user` inner join userinfo on user.id=userId where user.email !='$emailuser' ";
        $result = mysqli_query($conn,$sql);
        $users = mysqli_fetch_all($result, MYSQLI_ASSOC); 
    }
    else{
        header("location:../");
    }
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Admin</title>
    <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../assets/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../assets/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="../assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="../assets/css/login_style.css" rel="stylesheet">
</head>
<body> 

    <div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
        <div class="card card0 border-0">
            <div class="row d-flex">
                <div class="col-lg-11 text-center">
                <!-- DataTales -->
                <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h5 class="m-0 font-weight-bold text-primary">Danh sách người dùng</h5>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table display" id="table_id">
                                    <thead>
                                        <tr> 
                                            <th class="table-success text-center" scope="col">Id</th>
                                            <th class="table-success text-center" scope="col">Tên</th>
                                            <th class="table-success text-center" scope="col">Email</th>
                                            <th class="table-success text-center" scope="col">Level</th>
                                            <th class="table-success text-center" scope="col">Edit</th>
                                            <th class="table-success text-center" scope="col">Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach($users as $user): ?>
                                        <tr>
                                            <form action="../server/adminEdit.php" method="GET">
                                            <td class="text-center"><?php echo $user['id']; ?></td>
                                            <td class="text-center"><?php echo $user['name']; ?></td>
                                            <td class="text-center"><?php echo $user['email']; ?></td>
                                            <td class="text-center">
                                            <select name="level" id="level">
                                                <option selected value="<?php echo $user['level']; ?>" disabled hidden><?php echo $user['level']; ?></option>
                                                <option value="manager">manager</option>
                                                <option value="admin">admin</option>
                                                <option value="member">member</option>
                                            </td>
                                            
                                            <td class="text-center">
                                                <input type="text" value="<?php echo $user['email']; ?>" name ="email" hidden>
                                                <button type="submit" class="btn btn-outline-info btn-sm"><i class="bi bi-pencil-square"></i></button>   
                                            </td>
                                            </form>
                                            <td class="text-center">
                                                <button name="btnDel" type="button" onclick="confirmdelete(<?php echo $user['userId'];?>)" class="btn btn-outline-danger btn-sm"><i class="bi bi-trash"></i></button>
                                            </td>
                                        </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                        </table>
                            </div>
                        </div>
                    </div>
<!-- DataTales  -->
                    <div class="col text-center">
                        <a href="../" class="btn btn-outline-success">Trang chủ</a>
                    </div> <br>
                </div>
                
            </div>
        </div>
    </div>

    <script src="../assets/js/validate.js" type=text/javascript></script>
      <!-- Bootstrap core JavaScript-->
    <script src="../assets/vendor/jquery/jquery.min.js"></script>    

    <!-- Page level plugins -->
    <script src="../assets/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#table_id').DataTable();
        });
    </script>
</body>
</html>