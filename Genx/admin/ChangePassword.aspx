<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="admin_ChangePassword" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
table.user
{
    margin:0 auto 0 auto; padding:0px; width:60%; min-width:420px;
    border:1px solid #fc9e2c;
    border-radius:5px;-moz-border-radius:5px;-webkit-border-radius:5px;-o-border-radius:5px;
}
.user td
{
    padding:10px; vertical-align:top; text-align:left;
}
.user td:nth-child(1){ width:50%; text-align:center;}
.user td:nth-child(2){ width:50%;}

.modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=40);
        opacity: 0.4;
    }
    .modalPopup
    {
        background-color: #F6F6F6;
        width: 350px;
        border-radius:5px;
    }
    .modalPopup .body
    {
        min-height: 50px;
        line-height: 25px;
        text-align: center;
        font-weight: bold;
        padding:20px;
    }
    .modalPopup .yes, .modalPopup .no
    {
        height: 28px;
        color: black;
        line-height: 23px;
        text-align: center;
        font-weight: bold;
        cursor: pointer;
        margin-top:5px;
    }
    
    .minheight{ min-height:440px;}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="minheight">
<br />
<table class="user">
<tr>
     <td colspan="2" align="center">
         <asp:Label ID="Label1" runat="server" Text="Change Password" Font-Bold="True" 
             Font-Size="16px"></asp:Label>
        <asp:Label ID="lblmainMsg" runat="server" Text=""></asp:Label>
     </td>
</tr>
<tr>
 <td>User Name
 </td>
 <td>
     <asp:TextBox ID="txtUsername" runat="server" Width="200px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td>Old Password
 </td>
 <td>
     <asp:TextBox ID="txtOldPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td>New Password</td>
 <td>
     <asp:TextBox ID="txtNewPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td>Confirm Password</td>
 <td>
     <asp:TextBox ID="txtConfirmpass" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
     <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="No Match"
        ControlToValidate="txtConfirmpass" ControlToCompare="txtNewPassword" ForeColor="Red"></asp:CompareValidator>
 </td>
 </tr>
 <tr>
 <td>&nbsp;</td>
  <td>
    <asp:Button ID="btnSave" runat="server" Text="Save" class="btn-black" 
        onclick="btnSave_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn-black" 
        onclick="btnCancel_Click" />
  </td>
 </tr>
</table>

<asp:HiddenField ID="HiddenField1" runat="server"></asp:HiddenField>
                <cc1:ModalPopupExtender ID="mpe" runat="server" PopupControlID="pnlPopup" TargetControlID="HiddenField1" 
                    CancelControlID="btnNo" BackgroundCssClass="modalBackground">
                </cc1:ModalPopupExtender>
                <asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
                    <div class="body">
                       <p class="text-center"><asp:Label ID="lblpopup" runat="server" Text=""></asp:Label></p>
                       <asp:Button ID="btnNo" runat="server" Text="OK" />
                    </div>
                </asp:Panel>
</div>
</asp:Content>

