﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="fund_management.aspx.cs" Inherits="MLM.fund_management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="right_col" role="main">
             <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><i class="fa fa-bars"></i> Credit/Debit</h2>
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
                   Username<span style="color:red">*</span>
                    <div class="form-group">
                           <asp:DropDownList ID="user" runat="server" class="form-control col-md-7 col-xs-12"   OnSelectedIndexChanged="user_SelectedIndexChanged" >
                         <asp:ListItem Value="">Select Username</asp:ListItem>
                         </asp:DropDownList>
                    </div>
                </div>

                     
                   <div class='col-sm-4'>
                   Amount<span style="color:red">*</span>
                   <div class="form-group">
                            <asp:TextBox ID="amount" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                     
                      </div>
                      <div class="x_content">
                    <div class='col-sm-4'>Transaction Note<span style="color:red">*</span>
                   <div class="form-group">
                            <asp:TextBox ID="note" runat="server" class="form-control" ></asp:TextBox>
                       <br/>
                       <asp:Label ID="Label1" runat="server"  CssClass="alert alert-danger"></asp:Label>
                       <asp:Label ID="Label2" runat="server"  CssClass="alert alert-success"></asp:Label>
                    </div>
                </div>
                        <div class='col-sm-3'>
                       <asp:Button ID="Button1" runat="server" Text="Add Amount" class="btn btn-success" style="margin-top:17px" OnClick="Button1_Click" />
                       <asp:Button ID="deduct" runat="server" Text="Deduct Amount" class="btn btn-danger" style="margin-top:17px" OnClick="deduct_Click" />
                        </div>
                    </div>
                 </div>
           </div> 
    </div>

</asp:Content>
