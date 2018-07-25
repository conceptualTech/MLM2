<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="profile_report.aspx.cs" Inherits="MLM.profile_report" %>
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

                    <asp:GridView ID="datatable" runat="server" AutoGenerateColumns="False" Width="100%" class="table table-striped table-bordered" AllowPaging="false" RowHeaderColumn="id" >
                          <Columns>

                               <asp:TemplateField HeaderText="#">
                               <ItemTemplate>
                               <%#Container.DataItemIndex+1 %>
                               </ItemTemplate>
                               </asp:TemplateField>

                               <asp:BoundField DataField="username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                               <asp:BoundField DataField="client_name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                               <asp:BoundField DataField="sponsor_name" HeaderText="Sponsor Name" ReadOnly="True" SortExpression="Sponsor Name" />
                               <asp:BoundField DataField="client_name" HeaderText="Member Name" ReadOnly="True" SortExpression="Member Name" />
                               <asp:BoundField DataField="mobile_number" HeaderText="Mobile Number" ReadOnly="True" SortExpression="Member Number" />
                               <asp:BoundField DataField="address" HeaderText="Address" ReadOnly="True" SortExpression="Address" />
                               <asp:BoundField DataField="email_id" HeaderText="Email Id" ReadOnly="True" SortExpression="Email Id" />
                               <asp:BoundField DataField="bank_name" HeaderText="Bank Name" ReadOnly="True" SortExpression="Bank Name" />
                               <asp:BoundField DataField="account_holder_name" HeaderText="Account Holder Name" ReadOnly="True" SortExpression="Account Holder Name" />
                               <asp:BoundField DataField="branch_name" HeaderText="Branch Name" ReadOnly="True" SortExpression="Branch Name" />
                               <asp:BoundField DataField="bank_account_number" HeaderText="Bank Account Number" ReadOnly="True" SortExpression="Bank Account Number" />
                               <asp:BoundField DataField="ifsc_code" HeaderText="IFSC Code" ReadOnly="True" SortExpression="IFSC Code" />
                               <asp:BoundField DataField="status" HeaderText="Status" ReadOnly="True" SortExpression="Status" />

                          </Columns>
                         
                      </asp:GridView>
                   </div>
                </div>
              </div>
            </div>
          </div>
       </div>
</asp:Content>
