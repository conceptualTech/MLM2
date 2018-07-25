<%@ Page Title="" Language="C#" MasterPageFile="~/UserPannel/USER.Master" AutoEventWireup="true" CodeFile="profile_manage.aspx.cs" Inherits="MLM.UserPannel.profile_manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
     <div class="right_col" role="main">
          <div class="title_left">
                <h2>Profile Manage</h2>
              </div>
         <br/>
             <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><i class="fa fa-bars"></i> Search Member</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                       <div class='col-sm-4'>
                   Username

                    <div class="form-group">
                      
                          <asp:DropDownList ID="username" runat="server" class="form-control col-md-7 col-xs-12" AutoPostBack="true" OnSelectedIndexChanged="username_SelectedIndexChanged">
                         <asp:ListItem >Select Username</asp:ListItem>
                         </asp:DropDownList>

                        </div>
                   
                </div>
                      </div>
                     
                    </div>
                   <div class="x_panel">
                       <asp:Panel ID="Panel1" runat="server" style="height:auto">
                           <div class="x_title">
                    <h2 style="color:#16aad8"><i class="fa fa-eye"></i > Profile</h2>
                              
<div class="clearfix"></div>
                  </div>
                     <div class="x_content">
                     <div class="x_title">
                    <h2><i></i > Sponsor And Package Information</h2>
                         <div class="clearfix"></div>
                                </div>

                          <div class="">
                            
                             <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <label class="">Sponsor Name</label>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="sponsor_name" runat="server" style="color:black" class=" col-md-3 col-xs-12"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <label class="">Sponsor Username <span class="required">*</span></label>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="sponsor" runat="server" style="color:black" class=" col-md-7 col-xs-12" Text="N.A"></asp:Label>
                                    </div>
                                </div>
                            </div>
                          </div>

                            <div class="">
                            
                             <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <label class="">Position</label>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="position" runat="server" style="color:black" class=" col-md-3 col-xs-12" Text="N.A"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <label class="">Package</label>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="package" runat="server" style="color:black"  class=" col-md-7 col-xs-12" Text="N.A"></asp:Label>
                                    </div>
                                </div>
                            </div>
                          </div>
                         
                             
                    <div class="x_content">
                    <div class="" role="tabpanel" data-example-id="togglable-tabs">
                      <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                        
                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="true">Personal Information</a>
                        </li>

                          <li role="presentation" class=""><a href="#tab_content3" role="tab" id="contact" data-toggle="tab" aria-expanded="false">Contact Information</a>
                        </li>

                           <li role="presentation" class=""><a href="#tab_content4" role="tab" id="bank" data-toggle="tab" aria-expanded="false">Bank Information</a>
                        </li>

                         
                  
                      </ul>
                      <div id="myTabContent" class="tab-content">
                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content2" aria-labelledby="profile-tab">
                            <div class="x_content">
                       <div class='col-sm-4'>
                  <span style="color:#16aad8;">  Name</span>
                    <div class="form-group">
                            <asp:TextBox ID="client_name" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                           

                     
                   <div class='col-sm-4'>
                  <span style="color:#16aad8;">  Gender</span>
                    <div class="form-group" >
                            <asp:TextBox ID="gender" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                       
                      </div>
                            <div class="x_content">
                       <div class='col-sm-4'>
                  <span style="color:#16aad8;">  D.O.B</span>
                    <div class="form-group">
                            <asp:TextBox ID="dob" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                       
                      </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="contact">
                               <div class="x_content">
                       <div class='col-sm-4'>
                   <span style="color:#16aad8;"> Address</span>
                    <div class="form-group">
                            <asp:TextBox ID="address" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                           

                     
                   <div class='col-sm-4'>
                  <span style="color:#16aad8;">  Country</span>
                    <div class="form-group" >
                            <asp:TextBox ID="country" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>

                  <div class='col-sm-4'>
                  <span style="color:#16aad8;"> State</span>
                    <div class="form-group">
                    <asp:TextBox ID="state" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                       
                      </div>
                            <div class="x_content">
                       <div class='col-sm-4'>
                  <span style="color:#16aad8;"> City</span>
                    <div class="form-group">
                            <asp:TextBox ID="city" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>

                                 <div class='col-sm-4'>
                  <span style="color:#16aad8;"> Zipcode</span>
                    <div class="form-group">
                            <asp:TextBox ID="zipcode" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>

                                 <div class='col-sm-4'>
                 <span style="color:#16aad8;">  Email</span>
                    <div class="form-group">
                            <asp:TextBox ID="email" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                       
                      </div>

                            <div class="x_content">
                       <div class='col-sm-4'>
                 <span style="color:#16aad8;"> Mobile No.</span>
                    <div class="form-group">
                            <asp:TextBox ID="mobile" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>

                                 <div class='col-sm-4'>
                 <span style="color:#16aad8;">  Alternate Mobile No.</span>
                    <div class="form-group">
                            <asp:TextBox ID="alter_mobile" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>

                       
                      </div>
                        </div>
                              <div role="tabpanel" class="tab-pane fade" id="tab_content4" aria-labelledby="bank">
                               <div class="x_content">
                       <div class='col-sm-4'>
                  <span style="color:#16aad8;"> Bank Name</span>
                    <div class="form-group">
                            <asp:TextBox ID="bank_name" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                           

                     
                   <div class='col-sm-4'>
                <span style="color:#16aad8;">   Branch Name</span>
                    <div class="form-group" >
                            <asp:TextBox ID="branch_name" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>

                  <div class='col-sm-4'>
                  <span style="color:#16aad8;"> Account Holder</span>
                    <div class="form-group">
                    <asp:TextBox ID="holder" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                       
                      </div>
                            <div class="x_content">
                       <div class='col-sm-4'>
                  <span style="color:#16aad8;"> Account Number</span>
                    <div class="form-group">
                            <asp:TextBox ID="acc_number" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>

                                 <div class='col-sm-4'>
                  <span style="color:#16aad8;"> IFSC Code</span>
                    <div class="form-group">
                            <asp:TextBox ID="ifsc" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>

                                 <div class='col-sm-4'>
                  <span style="color:#16aad8;"> Pan Number</span>
                    <div class="form-group">
                            <asp:TextBox ID="pan" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                       
                       </div>
                     </div>
                   </div>
                </div>
              </div>
           </div>
       </asp:Panel>
    </div>
  </div>
</div>
    
  
</asp:Content>
