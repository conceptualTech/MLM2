<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="approval.aspx.cs" Inherits="MLM.approval" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">

     <div class="right_col" role="main">
    <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h3>Approval<small>Users</small></h3>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  <asp:TextBox  ID="txtId"  runat="server" class="form-control" style="display:none" ></asp:TextBox>
                  <asp:GridView ID="datatable" runat="server" AutoGenerateColumns="False" Width="100%" class="table table-striped table-bordered" AllowPaging="True" RowHeaderColumn="id" OnPageIndexChanging="datatable_PageIndexChanging" >
                          <Columns>

                               <asp:TemplateField   HeaderText="Member Id">
						       <ItemTemplate>
							   <asp:Label ID="lblId" runat="server" Text='<%# Eval("id") %>' />
					           </ItemTemplate>
					           </asp:TemplateField> 

                               <asp:BoundField DataField="sponsor_name" HeaderText="Sponsor Name" ReadOnly="True" SortExpression="Sponsor Name" />
                               <asp:BoundField DataField="sponsor_username" HeaderText="Sponsor Username" ReadOnly="True" SortExpression="Sponsor Username" />
                               <asp:BoundField DataField="client_name" HeaderText="Member Name" ReadOnly="True" SortExpression="Member Name" />
                               <asp:BoundField DataField="username" HeaderText="Member Username" ReadOnly="True" SortExpression="Member Username" />
                               <asp:BoundField DataField="leg_position" HeaderText="Leg Position" ReadOnly="True" SortExpression="Leg Position" />
                               <asp:BoundField DataField="package" HeaderText="Package" ReadOnly="True" SortExpression="Package" />
                               <asp:BoundField DataField="mobile_number" HeaderText="Mobile Number" ReadOnly="True" SortExpression="Mobile Number" />
                               <asp:BoundField DataField="email_id" HeaderText="Email Id" ReadOnly="True" SortExpression="Email Id" />
                               <asp:BoundField DataField="payment_category" HeaderText="Payment Category" ReadOnly="True" SortExpression="Payment Category" />
                               <asp:BoundField DataField="amount_paid" HeaderText="Amount Paid" ReadOnly="True" SortExpression="Amount Paid" />

                               <asp:TemplateField  HeaderText="Mark">
						       <ItemTemplate>
							   <asp:CheckBox ID="CheckBox1" runat="server" ValidationGroup="gender" />
						       </ItemTemplate>
					           </asp:TemplateField>

                          </Columns>

                          <EmptyDataTemplate >
                          <asp:Image ImageUrl="~/imagess/search-bar.gif" runat="server" style="height:63%;"       />
                          </EmptyDataTemplate>
                         
                          <PagerSettings Mode="NumericFirstLast" PageButtonCount="1" />
                         
                          <PagerStyle BorderColor="White" BorderStyle="Solid" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="22px" Font-Strikeout="False" Font-Underline="False" ForeColor="#666666" HorizontalAlign="Center" VerticalAlign="Top" Width="10px" Wrap="False" />
                         
                      </asp:GridView>
                    
                  
                 
                  </div>
                    <asp:Button ID="btnApproved" runat="server" CssClass="btn btn-success" Text="Approve Member" OnClick="btnApproved_Click" />
                </div>
              </div>
         </div>

   <script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
</asp:Content>
