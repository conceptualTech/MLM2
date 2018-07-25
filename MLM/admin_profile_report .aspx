<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="admin_profile_report .aspx.cs" Inherits="MLM.admin_profile_report" %>
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
              <div class="col-md-6 col-xs-12">
              

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
                    <div class='col-sm-4'>Username<span style="color:red">*</span>
                   <div class="form-group">
                            <asp:DropDownList ID="ddlUsername" runat="server" class="form-control col-md-9 col-xs-12">
                         <asp:ListItem> Select Username </asp:ListItem>
                         </asp:DropDownList>
                    </div>
                </div>
                        <div class='col-sm-3'>
                       <asp:Button ID="Button2" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" OnClick="Button2_Click" />
                        </div>
                    </div>
                </div>

                


              </div>

              <div class="col-md-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Profile Report </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class='col-sm-4'>Enter Count<span style="color:red">*</span>
                   <div class="form-group">
                            <asp:TextBox ID="txtCount" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                        <div class='col-sm-3'>
                       <asp:Button ID="btnProfile" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" OnClick="btnProfile_Click" />
                        </div>
                    </div>
                </div>
              </div>


              <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Profile Report </h2>
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
                   Enter Count Start From<span style="color:red">*</span>
                    <div class="form-group">
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>

                     
                   <div class='col-sm-4'>
                   Enter Count<span style="color:red">*</span>
                   <div class="form-group">
                            <asp:TextBox ID="TextBox4" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                           <asp:Button ID="Button3" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" />
                     
                      </div>
                  </div>
                
              </div>
            </div>
          </div>
        </div>
    
</asp:Content>
