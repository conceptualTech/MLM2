<%@ Page Title="" Language="C#" MasterPageFile="~/UserPannel/USER.Master" AutoEventWireup="true" CodeFile="activate_deactivate_report.aspx.cs" Inherits="MLM.UserPannel.activate_deactivate_report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="vendors/moment/min/moment.min.js"></script>
     <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- bootstrap-datetimepicker -->
    <link href="vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <link href="Scripts/Browsing.css" rel="stylesheet" />


      <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Activate/Deactivate Report</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
               
                </div>
              </div>
            </div>
            <div class="clearfix"></div>
          
              <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
            <div class="row">
              <div class="col-md-6 col-xs-12">
               

                <div class="x_panel">
                  <div class="x_title">
                    <h2>Daily Activate/Deactivate Report</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                  
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                   <div class="x_content">
                    <div class='col-sm-4'>Date<span style="color:red">*</span>
                   <div class="form-group">
                            <asp:TextBox ID="dtpDaily" runat="server" TextMode="Date" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                        <div class='col-sm-3'>
                       <asp:Button ID="btnDaily" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" OnClick="btnDaily_Click" />
                        </div>
                    </div>
                </div>
              </div>

              


              <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Weekly/Monthly Activate Deactivate Report </h2>
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
                    From Date<span style="color:red">*</span>
                     <div class="form-group">
                            <asp:TextBox ID="dtpDateTo" runat="server" class="form-control" TextMode="Date" ></asp:TextBox>
                        </div>
                    </div>
             

                     
                   <div class='col-sm-4'>
                   To Date<span style="color:red">*</span>
                    <div class="form-group">
                            <asp:TextBox ID="dtpDateFrom" runat="server" class="form-control" TextMode="Date" ></asp:TextBox>
                    </div>
                </div>
                           <asp:Button ID="btnMonthly" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" OnClick="btnMonthly_Click" />
                     
                      </div>
                  </div>
              </div>


                   
                <div class="x_panel" runat="server" id="divDaily" style="overflow-x:auto">
                  <div class="x_title">
                    <h2>Daily Activate Deactivate Report </h2>
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
                            
                              <asp:BoundField DataField="date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                               <asp:BoundField DataField="sponsor_name" HeaderText="Sponsor Name" ReadOnly="True" SortExpression="Sponsor Name" />
                               <asp:BoundField DataField="sponsor_username" HeaderText="Sponsor Username" ReadOnly="True" SortExpression="Sponsor Username" />
                               <asp:BoundField DataField="member_name" HeaderText="Member Name" ReadOnly="True" SortExpression="Member Name" />
                               <asp:BoundField DataField="member_username" HeaderText="Member Username" ReadOnly="True" SortExpression="Member Username" />
                               <asp:BoundField DataField="mobile_no" HeaderText="Mobile Number" ReadOnly="True" SortExpression="Mobile Number" />
                               <asp:BoundField DataField="email_id" HeaderText="Email Id" ReadOnly="True" SortExpression="Email Id" />
                              <asp:BoundField DataField="status" HeaderText="Status" ReadOnly="True" SortExpression="Status" />

                          </Columns>

                          <EmptyDataTemplate >
                          <asp:Image ImageUrl="~/imagess/search-bar.gif" runat="server" style="height:63%;" />
                          </EmptyDataTemplate>
                          <PagerSettings Mode="NumericFirstLast" PageButtonCount="1" />
                          <PagerStyle BorderColor="White" BorderStyle="Solid" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="22px" Font-Strikeout="False" Font-Underline="False" ForeColor="#666666" HorizontalAlign="Center" VerticalAlign="Top" Width="10px" Wrap="False" />
                     </asp:GridView>
                     
                 
                     
                      </div>
                  </div>
                
            


               
                <div class="x_panel" runat="server" id="divMonthly" style="overflow-x:auto">
                  <div class="x_title">
                    <h2>Monthly Activate Deactivate Report </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  
                     <div class="x_content">

                      <asp:GridView ID="datatable" runat="server" AutoGenerateColumns="False" Width="100%" class="table table-striped table-bordered" AllowPaging="True" RowHeaderColumn="date"  >
                          <Columns>

                              <asp:BoundField DataField="date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                               <asp:BoundField DataField="sponsor_name" HeaderText="Sponsor Name" ReadOnly="True" SortExpression="Sponsor Name" />
                               <asp:BoundField DataField="sponsor_username" HeaderText="Sponsor Username" ReadOnly="True" SortExpression="Sponsor Username" />
                               <asp:BoundField DataField="member_name" HeaderText="Member Name" ReadOnly="True" SortExpression="Member Name" />
                               <asp:BoundField DataField="member_username" HeaderText="Member Username" ReadOnly="True" SortExpression="Member Username" />
                               <asp:BoundField DataField="mobile_no" HeaderText="Mobile Number" ReadOnly="True" SortExpression="Mobile Number" />
                               <asp:BoundField DataField="email_id" HeaderText="Email Id" ReadOnly="True" SortExpression="Email Id" />
                              <asp:BoundField DataField="status" HeaderText="Status" ReadOnly="True" SortExpression="Status" />

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
    
    $("#datetimepicker7").on("dp.change", function(e) {
        $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
    });
</script>
</asp:Content>
