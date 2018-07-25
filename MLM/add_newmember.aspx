<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="add_newmember.aspx.cs" Inherits="MLM.add_newmember" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <script src="build/js/custom.min.js"></script>
    <script src="build/js/custom.min.js"></script>
     <script type="text/javascript">
   
   
         $(function ()
         {
             $('#ContentPlaceHolder1_btn_submit').hide();
             $('.Password').hide();
             $('.PasswordMatch').hide();
             $('.Error').hide();

             $('#ContentPlaceHolder1_txt_confirmPassword').on('keyup', function ()
            {
                 var password = document.getElementById("ContentPlaceHolder1_txtPassword").value;
                 var confirmPassword = document.getElementById("ContentPlaceHolder1_txt_confirmPassword").value;
                if ($(this).val() == '')
                {
                    $('.Error').show();
                     $('#ContentPlaceHolder1_btn_submit').hide();
                       $('.Password').hide();
                         $('.PasswordMatch').show();
                }
                else
                {
                    if (password != confirmPassword)
                    {
                        $('.Password').hide();
                         $('.PasswordMatch').show();
                          $('.Error').hide();
                    }
                    else
                    {
                        $('#ContentPlaceHolder1_btn_submit').show();
                        $('.PasswordMatch').hide();
                        $('.Password').show();
                          $('.Error').hide();
                    }
                }
            });
         });


         $(function ()
         {
             $('.BlankName').hide();
             $('#ContentPlaceHolder1_txt_clientName').click('keyup', function ()
            {
                 if ($(this).val() == '') {
                     $('.BlankName').show();
                 }
                 else
                 {
                      $('.BlankName').hide();
                 }
            });
         });

         $(function ()
         {
             $('.BlankPosition').hide();
             $('#ContentPlaceHolder1_position').click('keyup', function ()
            {
                 if ($(this).val() == '') {
                     $('.BlankPosition').show();
                 }
                 else
                 {
                      $('.BlankPosition').hide();
                 }
            });
         });

          $(function ()
         {
             $('.BlankPackage').hide();
             $('#ContentPlaceHolder1_ddl_package').click('keyup', function ()
            {
                 if ($(this).val() == '') {
                     $('.BlankPackage').show();
                 }
                 else
                 {
                      $('.BlankPackage').hide();
                 }
            });
         });


          $(function ()
         {
              $('.BlankDob').hide();
              $('#ContentPlaceHolder1_txt_dob').on('keyup', function ()
               {
                  if ($(this).val() == '')
                  {
                     $('.BlankDob').show();
                  }
                 else
                 {
                      $('.BlankDob').hide();
                 }
            });
         });
          $(function ()
         {
              $('.BlankGender').hide();
              $('#ContentPlaceHolder1_ddl_gender').click('keyup', function ()
               {
                  if ($(this).val() == '')
                  {
                     $('.BlankGender').show();
                  }
                 else
                 {
                      $('.BlankGender').hide();
                 }
            });
         });
       

        </script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />  
        <link rel="Stylesheet" href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/themes/redmond/jquery-ui.css" />  
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>  
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script> 
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	
	
  <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>New Member</h3>
              </div>

              
            </div>
            <div class="clearfix"></div>

            <div class="row">
                 
              <div class="col-md-12 col-sm-12 col-xs-12">
                 
                <div class="x_panel">
                     
                  <div class="x_title">
                    
                    <ul class="nav navbar-right panel_toolbox">
                        
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    
                    <!-- Smart Wizard -->
                    <%--<p>This Form is use </p>--%>
                    <div id="wizard" class="form_wizard wizard_horizontal">
                      <ul class="wizard_steps">
                        <li>
                          <a href="#step-1">
                            <span class="step_no">1</span>
                            <span class="step_descr">
                             Step 1<br />
                             <small>Sponsor and Package Information</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-2">
                            <span class="step_no">2</span>
                            <span class="step_descr">
                                              Step 2<br />
                                              <small>Contact Detail</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-3">
                            <span class="step_no">3</span>
                            <span class="step_descr">
                                              Step 3<br />
                                              <small>Bank Information</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-4">
                            <span class="step_no">4</span>
                            <span class="step_descr">
                                              Step 4<br />
                                              <small>Login Information</small>
                                          </span>
                          </a>

                        </li>

                          <li>
                          <a href="#step-5">
                            <span class="step_no">5</span>
                            <span class="step_descr">
                                              Step 5<br />
                                              <small>Payment Information</small>
                                          </span>
                          </a>

                        </li>
                      </ul>
                      <div id="step-1">
                        <div class="form-horizontal form-label-left">
							
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Sponsor Username <span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
								
                             <asp:AutoCompleteExtender ServiceMethod="GetListofCountries" MinimumPrefixLength="1" CompletionInterval="10"  
            EnableCaching="false" CompletionSetCount="10" TargetControlID="sponsor_username" ID="sponsor_username2"  
            runat="server" FirstRowSelected="false">  
        </asp:AutoCompleteExtender>
							<asp:TextBox ID="sponsor_username"  runat="server" class="form-control col-md-7 col-xs-12"  ></asp:TextBox> 
    
                            </div>
                          </div>
                       <%--   <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Sponsor Name <span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                               <asp:TextBox ID="sponsor_username" runat="server" class="form-control col-md-7 col-xs-12" ReadOnly="true"></asp:TextBox>
                            </div>
                          </div>--%> 
                          <div class="form-group">
                            <label  class="control-label col-md-3 col-sm-3 col-xs-12">Position<span class="required" style="color:red">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="position" runat="server" class="form-control col-md-7 col-xs-12" >
                                <asp:ListItem Value=""> Select Position </asp:ListItem>
                                 <asp:ListItem>Left Leg</asp:ListItem>
                                 <asp:ListItem>Right Leg</asp:ListItem>
                            </asp:DropDownList>
                            </div>
                               <asp:Label ID="lblPosition" class="BlankPosition" runat="server" Text="Required!!!"  style=" color: red;"></asp:Label>
                          </div>
                             
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Package<span class="required" style="color:red">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                               <asp:DropDownList ID="ddl_package" runat="server" class="form-control col-md-7 col-xs-12" OnSelectedIndexChanged="ddl_package_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Value="">Select Package</asp:ListItem>
                            </asp:DropDownList>
                            </div>
                               <asp:Label ID="lblPackage" class="BlankPackage" runat="server" Text="Required!!!"  style=" color: red;"></asp:Label>
                          </div>
                        
                        </div>

                      </div>
                      <div id="step-2">
                      <%--  <h2 class="StepTitle">Step 2 Content</h2>--%>
                       <div class="form-horizontal form-label-left">
						   <input ID="File1" type="file" name="file" onchange="userpreviewFile()"  runat="server" Style="margin-left: 30%;
	margin-right: auto;color:blue;" />
