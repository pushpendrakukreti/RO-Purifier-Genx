<%@ Page Title="" Language="C#" Culture="en-GB" MasterPageFile="~/admin/AdminPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="admin_AddProduct" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
table.product{ margin:0px 0px 0px 0px; padding:0; border:none; width:90%;}
.product td
{
    padding:7px; vertical-align:top; margin:0;
}
.product td:nth-child(1){ width:40%;}
.product td:nth-child(2){ width:60%;}

</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
<div class="col-md-12">
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <Triggers>
        <asp:PostBackTrigger ControlID="btnAddProduct" />
        <asp:AsyncPostBackTrigger ControlID="ddCategory" />
    </Triggers>
    <ContentTemplate>
    <div>
   <center>
<div style="width:90%; padding:10px; margin:0 auto 0 auto; border:solid 1px #fc9e2c;">
<table class="product">
<tr>
     <td colspan="2" align="center">
         <h4 class="text-center">Add Product Details</h4>
         <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
     </td>
    </tr>
 <tr>
   <td>Select Category :</td>
   <td>
       <asp:DropDownList ID="ddCategory" runat="server"
           AutoPostBack="true" 
           onselectedindexchanged="ddCategory_SelectedIndexChanged">
       </asp:DropDownList>&nbsp;
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ErrorMessage="Select Category" InitialValue="--Select Category--" ForeColor="Red" 
           ControlToValidate="ddCategory" Display="Dynamic" ValidationGroup="g1"></asp:RequiredFieldValidator>
   </td>
 </tr>
<tr>
   <td>Select Sub-Category :</td>
   <td>
       <asp:DropDownList ID="ddSubCategory" runat="server"
           AutoPostBack="true" 
           onselectedindexchanged="ddCategory_SelectedIndexChanged1">
       </asp:DropDownList>&nbsp;
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
           ErrorMessage="Select Sub Category" InitialValue="--Select Sub-Category--" ForeColor="Red" 
           ControlToValidate="ddSubCategory" Display="Dynamic" ValidationGroup="g2"></asp:RequiredFieldValidator>
   </td>
 </tr>
    <tr>
   <td>Select Product Category :</td>
   <td>
       <asp:DropDownList ID="ddSubSubCategory" runat="server"
           AutoPostBack="true">
       </asp:DropDownList>&nbsp;
       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
           ErrorMessage="Select Product Category" InitialValue="--Select Product Category--" ForeColor="Red" 
           ControlToValidate="ddSubSubCategory" Display="Dynamic" ValidationGroup="g3"></asp:RequiredFieldValidator>
   </td>
 </tr>
 <tr>
   <td>Product Name :</td>
   <td>
       <asp:TextBox ID="txtProductName" runat="server" Width="220px"></asp:TextBox>&nbsp;
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ErrorMessage="Product Name" ControlToValidate="txtProductName" Display="Dynamic" 
           ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator><br />
   </td>
 </tr>
    <tr>
   <td>Product Price (Rs.) :</td>
   <td>
       <asp:TextBox ID="txtprice" runat="server" Width="220px" TextMode="Number"></asp:TextBox>&nbsp;
       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
           ErrorMessage="Product Name" ControlToValidate="txtprice" Display="Dynamic" 
           ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator><br />
   </td>
 </tr>

 <tr>
   <td>Product Image :</td>
   <td>
       <img id="imgprvw" src="../images/no-image.jpg" width="90" height="90" class="" alt="" />
        <asp:FileUpload ID="UploadImage" onchange="showimagepreview(this)" Width="200" runat="server" />
        <asp:Label ID="lblImage" runat="server" Text=""></asp:Label><br />
   </td>
 </tr>
 
 <tr>
   <td colspan="2">
        Description :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
           ErrorMessage="Enter Description" ControlToValidate="CKEditor1" Display="Dynamic" 
           ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
        <CKEditor:CKEditorControl ID="CKEditor1" BasePath="~/ckeditor" runat="server" UIColor="#BFEE62" Language="de" EnterMode="BR">
        </CKEditor:CKEditorControl>
   </td>
 </tr>
 <tr>
 <td></td>
 <td>
    <asp:Button ID="btnAddProduct" runat="server" Text="Add Product Detail" onclick="btnAddProduct_Click" ValidationGroup="g1" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click" />
 </td>
 </tr>
</table>
</div>
</center>
</div>
</ContentTemplate>
</asp:UpdatePanel>
<script type="text/javascript">    jQuery.noConflict();</script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript">
        function showimagepreview(input) {
            if (input.files && input.files[0]) {
                var filerdr = new FileReader();
                filerdr.onload = function (e) {
                    $('#imgprvw').attr('src', e.target.result);
                }
                filerdr.readAsDataURL(input.files[0]);
            }
        }
    </script>
</div>
</div>
</asp:Content>