<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="epicurean.adminPages.login.login" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Star Admin2 </title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="/adminAssets/vendors/feather/feather.css">
  <link rel="stylesheet" href="/adminAssets/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="/adminAssets/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="/adminAssets/vendors/typicons/typicons.css">
  <link rel="stylesheet" href="/adminAssets/vendors/simple-line-icons/css/simple-line-icons.css">
  <link rel="stylesheet" href="/adminAssets/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="/adminAssets/css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="/adminAssets/images/favicon.png" />
</head>

<body>
 <form id="form1" runat="server">
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="/assets/images/logo.svg" alt="logo">
              </div>
              <h4>Hello! let's get started</h4>
              <h6 class="fw-light">Sign in to continue.</h6>
              <form class="pt-3">
                <div class="form-group">
                    <asp:TextBox ID="txtUname" autofocus runat="server" class="form-control form-control-lg" placeholder="Username"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox type="password" ID="txtPassword" runat="server" class="form-control form-control-lg" placeholder="Password"></asp:TextBox>

                </div>
                <div class="mt-3">
                    <asp:Button ID="Button1" runat="server" Text="SIGN IN" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" OnClick="Button1_Click"/>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
    </form>
  
     <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="/adminAssets/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="/adminAssets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="/adminAssets/js/off-canvas.js"></script>
  <script src="/adminAssets/js/hoverable-collapse.js"></script>
  <script src="/adminAssets/js/template.js"></script>
  <script src="/adminAssets/js/settings.js"></script>
  <script src="/adminAssets/js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>
