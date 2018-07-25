<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="rank_performance_report.aspx.cs" Inherits="MLM.rank_performance_report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="right_col" role="main">
          <div class="">

       <div class="row">
              
              <div class="col-md-12 col-xs-12">
                <div class="x_panel" >
                  <div class="x_title">
                    <h2>Rank Performance Report </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class='col-sm-4'>Select Username<span style="color:red">*</span>
                   <div class="form-group">
                         <asp:DropDownList ID="DropDownList2" runat="server" class="form-control col-md-9 col-xs-12 " required="true">
                         <asp:ListItem Value=""> Select Username </asp:ListItem>
                         </asp:DropDownList>
                    </div>
                </div>
                        <div class='col-sm-3'>
                       <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" />
                        </div>
                    </div>
                </div>
              </div>


           
            </div>
    </div>
         </div>
</asp:Content>
