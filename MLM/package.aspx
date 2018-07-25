<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="package.aspx.cs" Inherits="MLM.package" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="right_col" role="main">
    <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h3>Add New Package</h3>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class="form-horizontal form-label-left">

                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Package Name<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <asp:TextBox ID="package_name" runat="server" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Amount <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                               <asp:TextBox ID="amount" runat="server" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">PV</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                               <asp:TextBox ID="pv" runat="server" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Pair Price</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                               <asp:TextBox ID="pair_price" runat="server" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>

                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Referral Commission</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                               <asp:TextBox ID="referral" runat="server" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>

                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                             <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-success" OnClick="Button1_Click1"/>
                            </div>
                          </div>
                        </div>
                  </div>
                </div>
              </div>
         </div>
</asp:Content>
