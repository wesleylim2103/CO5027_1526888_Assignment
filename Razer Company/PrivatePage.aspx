<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PrivatePage.aspx.cs" Inherits="Razer_Company.PrivatePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Private</h2>
    <div class =" container1">
          <asp:Label ID="LabelWelText" runat="server"
              Text="You have successfully logged into a protected page "></asp:Label>
        <br />
        <br />

        <asp:Button ID="BtnLogOut" runat="server" Text="Log out" title="Log Out" OnClick="BtnClickLogOut" />
    </div>

</asp:Content>
