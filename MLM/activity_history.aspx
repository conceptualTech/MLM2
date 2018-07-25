<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="activity_history.aspx.cs" Inherits="MLM.activity_history" %>
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
             <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><i class="fa fa-history"></i> Activity History</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="row">
                   
                      <asp:GridView ID="datatable" runat="server" AutoGenerateColumns="False" Width="100%" class="table table-striped table-bordered" AllowPaging="True" RowHeaderColumn="id"  >
                          <Columns>
                               <asp:TemplateField HeaderText="#">
                               <ItemTemplate>
                               <%#Container.DataItemIndex+1 %>
                               </ItemTemplate>
                               </asp:TemplateField>
                               <asp:BoundField DataField="date_time" HeaderText="Date Time" ReadOnly="True" SortExpression="Date Time" />
                               <asp:BoundField DataField="ip_address" HeaderText="Ip Address" ReadOnly="True" SortExpression="Ip Address" />

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

        $("#datetimepicker6").on("dp.change", function (e) {
            $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
        });

        $("#datetimepicker7").on("dp.change", function (e) {
            $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
        });
</script>
</asp:Content>
