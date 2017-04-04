<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Razer_Company.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 675px;
            height: 489px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Contact Us</h2>
    <div class="container1">
                <img src="Image/lcb.JPG" height:"535" width:"383" class="auto-style2" />
        <br />
   <p><asp:Label ID="Name" runat="server" Text="Name" AssociatedControlID="Name"></asp:Label>
    <asp:TextBox ID="txtname" runat="server" Width="365px"></asp:TextBox></p>
        <br />
        <p><asp:Label ID="Email" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtemail" runat="server" Width="365px"></asp:TextBox></p>
        <p>&nbsp;</p>
    <p><asp:Label ID="Subject" runat="server" Text="Subject"></asp:Label>
    <asp:TextBox ID="txtsubject" runat="server" Width="365px"></asp:TextBox></p>
        <p>&nbsp;</p>
    <p><asp:Label ID="Message" runat="server" Text="Message"></asp:Label>
    <asp:TextBox ID="txtmessage" runat="server" Width="365px"></asp:TextBox></p>
        <p>&nbsp;</p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="79px" />
        <p>&nbsp;</p>
    </div>
</asp:Content>
