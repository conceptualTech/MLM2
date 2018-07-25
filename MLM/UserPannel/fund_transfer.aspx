<%@ Page Title="" Language="C#" MasterPageFile="~/UserPannel/USER.Master" AutoEventWireup="true" CodeFile="fund_transfer.aspx.cs" Inherits="MLM.UserPannel.fund_transfer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <script type="text/javascript">
      $(function ()
         {
            
            $('.Error').hide();

             $('#ContentPlaceHolder1_txtAmount').on('keyup', function ()
             {
                 var balance = document.getElementById("ContentPlaceHolder1_txtBalance").value;
                 var amount = document.getElementById("ContentPlaceHolder1_txtAmount").value;
                if ($(this).val() == '')
                {
                    $('.Error').hide();
                }
                else
                {
                    if (parseFloat(balance) < parseFloat(amount))
                    {

                        $('.Error').show();
                    }
                    else
                    {
                       $('.Error').hide();
                    }
                }
            });
         });
         </script>

     <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Fund Transfer</h3>
              </div>

              
            </div>
            <div class="clearfix"></div>

            <div class="row">

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                  
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                    <div class="x_content">
                    <!-- Smart Wizard -->
                    <%--<p>This Form is use </p>--%>
                  
                      

                           <div class='col-sm-4'>
                   Username<span style="color:red">*</span>
                    <div class="form-group">
                            <asp:TextBox ID="txtUsername" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                    </div>
                </div>
                          <div class='col-sm-4'>
                  Tansfer To(Username)<span style="color:red">*</span>
                    <div class="form-group">
                         <asp:DropDownList ID="ddlTransferUsername" runat="server" class="form-control col-md-7 col-xs-12" required="true">
                         <asp:ListItem Value=""> Select Username </asp:ListItem>
                         </asp:DropDownList>
                    </div>
                </div>
                           <div class='col-sm-4'>
                   Balance Amount<span style="color:red">*</span>
                    <div class="form-group">
                            <asp:TextBox ID="txtBalance" runat="server" class="form-control"  ReadOnly="true"></asp:TextBox>
                    </div>
                </div>
                        <div class='col-sm-4'>
                   Amount<span style="color:red">*</span>
                    <div class="form-group">
                            <asp:TextBox ID="txtAmount" runat="server" class="form-control" required="true"></asp:TextBox>
                    </div>
                            
                </div>
                             <div class='col-sm-4'>
                   Transaction Note<span style="color:red">*</span>
                    <div class="form-group">
                            <asp:TextBox ID="txtNote" runat="server" class="form-control" required="true"></asp:TextBox>
                    </div>
                </div>
                             <div class='col-sm-4'>
                   Transaction Fee<span style="color:red">*</span>
                    <div class="form-group">
                            <asp:TextBox ID="txtFees" runat="server" class="form-control" Text="5.0" ReadOnly="true"></asp:TextBox>
                    </div>
                </div>
                          <div class='col-sm-4'>
                   Transaction password<span style="color:red">*</span>
                    <div class="form-group">
                            <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password" required="true"></asp:TextBox>
                    </div>
                </div>
                              <div class='col-sm-3 col-xs-12'>
                       <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" OnClick="btnSubmit_Click" />
                    </div>
                        
                        </div>
                    <div class="row">
                    <asp:Label ID="Label1" runat="server" class="Error alert alert-danger" style="margin-left:27px"   Text="Insufficient Balance"></asp:Label>
                    <asp:Label ID="lblCheck" runat="server" class="alert alert-danger" style="margin-left:27px"></asp:Label>
                        </div>
                  <br/>
                     </div>
                   
                 </div>
                  
             </div>
          </div>
      </div>
         
        
    
   
</asp:Content>