<%--<asp:FileUpload ID="avatarUpload" runat="server" />--%>
<%-- %><asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" />--%>
<asp:Image ID="Image1" runat="server" Height="131px" Width="171px" src="images/drop_file.gif"  Style="margin-left: 30%;
	margin-right: auto;"  />
                           <br/>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >Name<span class="required" style="color:red;margin-top:2%">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txt_clientName" runat="server" class="form-control col-md-7 col-xs-12"  AutoCompleteType="Disabled"></asp:TextBox>
                            </div>
                               <asp:Label ID="lblName" class="BlankName" runat="server" Text="Required!!!"  style=" color: red;"></asp:Label>
                          </div>
                          
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender<span class="required" style="color:red">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="ddl_gender" runat="server" class="form-control col-md-7 col-xs-12" >
                                <asp:ListItem Value=""> Select Gender </asp:ListItem>
                                 <asp:ListItem>Male</asp:ListItem>
                                 <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                            </div>
                               <asp:Label ID="Label4" class="BlankGender" runat="server" Text="Required!!!"  style=" color: red;"></asp:Label>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">D.O.B<span class="required" style="color:red">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txt_dob" runat="server" class="form-control col-md-7 col-xs-12"  TextMode="Date"></asp:TextBox>
                            </div>
                              <asp:Label ID="Label5" class="BlankDob" runat="server" Text="Required!!!"  style=" color: red;"></asp:Label>
                          </div>

                            <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Address<span class="required" style="color:red">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                            <textarea id="TextArea1" runat="server" cols="20" rows="2" class="form-control col-md-7 col-xs-12" ></textarea>
                                <%--<textarea id="TextArea1" cols="20" rows="2" class="form-control col-md-7 col-xs-12"></textarea>--%>
                            </div>
                          </div>

                           <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >Zipcode<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txtZipcode" runat="server" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>
						   
						   

                           <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >Country<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                               <asp:DropDownList ID="dldCountry" runat="server" class="form-control col-md-7 col-xs-12" >
                                <asp:ListItem Value=""> Select Country </asp:ListItem>
                                 <asp:ListItem > INDIA</asp:ListItem>
                                 
                            </asp:DropDownList>
                            </div>
                          </div>

                           <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >State<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:DropDownList ID="dldState" runat="server" class="form-control col-md-7 col-xs-12"  >
                                <asp:ListItem Value=""> Select State </asp:ListItem>
                                  <asp:ListItem> UP </asp:ListItem>
                               
                            </asp:DropDownList>
                            </div>
                          </div>

                           <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >City<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txtCity" runat="server" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                                
                          </div>

                           <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >Email<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>

                           <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >Mobile No.<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txtMobile" runat="server"  class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>

                           <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >Alternate Mobile No.<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txtAlter" runat="server"  class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>
                        
                        </div>
                      </div>
                      <div id="step-3">
                          <div class="form-horizontal form-label-left">
                         <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >Name of Bank<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txtBankName" runat="server"  class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >Account Holder Name<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txtAccountName" runat="server"  class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >Branch Name<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txtBranchName" runat="server"  class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >Bank Account Number<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txtBankAccountNumber" runat="server"  class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >IFSC Code<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txtIfscCode" runat="server"  class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>

                           <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >PAN No.<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txtPan" runat="server"  class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>
                      </div>
                          </div>
                      <div id="step-4">
                        
                           <div class="form-horizontal form-label-left">
                         <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >Password<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"  class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>

                                <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >Confirm Password<span class="required" style="color:red">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="txt_confirmPassword" runat="server" TextMode="Password"  class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                <br/>
                                <br/>
                                <br/>
                                 <span class="Error alert alert-danger"  style="color:white">* Required!</span>
                                 <span class="PasswordMatch alert alert-danger" style="color:white" >* Password and Confirm Password Not Match!</span>
                                 <span class="Password alert alert-success" style="color:white" >* Success!</span>
                                <br/>
                            </div>
                          </div>
                               </div>

                      </div>

                         <div id="step-5">


