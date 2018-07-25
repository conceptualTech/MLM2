<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="profile_report_view.aspx.cs" Inherits="MLM.profile_report_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Profile Report</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
               
                </div>
              </div>
            </div>
            <div class="clearfix"></div>
          

            <div class="row">
              <div class="col-md-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Profile Report</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                  
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                   <div class="x_content">

                          <div class='col-lg-offset-5 '>Name
                       <asp:Label ID="lblName" CssClass="col-lg-offset-3" runat="server" Text="N.A" style="margin-left:13%" ></asp:Label>
                </div>
                       <div class="x_title"></div>
                    

                    <div class='col-lg-offset-5 '>Username
                       <asp:Label ID="lblUsername" CssClass="col-lg-offset-3" runat="server" Text="N.A" style="margin-left:11%" ></asp:Label>
                </div>
                    <div class="x_title"></div>
                          <div class='col-lg-offset-5 '>Sponsor Name
                       <asp:Label ID="lblSponsorName" CssClass="col-lg-offset-3" runat="server" Text="N.A" style="margin-left:9%" ></asp:Label>
                </div>
                     <div class="x_title"></div>
                          <div class='col-lg-offset-5 '>Address
                       <asp:Label ID="lblAddress" CssClass="col-lg-offset-3" runat="server" Text="N.A" style="margin-left:13%"></asp:Label>
                </div>
                      <div class="x_title"></div>
                          <div class='col-lg-offset-5 '>Pincode
                       <asp:Label ID="lblPincode" CssClass="col-lg-offset-3" runat="server" Text="N.A" style="margin-left:13%"></asp:Label>
                </div>
                       <div class="x_title"></div>
                          <div class='col-lg-offset-5 '>Country
                       <asp:Label ID="lblCountry" CssClass="col-lg-offset-3" runat="server" Text="N.A" style="margin-left:13%" ></asp:Label>
                </div>
                       <div class="x_title"></div>
                          <div class='col-lg-offset-5 '>State
                       <asp:Label ID="lblState" CssClass="col-lg-offset-3" runat="server" Text="N.A" style="margin-left:15%"></asp:Label>
                </div>
                       <div class="x_title"></div>
                         <div class='col-lg-offset-5 '>Mobile No.
                       <asp:Label ID="lblMobile" CssClass="col-lg-offset-3" runat="server" Text="N.A" style="margin-left:12%" ></asp:Label>
                </div>
                      <div class="x_title"></div>
                         <div class='col-lg-offset-5 '>Alternate Mobile No.
                       <asp:Label ID="lblAlternate" CssClass="col-lg-offset-3" runat="server" Text="N.A" style="margin-left:6%"></asp:Label>
                </div>
                       <div class="x_title"></div>
                         <div class='col-lg-offset-5 '>Email
                       <asp:Label ID="lblEmail" CssClass="col-lg-offset-3" runat="server" Text="N.A" style="margin-left:14%"></asp:Label>
                </div>
                     <div class="x_title"></div>
                         <div class='col-lg-offset-5 '>D.O.B
                       <asp:Label ID="lblDob" CssClass="col-lg-offset-3" runat="server" Text="N.A" style="margin-left:14%"></asp:Label>
                </div>
                       <div class="x_title"></div>
                         <div class='col-lg-offset-5 '>Gender
                       <asp:Label ID="lblGender" CssClass="col-lg-offset-3" runat="server" Text="N.A" style="margin-left:13%"></asp:Label>
                </div>
                      
                    </div>
                </div>
              </div>
            </div>
          </div>
       </div>
</asp:Content>
