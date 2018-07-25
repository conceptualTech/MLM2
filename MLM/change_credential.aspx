<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="change_credential.aspx.cs" Inherits="MLM.change_credential" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="right_col" role="main">
             <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><i class="fa fa-edit"></i> Change Credential</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                   <div class='col-sm-3 col-xs-12'>
                   Select Username<span style="color:red">*</span>
                    <div class="form-group">
                           <asp:TextBox ID="username" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox>
                        </div>
                </div>

                   <div class='col-sm-3 col-xs-12'>
                   Change Username<span style="color:red">*</span>
                   <div class="form-group">
                            <asp:TextBox ID="new_username" runat="server" class="form-control" required="true" ></asp:TextBox>
                        </div>
                </div>
                   
                       <div class='col-sm-3 col-xs-12'>
                       <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" OnClick="Button1_Click"/>
                    </div>
                 </div>
                    </div>
                 </div>
        </div>  
</asp:Content>
