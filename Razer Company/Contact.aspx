<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Razer_Company.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container1">
    <div id="map"></div>
   <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCiRqbNfc5E6qsAeaXcS_vneC2RJJPv88s&callback=initMap">
   </script>
    <script src="MapJavaScript.js"></script>
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
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
        <p>&nbsp;</p>
        <asp:Literal ID="LitMessage" runat="server"></asp:Literal>
        </div>
</asp:Content>
