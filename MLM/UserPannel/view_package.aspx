<%@ Page Title="" Language="C#" MasterPageFile="~/UserPannel/USER.Master" AutoEventWireup="true" CodeFile="view_package.aspx.cs" Inherits="MLM.UserPannel.view_package" EnableEventValidation="false"  %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Scripts/Browsing.css" rel="stylesheet" />
     <style type="text/css">
    .modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=90);
        opacity: 0.8;
    }
    .modalPopup
    {
        background-color: #FFFFFF;
        border-width: 3px;
        border-style: solid;
        border-color: black;
        padding-top: 10px;
      
        
    }
       /*.auto-style28 {
           width: 85px;
       }
       .auto-style29 {
           width: 342px;
       }*/
   </style>

 
    
     <div class="right_col" role="main">
             <div class="col-md-12 col-sm-12 col-xs-3">
                      <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                   
                          <%-- <asp:Button ID="btnShowPopup" runat="server" style="display:none" />
                           <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnShowPopup" PopupControlID="popup"
                           CancelControlID="" BackgroundCssClass="modalBackground" Enabled="True" DropShadow="True"  >
                           </asp:ModalPopupExtender>

                           <asp:Button ID="Button1" runat="server" style="display:none" />
                           <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="Button1" PopupControlID="Panel1"
                           CancelControlID="" BackgroundCssClass="modalBackground" Enabled="True" DropShadow="True"  >
                           </asp:ModalPopupExtender>

                           <asp:Button ID="Button2" runat="server" style="display:none" />
                           <asp:ModalPopupExtender ID="ModalPopupExtender3" runat="server" TargetControlID="Button2" PopupControlID="Panel2"
                           CancelControlID ="" BackgroundCssClass="modalBackground" Enabled="True" DropShadow="True"  >
                           </asp:ModalPopupExtender>

                           <asp:Button ID="Button4" runat="server" style="display:none" />
                           <asp:ModalPopupExtender ID="ModalPopupExtender4" runat="server" TargetControlID="Button4" PopupControlID="Panel3"
                            CancelControlID ="" BackgroundCssClass="modalBackground" Enabled="True" DropShadow="True"  >
                           </asp:ModalPopupExtender>

                   <asp:Panel ID="Panel3" runat="server" BackColor="white" style="height:50%;width:100%" BorderStyle="Outset" CssClass="modalPopup col-lg-10 col-lg-offset-2 panel panel-default"  BorderWidth="1px">
                     <h3 style="color:#0099CC">Active</h3>
                   <div class="x_title" style="border-bottom: 2px solid #4e6b92;" >
                    <div class="clearfix"></div>
                  </div>
                     <h4 class="text-center">Are you sure you want to Active this package</h4>
                       <div class="x_title" >
                    <div class="clearfix"></div>
                  </div>
                      <div class="x_content">
                    <div class="form-horizontal form-label-left">
                     <div class="row">
                            <div class="col-lg-offset-3 col-xs-offset-3" >
                                  <asp:TextBox ID="txtActive" runat="server" class="form-control col-md-7 col-xs-12" style="display:none" ></asp:TextBox>
                             <asp:Button ID="btnActive" runat="server" Text="Update" class="btn btn-success" OnClick="btnActive_Click"  />
                             
                            </div>
                          </div>
                      
                            <div style="margin-top:-40px" class="col-lg-offset-6 col-xs-offset-6">
                                 <asp:Button ID="Button7" runat="server" CssClass="btn btn-danger" Text="Cancel"  />
                                </div>
                        </div>
                          </div>
                 </asp:Panel>


                  <asp:Panel ID="Panel2" runat="server" BackColor="white" style="height:50%;width:100%" BorderStyle="Outset" CssClass="modalPopup col-lg-10 col-lg-offset-2 panel panel-default"  BorderWidth="1px">
                     <h3 style="color:#0099CC">Inactive</h3>
                   <div class="x_title" style="border-bottom: 2px solid #4e6b92;" >
                    <div class="clearfix"></div>
                  </div>
                     <h4 class="text-center">Are you sure you want to Inactive this package</h4>
                       <div class="x_title" >
                    <div class="clearfix"></div>
                  </div>
                      <div class="x_content">
                    <div class="form-horizontal form-label-left">
                     <div class="row">
                            <div class="col-lg-offset-3 col-xs-offset-3" >
                                  <asp:TextBox ID="txtInactive" runat="server" class="form-control col-md-7 col-xs-12" style="display:none" ></asp:TextBox>
                             <asp:Button ID="btnInactive" runat="server" Text="Update" class="btn btn-success" OnClick="btnInactive_Click" />
                             
                            </div>
                          </div>
                      
                            <div style="margin-top:-40px" class="col-lg-offset-6 col-xs-offset-6">
                                 <asp:Button ID="Button5" runat="server" CssClass="btn btn-danger" Text="Cancel"  />
                                </div>
                        </div>
                          </div>
                 </asp:Panel>

                 <asp:Panel ID="Panel1" runat="server" BackColor="white" style="height:50%;width:100%" BorderStyle="Outset" CssClass="modalPopup col-lg-10 col-lg-offset-2 panel panel-default"  BorderWidth="1px">
                     <h3 style="color:#0099CC">Delete</h3>
                   <div class="x_title" style="border-bottom: 2px solid #4e6b92;" >
                    <div class="clearfix"></div>
                  </div>
                     <h4 class="text-center">Are you sure you want to delete this package</h4>
                       <div class="x_title" >
                    <div class="clearfix"></div>
                  </div>
                      <div class="x_content">
                    <div class="form-horizontal form-label-left">
                     <div class="row">
                            <div class="col-lg-offset-3 col-xs-offset-3" >
                                  <asp:TextBox ID="txtIDdelete" runat="server" class="form-control col-md-7 col-xs-12" style="display:none" ></asp:TextBox>
                             <asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn btn-success" OnClick="btnDelete_Click" />
                             
                            </div>
                          </div>
                      
                            <div style="margin-top:-40px" class="col-lg-offset-6 col-xs-offset-6">
                                 <asp:Button ID="Button3" runat="server" CssClass="btn btn-danger" Text="Cancel"  />
                                </div>
                        </div>
                          </div>
                 </asp:Panel>
                        
                 <asp:Panel ID="popup" runat="server" BackColor="white" style="height:50%;width:200%" BorderStyle="Outset" CssClass="modalPopup col-lg-10 col-lg-offset-2 panel panel-default"  BorderWidth="1px">
                  <h3 style="color:#0099CC" class="text-center">Edit Package</h3>
                   <div class="x_title" style="border-bottom: 2px solid #4e6b92;" >
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class="form-horizontal form-label-left">
                    
                          <div class="row">
                            <label>Package Name<span class="required">*</span>
                            </label>
                            <div >
                                 <asp:TextBox ID="txtId" runat="server" class="form-control col-md-7 col-xs-12" style="display:none" ></asp:TextBox>
                              <asp:TextBox ID="txtPackageName" runat="server" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>
                          <div class="row">
                            <label>Amount <span class="required">*</span>
                            </label>
                            <div >
                               <asp:TextBox ID="txtAmount" runat="server" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>
                          <div class="row">
                            <label >PV</label>
                            <div >
                               <asp:TextBox ID="txtPv" runat="server" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>
                          <div class="row">
                            <label >Pair Price</label>
                            <div >
                               <asp:TextBox ID="txtPairPrice" runat="server" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>

                          <div class="row">
                            <label>Referral Commission</label>
                            <div >
                               <asp:TextBox ID="txtReferral" runat="server" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                            </div>
                          </div>
                        <br/>
                        <div class="row">
                            <div class="col-lg-offset-3 col-xs-offset-3">
                             <asp:Button ID="btnUpdate" runat="server" Text="Update" class="btn btn-success" OnClick="btnUpdate_Click" />
                             
                            </div>
                          </div>
                      
                            <div style="margin-top:-40px" class="col-lg-offset-6 col-xs-offset-6">
                                 <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger" Text="Cancel" OnClick="btnCancel_Click" />
                                </div>
                        

                        </div>
                  </div>
                </asp:Panel>--%>
                <div class="x_panel">
                  <div class="x_title">
                    <h2><i class="fa fa-bars"></i> View Packages</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                 <div class="" role="tabpanel" data-example-id="togglable-tabs">
                      <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                        <li role="presentation" class="active">
                        <a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Active</a>
                        </li>
                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Inactive</a>
                        </li>

                      </ul>
                        <div id="myTabContent" class="tab-content">
                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                            <asp:GridView ID="gvActive" runat="server" AutoGenerateColumns="False" Width="100%" class="table table-striped table-bordered" AllowPaging="True" RowHeaderColumn="id">
                                 <Columns>

                                 <asp:BoundField DataField="id" HeaderText="Package Id" ReadOnly="True" SortExpression="Package Id"  HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" />
                                 <asp:BoundField DataField="package_name" HeaderText="Package Name" ReadOnly="True" SortExpression="Package Name"  HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" />
                                 <asp:BoundField DataField="amount" HeaderText="Amount" ReadOnly="True" SortExpression="Amount"  HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" />
                                 <asp:BoundField DataField="pv" HeaderText="PV" ReadOnly="True" SortExpression="PV"  HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" />
                                 <asp:BoundField DataField="pair_price" HeaderText="Pair Price" ReadOnly="True" SortExpression="Pair Price"  HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" />
                                 <asp:BoundField DataField="referal_comission" HeaderText="Referral Commission" ReadOnly="True" SortExpression="Referral Commission"  HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" />
                                 <asp:BoundField DataField="created_by" HeaderText="Created By" ReadOnly="True" SortExpression="Created By"  HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" /> 
                                

                                <%-- <asp:TemplateField HeaderText="Action" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                 <asp:ImageButton  ID="imgBtnEdit" ImageUrl="~/imagess/edit (2).png" ToolTip="Edit Package" runat="server" Width="25" Height="25" ItemStyle-HorizontalAlign="Center"  OnClick="imgBtnEdit_Click"  />
                                 <asp:ImageButton style="" ID="imgBtnDelete" ImageUrl="~/imagess/trash-circle-red-512.png" ToolTip="Delete Package" runat="server" Width="25" Height="25" ItemStyle-HorizontalAlign="Center" OnClick="imgBtnDelete_Click"  />
                                 <asp:ImageButton  ID="ImgBtnInactive" ImageUrl="~/imagess/cancel (1).png"  runat="server"  ToolTip="Inactive Pacakge" Width="25" Height="25" ItemStyle-HorizontalAlign="Center"  OnClick="ImgBtnInactive_Click" />
                                 </ItemTemplate>
                                 
                                 </asp:TemplateField>--%>

                                 </Columns>
                            </asp:GridView>
                        </div>

                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
                            <asp:GridView ID="gvInactive" runat="server" AutoGenerateColumns="False" Width="100%" class="table table-striped table-bordered" AllowPaging="True" RowHeaderColumn="id">
                                 <Columns>

                                 <asp:BoundField DataField="id" HeaderText="Package Id" ReadOnly="True" SortExpression="Package Id"  HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" />
                                 <asp:BoundField DataField="package_name" HeaderText="Package Name" ReadOnly="True" SortExpression="Package Name"  HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" />
                                 <asp:BoundField DataField="amount" HeaderText="Amount" ReadOnly="True" SortExpression="Amount"  HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" />
                                 <asp:BoundField DataField="pv" HeaderText="PV" ReadOnly="True" SortExpression="PV"  HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" />
                                 <asp:BoundField DataField="pair_price" HeaderText="Pair Price" ReadOnly="True" SortExpression="Pair Price"  HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" />
                                 <asp:BoundField DataField="referal_comission" HeaderText="Referral Commission" ReadOnly="True" SortExpression="Referral Commission"  HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" />
                                 <asp:BoundField DataField="created_by" HeaderText="Created By" ReadOnly="True" SortExpression="Created By"  HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" /> 
                                

                                 <%--<asp:TemplateField HeaderText="Action" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                 <asp:ImageButton  ID="imgBtnActive" ImageUrl="~/imagess/checked.png"  runat="server" ToolTip="active Package" Width="25" Height="25" ItemStyle-HorizontalAlign="Center" OnClick="imgBtnActive_Click"   />
                                 <asp:ImageButton style="" ID="imgBtnDelete" ImageUrl="~/imagess/trash-circle-red-512.png" runat="server" ToolTip="Delete PAckage" Width="25" Height="25" ItemStyle-HorizontalAlign="Center" OnClick="imgBtnDelete_Click"  />
                                 </ItemTemplate>
                                   </asp:TemplateField>--%>
                                 </Columns>
                            </asp:GridView>
                        </div>
                      </div>
                    </div>
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
                
             </asp:UpdatePanel>
     </div>
         </div>
    
        <%-- </div>--%>
    
</asp:Content>
