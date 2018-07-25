<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="rank_achivers_report.aspx.cs" Inherits="MLM.rank_achivers_report" %>
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

       <div class="row">
              
              <div class="col-md-12 col-xs-12">
                <div class="x_panel" >
                  <div class="x_title">
                    <h2>Rank Performance Report </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class='col-sm-3'>Select Rank<span style="color:red">*</span>
                   <div class="form-group">
                         <asp:DropDownList ID="DropDownList2" runat="server" class="form-control  " required="true">
                         <asp:ListItem Value=""> Select Rank </asp:ListItem>
                         </asp:DropDownList>
                    </div>
                </div>
                         <div class='col-sm-3'>
                   From Date<span style="color:red">*</span>
                   <div class="form-group">
                           <div class='input-group date' id='myDatepicker2'>
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>

                         <div class='col-sm-3'>
                  To Date<span style="color:red">*</span>
                   <div class="form-group">
                           <div class='input-group date' id='myDatepickera'>
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" ></asp:TextBox>
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>

                        <div class='col-sm-3'>
                       <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-danger" style="margin-top:17px" />
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
