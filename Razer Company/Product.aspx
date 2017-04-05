<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Razer_Company.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Gaming Gear Product</h3>
    <div class="Table-container">
        <table>
            <tr>
                <td>
    <h4>RazerBlade - BND $ 3000</h4>
     <a href="rzrblade.aspx"><img src="Image/rzrblade.png" style="height: 280px; width: 433px" alt:"razerblade"/></a></td> <!-- Image is Retrieve from https://www.razerzone.com/gaming-systems/razer-blade on the 26 march 2017 -->
           
                <td>
    <h4>Razer Blackwidow Chroma V2 - BND $ 179.00</h4>
    <a href="rzrblackwidow.aspx"><img src="Image/rzrblkwdw.png" style="height: 280px; width: 425px" alt:"razerblackwidow"/></a> <!-- Image is Retrieve from https://www.razerzone.com/gaming-keyboards-keypads/razer-blackwidow-chroma-v2 on 26 march 2017 -->
                </td>

                <td>
    <h4>Razer Kraken Pro V2 - BND $ 135.00</h4>
   <a href="rzrkrakenprov2.aspx"><img src="Image/rzr_krakenprov2.png" style="height: 280px; width: 425px" alt:"Razerkrakenprov2"/></a> <!-- Image is Retrieve from https://www.razerzone.com/gaming-audio/razer-kraken-pro-v2 on 26 march 2017 -->
                </td>
                </tr>
            
            <tr>
                <td>
    <h4>Razer FireFly - BND $ 80.00</h4>
   <a href="rzrfirefly.aspx"><img src="Image/razer_firefly.png" style="height: 280px; width: 425px" /></a> <!-- Image is Retrievefrom https://www.razerzone.com/gaming-mouse-mats/razer-firefly-cloth-edition on 28 march 2017 -->
                </td>

                <td>
    <h4>RazerNaga Hex - BND $ 120.00</h4>
    <a href="rzrnaga.aspx"><img src="Image/razer_naga.png" style="height: 280px; width: 425px" /></a> <!-- Image is Retrieve from https://www.razerzone.com/gaming-mice/razer-naga-hex-v2 on 26 march 2017 -->
                </td>

                <td>
    <h4>Razer seiren Pro - BND $ 150.00</h4>
    <img src="Image/razer_seiren_pro.jpg" style="height: 280px; width: 425px"  /> <!-- Image is Retrieve from https://www.razerzone.com/gaming-audio/razer-seiren-pro on 27 march 2017 -->
                </td>
            </tr>
            </table>
     </div>
</asp:Content>
