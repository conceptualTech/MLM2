<%@ Page Title="" Language="C#" MasterPageFile="~/UserPannel/USER.Master" AutoEventWireup="true" CodeFile="change_password.aspx.cs" Inherits="MLM.UserPannel.change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

    
   
    <div class="right_col" role="main">
             <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><i class="fa fa-bars"></i>  Transaction Password</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                 

    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                     <asp:Panel ID="Panel1" runat="server">
                  <div class="x_content">


                    <div class="" role="tabpanel" data-example-id="togglable-tabs">
                      <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                        <li role="presentation" class="active">
                         <a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Change Transaction Password</a>
                        </li>
                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Change User Transaction Password</a>
                        </li>
                         <%-- <li role="presentation" class=""><a href="#tab_content3" role="tab" id="forgot" data-toggle="tab" aria-expanded="false">Forgot Transaction Password</a>
                        </li>--%>
                      </ul>
                      <div id="myTabContent" class="tab-content">
                          
                             
                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                          <div class="x_content">
                       <div class='col-sm-4'>
                   Current Password<span style="color:red">*</span>
                    <div class="form-group">
                            <asp:TextBox ID="current_password" runat="server" TextMode="Password"  class="form-control" ></asp:TextBox>
                             
                    </div>
                </div>
                     
                   <div class='col-sm-4'>
                   New Password<span style="color:red">*</span>
                   <div class="form-group">
                            <asp:TextBox ID="new_password" runat="server" TextMode="Password" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                     
                      </div>
                      <div class="x_content">
                    <div class='col-sm-4'>Re-Enter New Password<span style="color:red">*</span>
                   <div class="form-group">
                            <asp:TextBox ID="confirm_password" runat="server" TextMode="Password"  class="form-control"   ></asp:TextBox>
                       <br/>
                        <asp:Label ID="Label2" CssClass="alert alert-danger" runat="server" ></asp:Label>
                        <asp:Label ID="Label3" CssClass="alert alert-success" runat="server" ></asp:Label>
                    </div>
                </div>
                        <div class='col-sm-3'>
                       <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" OnClick="Button1_Click"/>
                        </div>
                    </div>

                        </div>
                               
                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
                              <div class="x_content">
                       <div class='col-sm-4'>
                   Username<span style="color:red">*</span>
                    <div class="form-group">
                            <asp:DropDownList ID="user" runat="server" class="form-control col-md-7 col-xs-12"  OnSelectedIndexChanged="user_SelectedIndexChanged" >
                         <asp:ListItem Value="">Select Username</asp:ListItem>
                         </asp:DropDownList>
                    </div>
                </div>

                     
                   <div class='col-sm-4'>
                   New Password<span style="color:red">*</span>
                   <div class="form-group">
                            <asp:TextBox ID="user_password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                        
                    </div>
                </div>
                     
                      </div>
                      <div class="x_content">
                    <div class='col-sm-4'>Re-Enter New Password<span style="color:red">*</span>
                   <div class="form-group">
                            <asp:TextBox ID="re_enter_password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                       <br/>
                       <asp:Label ID="Label1" runat="server" CssClass="alert alert-danger"  ></asp:Label>
                        <asp:Label ID="Label4" CssClass="alert alert-success" runat="server" ></asp:Label>
                    </div>
                </div>
                        <div class='col-sm-3'>
                       <asp:Button ID="Button2" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" OnClick="Button2_Click" />
                        </div>
                    </div>
                        </div>

                           <div role="tabpanel" class="tab-pane fade " id="tab_content3" aria-labelledby="forgot">
                               <div class="x_content">
                       <div class='col-sm-4'>
                   Username<span style="color:red">*</span>
                    <div class="form-group">
                            <asp:DropDownList ID="username" runat="server" class="form-control col-md-7 col-xs-12" >
                         <asp:ListItem Value=""> Select Username </asp:ListItem>
                         </asp:DropDownList>
                    </div>
                </div>

                     
                   <div class='col-sm-4'>
                   Email<span style="color:red">*</span>
                   <div class="form-group">
                            <asp:TextBox ID="email" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox>
                    </div>
                </div>
                     
                      </div>
                        </div>
                      </div>
                    </div>
                  </div>
                    </asp:Panel>
         </ContentTemplate>
          <%-- <Triggers>
               <asp:PostBackTrigger ControlID="current_password" />
               <asp:PostBackTrigger ControlID="Button1" />
        </Triggers>--%>
    </asp:UpdatePanel>
                </div>
              </div>
           </div>
       
</asp:Content>
