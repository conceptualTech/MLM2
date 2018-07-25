<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="MLM.Login"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet"/>
    <!-- Animate.css -->
    <link href="vendors/animate.css/animate.min.css" rel="stylesheet"/>

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet"/>

</head>
<body class="login">
    <form id="form1" runat="server">
         <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
          
              <h1>Login Form</h1>

                <div>
                   <asp:TextBox  ID="username"  runat="server" class="form-control" Text="admin" ></asp:TextBox>
              </div>
              <br/>
              <div>
                   <asp:TextBox  ID="password" TextMode="Password" runat="server" class="form-control" Text="1234" ></asp:TextBox>
              </div>

              <div>
                  <br/>
                <asp:Button  ID="Button1" runat="server" Text="Log in" Width="100px" OnClick="Button1_Click"/>
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><img src="imagess/logo.png" style="height:15%" /></h1>
                  <p>©2018 All Rights Reserved. Designed and Developed by Appstar</p>
                </div>
              </div>
           
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
           
              <h1>Create Account</h1>
              <div>
                  <asp:TextBox ID="username1" runat="server" class="form-control" placeholder="Username"  AutoCompleteType="Disabled"></asp:TextBox>
                  <br/>
              </div>
              
              <div>
                    <asp:TextBox ID="email" runat="server" class="form-control" TextMode="Email" placeholder="Email"  AutoCompleteType="Disabled"></asp:TextBox>
              </div>
              <br/>
              <div>
                    <asp:TextBox  ID="password1" TextMode="Password" runat="server" class="form-control" placeholder="Password"  AutoCompleteType="Disabled"></asp:TextBox>
              </div>
              <br/>
              <div>
                <asp:Button  ID="Button2" runat="server" Text="Submit" Width="100px"   />
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><img src="imagess/logo.png" style="height:15%" /></h1>
                  <p>©2018 All Rights Reserved. Designed and Developed by Appstar</p>
                </div>
              </div>
           
          </section>
        </div>
      </div>
    </div>
    </form>
</body>
</html>
