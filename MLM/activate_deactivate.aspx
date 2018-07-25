<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="activate_deactivate.aspx.cs" Inherits="MLM.activate_deactivate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Scripts/Browsing.css" rel="stylesheet" />

    <div class="right_col" role="main">
             <div class="col-md-12 col-sm-12 col-xs-12">
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                <div class="x_panel">
                  <div class="x_title">
                    <h2><i class="fa fa-search"></i> Activate Deactivate Member</h2>
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
                           <asp:DropDownList ID="ddlUsername" runat="server"  class="form-control" OnSelectedIndexChanged="ddlUsername_SelectedIndexChanged" AutoPostBack="true" required="true">
                         <asp:ListItem Value="">Select Username</asp:ListItem>
                         </asp:DropDownList>
                        </div>
                </div>
                       <div class='col-sm-3'>
                    </div>
                 </div>
                    <div class="x_panel" runat="server" id="divDeactivate" style="overflow-x:auto">
                    <div class="x_content" >
                   <div class='col-sm-4'>
                   Activate Member<span style="color:red">*</span>
                       <br/>
                </div>
                        <asp:GridView ID="datatable" runat="server" AutoGenerateColumns="False" Width="100%" class="table table-striped table-bordered" AllowPaging="True" RowHeaderColumn="id"  >
                          <Columns>
                             
                               <asp:BoundField DataField="id" HeaderText="Member Id" ReadOnly="True" SortExpression="Member Id" />
                               <asp:BoundField DataField="sponsor_name" HeaderText="Sponsor Name" ReadOnly="True" SortExpression="Sponsor Name" />
                               <asp:BoundField DataField="sponsor_username" HeaderText="Sponsor Username" ReadOnly="True" SortExpression="Sponsor Username" />
                               <asp:BoundField DataField="client_name" HeaderText="Member Name" ReadOnly="True" SortExpression="Member Name" />
                               <asp:BoundField DataField="username" HeaderText="Member Username" ReadOnly="True" SortExpression="Member Username" />
                               <asp:BoundField DataField="mobile_number" HeaderText="Mobile Number" ReadOnly="True" SortExpression="Mobile Number" />
                               <asp:BoundField DataField="email_id" HeaderText="Email Id" ReadOnly="True" SortExpression="Email Id" />

                          </Columns>

                          <EmptyDataTemplate >
                          <asp:Image ImageUrl="~/imagess/search-bar.gif" runat="server" style="height:63%;" />
                          </EmptyDataTemplate>
                          <PagerSettings Mode="NumericFirstLast" PageButtonCount="1" />
                          <PagerStyle BorderColor="White" BorderStyle="Solid" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="22px" Font-Strikeout="False" Font-Underline="False" ForeColor="#666666" HorizontalAlign="Center" VerticalAlign="Top" Width="10px" Wrap="False" />
                     </asp:GridView>
                    
                    <asp:Button ID="btnActivate" runat="server" CssClass="btn btn-success" Text="Activate Member" OnClick="btnActivate_Click" />
                  
                  </div>
                     
                 </div>
                     <div class="x_panel" runat="server" id="divActivate" style="overflow-x:auto">
                   <div class="x_content" >
                   <div class='col-sm-4'>
 Deactivate Member<span style="color:red">*</span>
                       <br/>
                </div>
                        <asp:GridView ID="gvDatatable" runat="server" AutoGenerateColumns="False" Width="100%" class="table table-striped table-bordered" AllowPaging="True" RowHeaderColumn="id"  >
                          <Columns>
                             
                               <asp:BoundField DataField="id" HeaderText="Member Id" ReadOnly="True" SortExpression="Member Id" />
                               <asp:BoundField DataField="sponsor_name" HeaderText="Sponsor Name" ReadOnly="True" SortExpression="Sponsor Name" />
                               <asp:BoundField DataField="sponsor_username" HeaderText="Sponsor Username" ReadOnly="True" SortExpression="Sponsor Username" />
                               <asp:BoundField DataField="client_name" HeaderText="Member Name" ReadOnly="True" SortExpression="Member Name" />
                               <asp:BoundField DataField="username" HeaderText="Member Username" ReadOnly="True" SortExpression="Member Username" />
                               <asp:BoundField DataField="mobile_number" HeaderText="Mobile Number" ReadOnly="True" SortExpression="Mobile Number" />
                               <asp:BoundField DataField="email_id" HeaderText="Email Id" ReadOnly="True" SortExpression="Email Id" />
                            


                          </Columns>
                          <EmptyDataTemplate >
                          <asp:Image ImageUrl="~/imagess/search-bar.gif" runat="server" style="height:63%;" />
                          </EmptyDataTemplate>
                          <PagerSettings Mode="NumericFirstLast" PageButtonCount="1" />
                          <PagerStyle BorderColor="White" BorderStyle="Solid" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="22px" Font-Strikeout="False" Font-Underline="False" ForeColor="#666666" HorizontalAlign="Center" VerticalAlign="Top" Width="10px" Wrap="False" />
                     </asp:GridView>
                  <asp:Button ID="btnDeactivate" runat="server" CssClass="btn btn-success" Text="Deactivate Member" OnClick="btnDeactivate_Click" />
                
                  </div>
                    </div>
                    </div>

               <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" DisplayAfter="0" runat="server" >
			   <ProgressTemplate>
				  <div id="overlay">
					   <div id="modalProgress">
							<div id="theprogress">
								<img alt ="indicator" src="imagess/loader-dark.gif" style="height:100px" >
								</div>
						   </div>
					  </div>
			  </ProgressTemplate>
		      </asp:UpdateProgress>

              </ContentTemplate>
                  <Triggers>
			        <asp:PostBackTrigger ControlID="btnDeactivate" />
		          </Triggers>

                  <Triggers>
			         <asp:PostBackTrigger ControlID="btnActivate" />
		          </Triggers>
             </asp:UpdatePanel>
           </div>
       </div>
</asp:Content>
