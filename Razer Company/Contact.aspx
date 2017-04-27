<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Razer_Company.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="container1">
    <div id="map"></div>
   <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCiRqbNfc5E6qsAeaXcS_vneC2RJJPv88s&callback=initMap">
   </script>
    <script src="Scripts/MapJavaScript.js"></script>
                <br />
                <asp:Label ID="LblName" runat="server" Text="Name" AssociatedControlID="TxtName"></asp:Label>
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                <br />
                <br />
                 <asp:Label ID="LblEmal" runat="server" Text="Email" AssociatedControlID="TxtEmail"></asp:Label>
                <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                <br />
                <br />
                 <asp:Label ID="LblMessage" runat="server" Text="Message" AssociatedControlID="TxtMessage"></asp:Label>
                <asp:TextBox ID="TxtMessage" runat="server"></asp:TextBox>
                <br />
                <br />
                 <asp:Label ID="LblSubject" runat="server" Text="Subject" AssociatedControlID="TxtSubject"></asp:Label>
                <asp:TextBox ID="TxtSubject" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
                <asp:Literal ID="LitError" runat="server"></asp:Literal>
                </div>
</asp:Content>
