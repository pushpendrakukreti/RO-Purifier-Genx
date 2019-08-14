 <%@ Page Title="" Language="C#" Culture="en-IN" MasterPageFile="~/admin/AdminPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_AdminPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
     #main {
         background-color:#4d4d4d;
         
     }
     #main h4 {color:#fff; padding-left:10px;}
     #main big {color:#fff; padding-left:10px;}
     #main button{width:100%;}
     #main .btn btn-primary{width:100%;}
</style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div class="row">
              <div class="col-md-12">
                     <h2 class="text-center">Welcome To Admin Panel</h2>
               </div>
                </div>
                 <!-- /. ROW  -->
                  <hr />

     <%--<div class="container">
        <div class="row">
            <div class="col-md-12">
                <div align="center">
                    <img src="../images/background/1.jpg" class="img-responsive" alt=""/>
                  </div>
            </div>
        </div>
    </div>--%>
</asp:Content>