<%--                                <div class="form-horizontal form-label-left">--%>
                             
              <div class="col-md-12 col-sm-6 col-xs-12">
                <div class="x_panel">
                      <asp:Label ID="Label6" runat="server" Text="Amount:        " class="col-lg-offset-5" style="font-size:18px"></asp:Label>
                     <asp:Label ID="lblPackageAmount" runat="server" CssClass="col-lg-0" Text="0.00"  style="font-size:18px"></asp:Label>
                    <%--<asp:Label ID="lblPackageAmount" runat="server" Text="Label" style="margin-left:47%; font-size:18px"></asp:Label>--%>
                  <div class="x_content">

                    <div class="col-xs-3">
                      <!-- required for floating -->
                      <!-- Nav tabs -->
                      <ul id="payment_category_menu_id" class="nav nav-tabs tabs-left">
                        <li id="E-Wallet" class="active"><a href="#home"  data-toggle="tab">E-Wallet</a>
                        </li>
                        <li id="Bank Receipt"><a href="#profile" data-toggle="tab">Bank Receipt</a>
                        </li>
                        <li id="Free Join"><a href="#messages" data-toggle="tab">Free Join</a>
                        </li>
                       
                      </ul>
						   <asp:HiddenField ID="payment_category_hidden" runat="server" />
                          <asp:HiddenField ID="username_hidden" runat="server" />
                    </div>

                    <div class="col-xs-9">
                      <!-- Tab panes -->
                      <div class="tab-content">
                        <div class="tab-pane active" id="home">
                          <p class="lead"><asp:Label ID="Label1" runat="server" Text="E-Wallet"></asp:Label></p>

                             <div class="form-inline">
                  <div class="form-group">
                    <label for="ex3">Username</label><span class="required">*</span>
                   <asp:TextBox ID="TextBox18" runat="server"  class="form-control" ></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <label for="ex4">Transaction Password</label><span class="required">*</span>
                    <asp:TextBox ID="TextBox19" runat="server"  class="form-control " ></asp:TextBox>
                  </div>
               
                </div>
                          
                        </div>
                         
                        <div class="tab-pane" id="profile">
                              <p class="lead"><asp:Label ID="Label2" runat="server" Text="Bank Receipt"></asp:Label></p>
                            <label for="ex3">Upload Receipt</label><span class="required">*</span>
							<input ID="avatarUpload" type="file" name="file" onchange="previewFile()"  runat="server" />
