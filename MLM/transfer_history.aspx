<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="transfer_history.aspx.cs" Inherits="MLM.transfer_history" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script src="vendors/moment/min/moment.min.js"></script>
     <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- bootstrap-datetimepicker -->
    <link href="vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet">

    <link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
   <link href="Scripts/Browsing.css" rel="stylesheet" />


     <div class="right_col" role="main">
             <div class="col-md-12 col-sm-12 col-xs-12">
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                <div class="x_panel">
                  <div class="x_title">
                    <h2><i class="fa fa-bars"></i> Transfer History</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                       <div class='col-sm-3'>
                   Username
                    <div class="form-group">
                           <asp:DropDownList ID="ddlUsername" runat="server" class="form-control col-md-7 col-xs-12" required="true">
                         <asp:ListItem Value=""> Select Username </asp:ListItem>
                         </asp:DropDownList>
                        </div>
                    
                </div>
                       <div class='col-sm-3'>
                   From Date
                    <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control"  required="true" TextMode="Date"></asp:TextBox>
                    </div>
                </div>

                     
                   <div class='col-sm-3'>
                   To Date
                    <div class="form-group" >
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" required="true" TextMode="Date"></asp:TextBox>
                            
                    </div>
                </div>
                       <div class='col-sm-3'>
                       <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-success" style="margin-top:17px" OnClick="Button1_Click" />
                           </div>
                      </div>
                     
                    </div>

                  <div class="x_panel" runat="server" id="divGridView">
                  <div class="x_title">
                    <h2><i class="fa fa-eye"></i> Transfer Details</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <asp:GridView ID="datatable" runat="server" AutoGenerateColumns="False" Width="100%" class="table table-striped table-bordered" AllowPaging="True" RowHeaderColumn="id" OnPageIndexChanging="datatable_PageIndexChanging">
                          <Columns>
                               <asp:BoundField DataField="id" HeaderText="Transaction Id" ReadOnly="True" SortExpression="Transaction Id" />
                               <asp:BoundField DataField="date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                               <asp:BoundField DataField="username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                               <asp:BoundField DataField="amount" HeaderText="Amount" ReadOnly="True" SortExpression="Amount" />
                               <asp:BoundField DataField="transaction_fee" HeaderText="Transaction Fee" ReadOnly="True" SortExpression="Transaction Fee" />
                               <asp:BoundField DataField="sender_transfer_type" HeaderText="Transfer Type." ReadOnly="True" SortExpression="Transfer Type" />
                               <asp:BoundField DataField="note" HeaderText="Transaction Note." ReadOnly="True" SortExpression="Transaction Note" />
                          </Columns>

                          <EmptyDataTemplate >
                          <asp:Image ImageUrl="~/imagess/search-bar.gif" runat="server" style="height:63%;"       />
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

              </ContentTemplate>
                 
             </asp:UpdatePanel>
                 </div>
             </div>  
     <script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-datetimepicker -->    
    <script src="vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
     <script>
    $('#myDatepicker').datetimepicker();
    
    $('#myDatepicker2').datetimepicker({
        format: 'YYYY-MM-DD'
    });

        $('#myDatepickera').datetimepicker({
            format: 'YYYY-MM-DD'
        });

        $('#myDatepickerb').datetimepicker({
            format: 'YYYY-MM-DD'
        });
    
    $('#myDatepicker3').datetimepicker({
        format: 'hh:mm A'
    });
    
    $('#myDatepicker4').datetimepicker({
        ignoreReadonly: true,
        allowInputToggle: true
    });

    $('#datetimepicker6').datetimepicker();
    
    $('#datetimepicker7').datetimepicker({
        useCurrent: false
    });
    
    $("#datetimepicker6").on("dp.change", function(e) {
        $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
    });
    
         $("#datetimepicker7").on("dp.change", function (e) {
             $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
         });

</script>

     <script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
 
</asp:Content>
