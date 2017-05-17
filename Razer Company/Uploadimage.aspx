<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Uploadimage.aspx.cs" Inherits="Razer_Company.Uploadimage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 360px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Upload" runat="server" Text="Upload" OnClick="Upload_Click"/>
    </div>
    <asp:Image ID="Image1" runat="server" />
</asp:Content>
