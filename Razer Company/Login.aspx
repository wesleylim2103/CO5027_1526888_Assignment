<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Razer_Company.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2>Login</h2>
    <div class="container1">
        <asp:Label ID="LblUsername" runat="server" Text="Username" AssociatedControlID="TextUsername"></asp:Label>
        <asp:TextBox ID="TextUsername" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Lblpassword" runat="server" Text="Password" AssociatedControlID="TextPassword"></asp:Label>
        <asp:TextBox ID="TextPassword" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="Login_Click" />
        <asp:Literal ID="LitLogError" runat="server"></asp:Literal>
        <p>click here if you do not have a account<a href="Register.aspx">Register</a></p>
    </div>
</asp:Content>
