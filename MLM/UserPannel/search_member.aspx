<%@ Page Title="" Language="C#" MasterPageFile="~/UserPannel/USER.Master" AutoEventWireup="true" CodeFile="search_member.aspx.cs" Inherits="MLM.UserPannel.search_member" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Scripts/Browsing.css" rel="stylesheet" />
    <div class="right_col" role="main">
          <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
             <div class="col-md-12 col-sm-12 col-xs-12">
                 
                <div class="x_panel">
                  <div class="x_title">
                    <h2><i class="fa fa-search"></i> Search Member</h2>
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
                   Keyword<span style="color:red">*</span>
                    <div class="form-group">
                            <asp:TextBox ID="txtSearch" runat="server" class="form-control" placeholder="Name, Mobile, City......."></asp:TextBox>
                        </div>
                </div>
                       <div class='col-sm-3'>
                       <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" OnClick="Button1_Click"/>
                    </div>
                 </div>
                    </div>
                 </div>


          <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel" runat="server" id="divSearch">
                  <div class="x_title">
                    <h2><i class="fa fa-search"></i>Member List</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" class="table table-striped table-bordered" AllowPaging="True" RowHeaderColumn="Date"  >
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
                               <asp:BoundField DataField="mobile_number" HeaderText="Mobile Number" ReadOnly="True" SortExpression="Mobile Number" />
                               <asp:BoundField DataField="email_id" HeaderText="Email Id" ReadOnly="True" SortExpression="Email Id" />
                               <asp:BoundField DataField="status" HeaderText="Status" ReadOnly="True" SortExpression="Status" />
                                <asp:TemplateField HeaderText="View Profile" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                 <asp:ImageButton  ID="imgBtnEdit" ImageUrl="~/imagess/camera.png"  runat="server" Width="25" Height="25" ItemStyle-HorizontalAlign="Center"  OnClick="imgBtnEdit_Click"   />
                                 </ItemTemplate>
                                 </asp:TemplateField>
                               
                          </Columns>

                          <EmptyDataTemplate >
                          <asp:Image ImageUrl="~/imagess/search-bar.gif" runat="server" style="height:63%;" />
                          </EmptyDataTemplate>
                          <PagerSettings Mode="NumericFirstLast" PageButtonCount="1" />
                          <PagerStyle BorderColor="White" BorderStyle="Solid" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="22px" Font-Strikeout="False" Font-Underline="False" ForeColor="#666666" HorizontalAlign="Center" VerticalAlign="Top" Width="10px" Wrap="False" />
                     </asp:GridView>


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
           </div>

              <asp:UpdateProgress ID="UpdateProgress2" AssociatedUpdatePanelID="UpdatePanel1" DisplayAfter="0" runat="server" >
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
             </asp:UpdatePanel>
        </div>  
    
       
</asp:Content>
