<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="sales_report.aspx.cs" Inherits="MLM.sales_report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script src="vendors/moment/min/moment.min.js"></script>
     <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- bootstrap-datetimepicker -->
    <link href="vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
      <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Sales Report</h3>
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
                    <h2>Sale Report</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                  
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                   <div class="x_content">
                     <div class='col-sm-2'>
                   From Date
                    <div class="form-group">
                        <div class='input-group date' id='myDatepickera'>
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" ></asp:TextBox>
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>

                     
                   <div class='col-sm-2'>
                   To Date
                    <div class="form-group" style="float:right">
                        <div class='input-group date' id='myDatepickerb'>
                            <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                        </div>
                        <div class='col-sm-2'>
                   Select Package
                    <div class="form-group" >
                        
                           <asp:DropDownList ID="DropDownList1" runat="server" class="form-control col-md-9 col-xs-12 " required="true">
                         <asp:ListItem Value=""> Select Username </asp:ListItem>
                         </asp:DropDownList>
                        </div>
                        </div>
                   
               
                       <div class='col-sm-3'>
                       <asp:Button ID="Button2" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" />
                           </div>
                      </div>
                    </div>
                </div>

                


              </div>

            <div class="row">
              
              <div class="col-md-6 col-xs-12">
                <div class="x_panel" >
                  <div class="x_title">
                    <h2>Product Wise Sales Report: Register </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class='col-sm-4'>Select Package<span style="color:red">*</span>
                   <div class="form-group">
                         <asp:DropDownList ID="DropDownList2" runat="server" class="form-control col-md-9 col-xs-12 " required="true">
                         <asp:ListItem Value=""> Select Package </asp:ListItem>
                         </asp:DropDownList>
                    </div>
                </div>
                        <div class='col-sm-3'>
                       <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" />
                        </div>
                    </div>
                </div>
              </div>


               
              <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Product Wise Sales Report: Purchase </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  
                      <div class="x_content">
                    <div class='col-sm-4'>Select Package<span style="color:red">*</span>
                   <div class="form-group">
                         <asp:DropDownList ID="DropDownList3" runat="server" class="form-control col-md-9 col-xs-12 " required="true">
                         <asp:ListItem Value=""> Select Package </asp:ListItem>
                         </asp:DropDownList>
                    </div>
                </div>
                        <div class='col-sm-3'>
                       <asp:Button ID="Button3" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" />
                        </div>
                    </div>
                  </div>
                
              </div>
            </div>
         </div>
      </div>
   
        
     <script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-datetimepicker -->    
    <script src="vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
    <script>
    $('#myDatepicker').datetimepicker();
    
    $('#myDatepicker2').datetimepicker({
        format: 'DD-MM-YYYY'
    });

        $('#myDatepickera').datetimepicker({
            format: 'DD-MM-YYYY'
        });

        $('#myDatepickerb').datetimepicker({
            format: 'DD-MM-YYYY'
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
