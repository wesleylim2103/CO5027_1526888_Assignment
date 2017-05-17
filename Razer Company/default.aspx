<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Razer_Company.Admin._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="default">
        <a><img src="Image/razer-blade-foreground.1.png" alt="Background"/></a> <!-- Image is Retrieve from “https://www.razerzone.com/”  on the 24 march 2017 -->
            <div class="container2">
        <table>
            <tr>
                <td>
    <h4>RazerBlade - BND $ 3000</h4>
    <a> <img src="Image/rzrblade.png" style="height: 280px; width: 433px" alt="razerblade_laptop"/></a></td> <!-- Image is Retrieve from https://www.razerzone.com/gaming-systems/razer-blade on the 26 march 2017 -->
           
                <td>
    <h4>Razer Blackwidow Chroma V2 - BND $ 179.00</h4>
    <a><img src="Image/rzrblkwdw.png" style="height: 280px; width: 425px" alt="razerblackwidow_Keyboard"/></a> <!-- Image is Retrieve from https://www.razerzone.com/gaming-keyboards-keypads/razer-blackwidow-chroma-v2 on 26 march 2017 -->
                </td>

                <td>
    <h4>Razer Kraken Pro V2 - BND $ 135.00</h4>
  <a> <img src="Image/rzr_krakenprov2.png" style="height: 280px; width: 425px" alt="Razerkrakenprov2_Headset"/></a> <!-- Image is Retrieve from https://www.razerzone.com/gaming-audio/razer-kraken-pro-v2 on 26 march 2017 -->
                </td>
                </tr>
            
            <tr>
                <td>
    <h4>Razer FireFly - BND $ 80.00</h4>
  <a><img src="Image/razer_firefly.png" style="height: 280px; width: 425px" alt="firefly_Mousepad" /></a> <!-- Image is Retrievefrom https://www.razerzone.com/gaming-mouse-mats/razer-firefly-cloth-edition on 28 march 2017 -->
                </td>

                <td>
    <h4>RazerNaga Hex - BND $ 120.00</h4>
  <a>  <img src="Image/razer_naga.png" style="height: 280px; width: 425px" alt="nagaMouse" /></a> <!-- Image is Retrieve from https://www.razerzone.com/gaming-mice/razer-naga-hex-v2 on 26 march 2017 -->
               </td>

                <td>
    <h4>Razer seiren Pro - BND $ 150.00</h4>
  <a><img src="Image/razer_seiren_pro.jpg" style="height: 280px; width: 425px" alt="razerMicrophone" /> </a><!-- Image is Retrieve from https://www.razerzone.com/gaming-audio/razer-seiren-pro on 27 march 2017 -->
                </td>
            </tr>
            </table>
     </div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate><table></HeaderTemplate>
        <itemtemplate>
            <tr>
                <td><a href="<%# Eval ("ProductID", "ProductDetail.aspx?Id={0}" ) %>"><%#Eval("ProductName") %></a></td>
            </tr>
        </itemtemplate>
        <footertemplate></table></footertemplate>
            </asp:Repeater>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1526888_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [Add,Edit and Delete]"></asp:SqlDataSource>
         
    </div>
  
    </asp:Content>