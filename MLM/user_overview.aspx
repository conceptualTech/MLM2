<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="user_overview.aspx.cs" Inherits="MLM.user_overview" %>
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
                    <h3>Search Member <small>Details</small></h3>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  
               <div class="col-md-5 col-xs-10" >
                  <div class="form-group">
                    <label for="ex3">Member Name</label>
                      <asp:DropDownList ID="ddl_username" runat="server" class="form-control" OnSelectedIndexChanged="ddl_username_SelectedIndexChanged" AutoPostBack="true">
                         <asp:ListItem >Select Username</asp:ListItem>
                      </asp:DropDownList>
                  </div>
                   </div>
                  </div>
                </div>

            <div runat="server" id="div_pnl_useroverview" class="x_panel">
                       <asp:Panel ID="pnl_useroverview" runat="server" style="height:auto">
                           <div class="x_title">
                    <h2><i class="fa fa-eye"></i > Profile</h2>
                              
                      <div class="clearfix"></div>
                  </div>
                     <div class="x_content">
                     <div class="x_title">
                    <h2><i></i > User Overview</h2>
                         <div class="clearfix"></div>
                                </div>

                          <div class="">
                            
                             <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <label class="">Username</label>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="txt_username" runat="server" style="color:black" class=" col-md-3 col-xs-12" Text="N.A"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <label class="">Name <span class="required">*</span></label>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="txt_clientName" runat="server" style="color:black" class=" col-md-7 col-xs-12" Text="N.A"></asp:Label>
                                    </div>
                                </div>
                            </div>
                          </div>

                            <div class="">
                            
                             <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <label class="">D.O.B</label>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="txt_dob" runat="server" style="color:black" class=" col-md-7 col-xs-12" Text="N.A"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <label class="">Gender</label>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="txt_gender" runat="server" style="color:black"  class=" col-md-7 col-xs-12" Text="N.A"></asp:Label>
                                    </div>
                                </div>
                                
                            </div>
                                 <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <label class="">Mobile</label>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="txt_mobile" runat="server" style="color:black"  class=" col-md-7 col-xs-12" Text="N.A"></asp:Label>
                                    </div>
                                </div>
                                
                            </div>
                                 <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <label class="">Email</label>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="txt_email" runat="server" style="color:black"  class=" col-md-7 col-xs-12" Text="N.A"></asp:Label>
                                    </div>
                                </div>
                                
                            </div>
                          </div>
                      </div>
            </asp:Panel>
                <div>
                    <div class="col-lg-offset-2">
                        
                         <asp:Button  class="btn btn-info" ID="btn_income" runat="server" Text="Income Details" style="width:20%;margin-top:5%" OnClick="btn_income_Click"/>
                         <asp:Button  class="btn btn-info" ID="btn_referral" runat="server" Text="Referrals" style="width:20%;margin-top:5%" OnClick="btn_referral_Click"/>
                         <asp:Button  class="btn btn-info" ID="btn_binary" runat="server" Text="Binary Details" style="width:20%;margin-top:5%" OnClick="btn_binary_Click"/>
                         <asp:Button  class="btn btn-info" ID="btn_wallet" runat="server" Text="Ewallet" style="width:20%;margin-top:5%" OnClick="btn_wallet_Click"/>
                         <asp:Button  class="btn btn-info" ID="btn_releasedIncome" runat="server" Text="Released Income" style="width:20%;margin-top:1%" OnClick="btn_releasedIncome_Click"/>
                         <asp:Button  class="btn btn-info" ID="btn_volume" runat="server" Text="Business Wallet" style="width:20%;margin-top:1%" OnClick="btn_volume_Click"/>
                        </div>
       </div>
       
     </div>

         <div runat="server" id="div_btn_income" class="x_panel">
                       <asp:Panel ID="Panel1" runat="server" style="height:auto">
                           <div class="x_title">
                          <div class="clearfix"></div>
                  </div>
                     <div class="x_content">
                     <div class="x_title">
                    <h2><i></i > User Overview-Income Detail</h2>
                         <div class="clearfix"></div>
                                </div>
                         rIncome Detail
                      
                      </div>
            </asp:Panel>
     </div>


          <div runat="server" id="div_btn_referrals" class="x_panel">
                       <asp:Panel ID="Panel2" runat="server" style="height:auto">
                           <div class="x_title">
                          <div class="clearfix"></div>
                  </div>
                     <div class="x_content">
                     <div class="x_title">
                    <h2><i></i > User Overview-Referrals</h2>
                         <div class="clearfix"></div>
                                </div>
                       Refferals
                      
                      </div>
            </asp:Panel>
     </div>

            <div runat="server" id="div_btn_binary" class="x_panel">
                       <asp:Panel ID="Panel3" runat="server" style="height:auto">
                           <div class="x_title">
                          <div class="clearfix"></div>
                  </div>
                     <div class="x_content">
                     <div class="x_title">
                    <h2><i></i > User Overview-Binary Details</h2>
                         <div class="clearfix"></div>
                                </div>
                       Binary Details
                      
                      </div>
            </asp:Panel>
     </div>

         <div runat="server" id="div_btn_ewallet" class="x_panel">
                       <asp:Panel ID="Panel4" runat="server" style="height:auto">
                           <div class="x_title">
                          <div class="clearfix"></div>
                  </div>
                     <div class="x_content">
                     <div class="x_title">
                    <h2><i></i > User Overview-Ewallet</h2>
                         <div class="clearfix"></div>
                                </div>
                       Wallet
                      
                      </div>
            </asp:Panel>
     </div>

        <div runat="server" id="div_btn_released_income" class="x_panel">
                       <asp:Panel ID="Panel5" runat="server" style="height:auto">
                           <div class="x_title">
                          <div class="clearfix"></div>
                  </div>
                     <div class="x_content">
                     <div class="x_title">
                    <h2><i></i > User Overview-Released Income</h2>
                         <div class="clearfix"></div>
                                </div>
                       Released Income
                      </div>
            </asp:Panel>
     </div>

        <div runat="server" id="div_btn_business_wallet" class="x_panel">
                       <asp:Panel ID="Panel6" runat="server" style="height:auto">
                           <div class="x_title">
                          <div class="clearfix"></div>
                  </div>
                     <div class="x_content">
                     <div class="x_title">
                    <h2><i></i > User Overview-Business wallet</h2>
                         <div class="clearfix"></div>
                                </div>
                       Bussiness Wallet
                      
                      </div>
            </asp:Panel>
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
                  
             </asp:UpdatePanel>

  </div>
    </div>
     
</asp:Content>
