<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Back_AdminAdd.aspx.cs" Inherits="yacht.Back_AdminAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Register</title>

    <!-- Custom fonts for this template-->
    <link href="Back/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="Back/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                            </div>
                            <form id="form1" runat="server" class="user">
                         
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
    <asp:TextBox class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="First Name" runat="server"></asp:TextBox>
                                        
                                    </div>
                                    <div class="col-sm-6">
        <asp:TextBox class="form-control form-control-user" id="exampleLastName"
                                            placeholder="Last Name" runat="server"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                <div class="form-group">
            <asp:TextBox class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="Email Address" runat="server"></asp:TextBox>
                                   
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                <asp:TextBox  class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="Password" runat="server"></asp:TextBox>
                                       
                                    </div>
                                    <div class="col-sm-6">
                    <asp:TextBox class="form-control form-control-user"
                                            id="exampleRepeatPassword" placeholder="Repeat Password" runat="server"></asp:TextBox>
                                       
                                    </div>
                                </div>
    <asp:Button ID="Button1" runat="server" Text="Register Account"  class="btn btn-primary btn-user btn-block" OnClick="Button1_Click" />
                               
                                <hr>
    <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-google btn-user btn-block"><i class="fab fa-google fa-fw"></i> Register with Google</asp:LinkButton>
                          
                                    
                                <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-facebook btn-user btn-block"><i class="fab fa-facebook-f fa-fw"></i> Register with Facebook</asp:LinkButton>
                               
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="Back_ForgotPassword.aspx">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="Back_Login.aspx">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="Back/vendor/jquery/jquery.min.js"></script>
    <script src="Back/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="Back/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="Back/js/sb-admin-2.min.js"></script>
    
    
</body>
</html>
