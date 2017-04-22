<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Razer_Company.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Register</h2>
    <div class="container1">
        <asp:Label ID="LblUsername" runat="server" Text="Username" AssociatedControlID="TextUsername"></asp:Label>
        <asp:TextBox ID="TextUsername" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Lblpassword" runat="server" Text="password" AssociatedControlID="TextPassword"></asp:Label>
        <asp:TextBox ID="TextPassword" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LblName" runat="server" Text="Name" AssociatedControlID="TextUsername"></asp:Label>
        <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LblEmail" runat="server" Text="Email" AssociatedControlID="TextEmail"></asp:Label>
        <asp:TextBox ID="TextEmail" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="LoginButton" runat="server" Text="Signup" OnClick="LoginButton_Click" />
        <asp:Literal ID="LitError" runat="server"></asp:Literal>
    </div>
</asp:Content>
