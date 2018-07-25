<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master"  AutoEventWireup="true" CodeFile="mailbox.aspx.cs" Inherits="MLM.mailbox" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <%--<style>
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
   </style>--%>

    <div class="right_col" role="main">
          <div class="">
                           

            <div class="clearfix"></div>

            <div class="row">

              <div class="col-md-12 col-sm-12 col-xs-12"> 
                      <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>

                           <asp:Button ID="btnShowPopup" runat="server" style="display:none" />
                           <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnShowPopup" PopupControlID="Panel1"
                           CancelControlID="" BackgroundCssClass="modalBackground" Enabled="True" DropShadow="True"  >
                           </asp:ModalPopupExtender>

                <div class="x_panel">
                  <div class="x_title">
                  <h2>Mail Box</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">


                  <%-- <asp:Panel ID="Panel1" runat="server" BackColor="white" style="height:50%;width:100%" BorderStyle="Outset" CssClass="modalPopup col-lg-10 col-lg-offset-2 panel panel-default"  BorderWidth="1px">
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
                             <asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn btn-success"  />
                             <asp:Label ID="lblDeleteId" runat="server" Text="Label" style="color:dimgrey;height:20px;display:none" ></asp:Label>
                            </div>
                          </div>
                      
                            <div style="margin-top:-40px" class="col-lg-offset-6 col-xs-offset-6">
                                 <asp:Button ID="Button3" runat="server" CssClass="btn btn-danger" Text="Cancel"  />
                                </div>
                        </div>
                          </div>
                 </asp:Panel>--%>
                        
                             
              <div class="col-md-12 col-sm-6 col-xs-12">
                <div class="x_panel">
                  
                  <div class="x_content">

                    <div class="col-xs-3">
                      <!-- required for floating -->
                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs tabs-left">
                        <li class="active"  ><a href="#home" data-toggle="tab" style="background-color:#428bca; color:white"> <span class="fa fa-envelope" > Compose Mail</span></a>
                        </li>
                        <li><a href="#profile" data-toggle="tab"><span class="fa fa-mail-forward"> Inbox </span></a>
                        </li>
                        <li><a href="#messages" data-toggle="tab"><span class="fa fa-mail-reply"> Sent</span></a>
                        </li>
                       
                      </ul>
                    </div>

                    <div class="col-xs-9">
                      <!-- Tab panes -->
                      <div class="tab-content">
                        <div class="tab-pane active" id="home">

                          <p class="lead"> <span class="fa fa-envelope"> <asp:Label ID="Label1" runat="server" Text="Compose Mail" ></asp:Label></span></p>
                          
                                <br/>
                    <div class="clearfix">
                        
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="ddlTypeuser" runat="server" class="form-control col-md-12 col-xs-12" OnSelectedIndexChanged="ddlTypeuser_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem>Single User</asp:ListItem>
                                 <asp:ListItem>All User</asp:ListItem>
                               
                            </asp:DropDownList>
                            </div>
                          </div>
                            <br/>
                            <div class="clearfix">
                          
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="ddlUser" runat="server" class="form-control col-md-7 col-xs-12" OnSelectedIndexChanged="ddlUser_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Value=""> Select User </asp:ListItem>
                            </asp:DropDownList>
                               
                            </div>
                                 <asp:Label ID="lblName" runat="server" Text="Label" style="color:dimgrey;height:20px;display:none" ></asp:Label>
                                  <asp:Label ID="lblUsername" runat="server" Text="Label" style="color:dimgrey;height:20px;display:none" ></asp:Label>
                                 <asp:Label ID="lblIdTransfer" runat="server" Text="Label" style="color:dimgrey;height:20px;display:none" ></asp:Label>
                          </div>
                                <br/>
                                 <div class="clearfix">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                               <asp:TextBox ID="txtSubject"  runat="server" class="form-control col-md-7 col-xs-12" placeholder="Subject"></asp:TextBox>
                            </div>
                          </div>

                               
                <div class="x_content">
                  <div id="alerts"></div>
                  <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#ContentPlaceHolder1_message">
                    <%--<div class="btn-group">
                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                      <ul class="dropdown-menu">
                      </ul>
                    </div>--%>

                   <%-- <div class="btn-group">
                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                      <ul class="dropdown-menu">
                        <li>
                          <a data-edit="fontSize 5">
                            <p style="font-size:17px">Huge</p>
                          </a>
                        </li>
                        <li>
                          <a data-edit="fontSize 3">
                            <p style="font-size:14px">Normal</p>
                          </a>
                        </li>
                        <li>
                          <a data-edit="fontSize 1">
                            <p style="font-size:11px">Small</p>
                          </a>
                        </li>
                      </ul>
                    </div>--%>

                    <%--<div class="btn-group">
                      <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
                      <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                      <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                      <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                    </div>

                    <div class="btn-group">
                      <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                      <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                      <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                      <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                    </div>

                    <div class="btn-group">
                      <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                      <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                      <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                      <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                    </div>

                    <div class="btn-group">
                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                      <div class="dropdown-menu input-append">
                        <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                        <button class="btn" type="button">Add</button>
                      </div>
                      <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                    </div>--%>

                    <%--<div class="btn-group">
                      <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
                      <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
                    </div>--%>

                   <%-- <div class="btn-group">
                      <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                      <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                    </div>--%>
                  </div>

                 <%-- <div id="editor-one" class="editor-wrapper"></div>--%>
                    <textarea id="message"  placeholder=" Message" cols="20" rows="2" style="height:300px" class="resizable_textarea form-control" runat="server"></textarea>
              <%--    <textarea name="descr" id="descr" style="display:none;"></textarea>--%>
                  
                  <br />

                   <asp:Button ID="btnSend" runat="server" Text="Submit" class="btn btn-danger" ToolTip="Send Message" OnClick="btnSend_Click" />

                 
                </div>
             <%-- </div>--%>

                                <br/>
                        </div>
                         
                        <div class="tab-pane" id="profile" style="overflow-x:auto">
                              <p class="lead"> <span class="fa fa-mail-forward"> <asp:Label ID="Label2" runat="server" Text="Inbox"></asp:Label></span></p>
                             <asp:GridView ID="datatable" runat="server" AutoGenerateColumns="False" Width="100%" class="table table-striped table-bordered" AllowPaging="True" RowHeaderColumn="id"  >
                          <Columns>
                             
                               <asp:BoundField DataField="id" HeaderText="Message Id" ReadOnly="True" SortExpression="Message Id" />
                               <asp:BoundField DataField="sender_username" HeaderText="Sender Id" ReadOnly="True" SortExpression="Sender Id" />
                               <asp:BoundField DataField="subject" HeaderText="Subject" ReadOnly="True" SortExpression="Subject" />
                               <asp:BoundField DataField="DateTime" HeaderText="Date & Time" ReadOnly="True" SortExpression="Date & Time" />
                               <asp:TemplateField HeaderText="Action" HeaderStyle-Width="20%" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10%" FooterStyle-Width="10%" ItemStyle-HorizontalAlign="Center">

                               <ItemTemplate>
                               <asp:ImageButton  ID="imgBtnView" ImageUrl="~/imagess/letter-in-an-opened-envelope-back-view.png" ToolTip="View Message" runat="server" Width="25" Height="25" ItemStyle-HorizontalAlign="Center" OnClick="imgBtnView_Click"    />
                             <%--  <asp:ImageButton  ID="imgBtnDelete" ImageUrl="~/imagess/trash-circle-red-512.png" ToolTip="Delete Message" runat="server" Width="25" Height="25" ItemStyle-HorizontalAlign="Center" OnClick="imgBtnDelete_Click"  />--%>
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
                        <div class="tab-pane" id="messages"style="overflow-x:auto">
                              <p class="lead"> <span class="fa fa-mail-reply"> <asp:Label ID="Label3" runat="server" Text="Sent"></asp:Label></span></p>
                              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" class="table table-striped table-bordered" AllowPaging="True" RowHeaderColumn="id"  >
                          <Columns>
                             
                               <asp:BoundField DataField="id" HeaderText="Message Id" ReadOnly="True" SortExpression="Message Id" />
                               <asp:BoundField DataField="receiver_username" HeaderText="Receiver Id" ReadOnly="True" SortExpression="Receiver Id" />
                               <asp:BoundField DataField="subject" HeaderText="Subject" ReadOnly="True" SortExpression="Subject" />
                               <asp:BoundField DataField="DateTime" HeaderText="Date & Time" ReadOnly="True" SortExpression="Date & Time" />
                               <asp:TemplateField HeaderText="Action" HeaderStyle-Width="20%" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10%" FooterStyle-Width="10%" ItemStyle-HorizontalAlign="Center">

                               <ItemTemplate>
                               <asp:ImageButton  ID="imgBtnSent" ImageUrl="~/imagess/letter-in-an-opened-envelope-back-view.png" ToolTip="View Message" runat="server" Width="25" Height="25" ItemStyle-HorizontalAlign="Center" OnClick="imgBtnSent_Click"    />
                             <%--  <asp:ImageButton  ID="imgBtnDelete" ImageUrl="~/imagess/trash-circle-red-512.png" ToolTip="Delete Message" runat="server" Width="25" Height="25" ItemStyle-HorizontalAlign="Center" OnClick="imgBtnDelete_Click"  />--%>
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
                    </div>

                    <div class="clearfix"></div>

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
                    <!-- End SmartWizard Content -->
                   
                    <!-- End SmartWizard Content -->
                  </div>
                
                      </ContentTemplate>
                   <Triggers>
			         <asp:PostBackTrigger ControlID="btnSend" />
		          </Triggers>

                      
             </asp:UpdatePanel></div>
              </div>
            </div>
          </div>
    

   
</asp:Content>