<%--<asp:FileUpload ID="avatarUpload" runat="server" />--%>
<%-- %><asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" />--%>
<asp:Image ID="Avatar" runat="server" Height="225px"  src="images/drop_file.png" Width="325px"  />

                        </div>
                        <div class="tab-pane" id="messages">
                              <p class="lead"><asp:Label ID="Label3" runat="server" Text="Free Join"></asp:Label></p>
                        </div>
                    
                      </div>
                    </div>
                          
                    <div class="clearfix"></div>
                  
                                    </div>
                                 </div>
                               </div>
                            </div>
                          </div>
                      <div class="col-lg-offset-10">
                           <asp:Button ID="btn_submit" CssClass="btn btn-default" runat="server" Text="Finish" style="margin-top:-35%; margin-left:-15%" OnClick="btn_submit_Click"   />
                           
                          </div>
                        <asp:Label ID="lblError" CssClass="alert alert-danger alignleft " runat="server"  ForeColor="White" style="margin-top:-51px"></asp:Label>
                        </div>
                    <div class="col-lg-offset-10" >
                  <%--  <asp:Button ID="btn_submit" CssClass="btn btn-defaul" runat="server" Text="Finish" style="margin-top:-41%; margin-left:-15%" OnClick="btn_submit_Click" />--%>
                        </div>
                    <!-- End SmartWizard Content -->
                    
                  </div>
                   
                </div>
               
              </div>
             
            </div>
          </div>
	<script src="/_layouts/PageMethodDemo/jquery-1.10.2.min.js" type="text/javascript"></script>
       <script type="text/javascript">
        function previewFile() {
            var preview = document.querySelector('#<%=Avatar.ClientID %>');
            var file = document.querySelector('#<%=avatarUpload.ClientID %>').files[0];
            var reader = new FileReader();

            reader.onloadend = function () {
                preview.src = reader.result;
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "";
            }
		   }
		    function userpreviewFile() {
            var preview = document.querySelector('#<%=Image1.ClientID %>');
            var file = document.querySelector('#<%=File1.ClientID %>').files[0];
            var reader = new FileReader();

            reader.onloadend = function () {
                preview.src = reader.result;
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "";
            }
		   }

		   $(function () {
			   $("#payment_category_menu_id li").on('click', function () {
				   var payment_category_value = this.id;
				   $('#<%=payment_category_hidden.ClientID %>').val(payment_category_value);
				  // alert($('#<%=payment_category_hidden.ClientID%>').val());
				   // id of clicked li by directly accessing DOMElement property
				   /*  alert($(this).attr('id')); // jQuery's .attr() method, same but more verbose
					 alert($(this).html()); // gets innerHTML of clicked li
					 alert($(this).text());*/ // gets text contents of clicked li
			   });
		   });
		   </script>
	<script ="javascript" type="text/javascript">
		$(function () {

			$('#<%=position.ClientID%>').on('change',
				 function (request, response) {
					var position = $('#<%=position.ClientID%>').val();
					//alert(position);
					$.ajax({
						type: 'POST',
						url: 'add_newmember.aspx/GetPositionResponse',
						data: "{ 'position2':'" + position + "'}",
						dataType: 'json',
						contentType: "application/json; charset=utf-8",
						error: function (XMLHttpRequest, textStatus, errorThrown) {
							alert("Request: " + XMLHttpRequest.value + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
						},
						success: function (data) {
							response($.map(data.d, function (item) {
							//	alert(data.d);

							}))
						}
					});
				
			});
		});
	 
		</script>
		   
	<script ="javascript" type="text/javascript">
		    $(function() {  
        $('#<%=sponsor_username.ClientID%>').autocomplete({  
			source: function (request, response) {
				var a = 'B';
				
                $.ajax({  
					type: 'POST',
					url: 'add_newmember.aspx/GetListofUsername',
					data: "{ 'pre':'" + request.term + "'}",
					dataType: 'json',
                    contentType: "application/json; charset=utf-8",  
					error: function (XMLHttpRequest, textStatus, errorThrown) {
						alert("Request: " + XMLHttpRequest.value + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
    },
					success: function (data) {
                        response($.map(data.d, function (item) {
                           // $('#<%=username_hidden.ClientID %>').val(item.value);
                           // alert(data.d);
                    return { value: item }
                }))
            
                         
    }  
                });  
            }  
        });  
		});  
		
		   
    </script>
    <script src="vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
</asp:Content>
