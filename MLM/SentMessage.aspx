<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeFile="SentMessage.aspx.cs" Inherits="MLM.SentMessage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="right_col" role="main">
          <div class="">
            
            <div class="clearfix"></div>

            <div class="row">

              <div class="col-md-12 col-sm-12 col-xs-12"> 
               
                <div class="x_panel">
                  <div class="x_title">
                  <h2>Read Sent Mail</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">


                   
                             
              <div class="col-md-12 col-sm-6 col-xs-12">
                <div class="x_panel">
                  
                  <div class="x_content">

                    <div class="col-xs-3">
                      <!-- required for floating -->
                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs tabs-left">
                        <li class="active"><a href="mailbox.aspx" style="background-color:#428bca; color:white"><span class="fa fa-backward"> Back</span></a>
                        </li>
                      </ul>
                    </div>

                    <div class="col-xs-9">
                      <!-- Tab panes -->
                      <div class="tab-content">
                        <div class="tab-pane active" id="home">

                          <p class="lead"> <span class="fa fa-thumb-tack"> <asp:Label ID="lblSubject" runat="server" Text="Subject" ></asp:Label></span></p>
                           To:  <asp:Label ID="lblFrom" runat="server" Text="From" ></asp:Label>
                                <br/>
                            <br/>
                            <textarea id="TextArea1" cols="20" rows="2" style="width:100%; height:200px;border:outset" readonly="readonly" runat="server"></textarea>

                </div>
              </div>
            </div>
          </div>
        </div>
                  </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
         </div>
</asp:Content>
