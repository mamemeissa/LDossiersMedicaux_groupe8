<?php
session_start();
include('assets/inc/config.php');
include('assets/inc/checklogin.php');
if (isset($_POST['add_patient_rv'])) {
    $nom = htmlspecialchars($_POST['nom']);
    $email = htmlspecialchars($_POST['email']);
    $telephone = htmlspecialchars($_POST['telephone']);
    $date = htmlspecialchars($_POST['date']);
    $heure = date("H:i:s");
    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $query = "INSERT INTO  his_rendezvous (nom, email, telephone, date, heure) VALUES(?,?,?,?,?)";
        $stmt = $mysqli->prepare($query);
        $rc = $stmt->bind_param('sssss', $nom, $email, $telephone, $date, $heure);
        $stmt->execute();
        /*
			*Use Sweet Alerts Instead Of This Fucked Up Javascript Alerts
			*echo"<script>alert('Successfully Created Account Proceed To Log In ');</script>";
			*/
        //declare a varible which will be passed to alert function
        if ($stmt) {
            $success = "Rendez prise pour $date à $heure";
        } else {
            $err = "Please Try Again Or Try Later";
        }
    } else {
        echo "Ce n'est pas une adresse email valide.";
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>

<?php include('assets/inc/head.php'); ?>

<body>

    <!-- Begin page -->
    <div id="wrapper">

        <!-- Topbar Start -->
        <?php include('assets/inc/nav.php'); ?>
        <!-- end Topbar -->

        <!-- ========== Left Sidebar Start ========== -->
        <?php include("assets/inc/sidebar.php"); ?>
        <!-- Left Sidebar End -->

        <!-- ============================================================== -->
        <!-- Start Page Content here -->
        <!-- ============================================================== -->

        <div class="content-page">
            <div class="content">

                <!-- Start Content-->
                <div class="container-fluid">

                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box">
                                <div class="page-title-right">
                                    <ol class="breadcrumb m-0">
                                        <li class="breadcrumb-item"><a href="javascript: void(0);">Tableau de bord</a></li>
                                        <li class="breadcrumb-item"><a href="javascript: void(0);">Rendez - Vous</a></li>
                                        <li class="breadcrumb-item active">Prendre Rendez-Vous</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end page title -->
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <form method="POST">
                                    <div class="form-group">
                                        <label for="nom">Nom</label>
                                        <input type="text" class="form-control" name="nom" id="nom" placeholder="Entrez votre nom">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Adresse e-mail</label>
                                        <input type="email" class="form-control" name="email" id="email" placeholder="Entrez votre adresse e-mail">
                                    </div>
                                    <div class="form-group">
                                        <label for="telephone">Téléphone</label>
                                        <input type="tel" class="form-control" name="telephone" id="telephone" placeholder="Entrez votre numéro de téléphone">
                                    </div>
                                    <div class="form-group">
                                        <label for="date">Date du rendez-vous</label>
                                        <input type="date" class="form-control" name="date">
                                    </div>
                                    <button type="submit" name="add_patient_rv" class="btn btn-primary">Envoyer</button>
                                </form>

                            </div>
                        </div>
                    </div>

                    <!-- end row -->

                </div> <!-- container -->

            </div> <!-- content -->

            <!-- Footer Start -->
            <?php include('assets/inc/footer.php'); ?>
            <!-- end Footer -->

        </div>

        <!-- ============================================================== -->
        <!-- End Page content -->
        <!-- ============================================================== -->


    </div>
    <!-- END wrapper -->
    <link href='https://cdn.jsdelivr.net/npm/@fullcalendar/core@4.5.1/main.min.css' rel='stylesheet' />


    <!-- Right bar overlay-->
    <div class="rightbar-overlay"></div>

    <!-- Vendor js -->
    <script src="assets/js/vendor.min.js"></script>

    <!-- Footable js -->
    <script src="assets/libs/footable/footable.all.min.js"></script>

    <!-- Init js -->
    <script src="assets/js/pages/foo-tables.init.js"></script>

    <!-- App js -->
    <script src="assets/js/app.min.js"></script>

</body>

</html>