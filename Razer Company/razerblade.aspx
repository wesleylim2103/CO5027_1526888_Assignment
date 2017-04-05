<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="razerblade.aspx.cs" Inherits="Razer_Company.razerblade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a href="default.aspx" runat="server"><b>Back</b></a>
    <div class="container">
        <img src="Image/rzrblade.png" style="height: 280px; width: 433px"/ > <!-- Image is Retrieve from https://www.razerzone.com/gaming-systems/razer-blade on the 26 march 2017 -->
        <h2>Razer Blade </h2>
        <h3><u>Specification</u></h3>
        <p>Price: $3000 BND</p>
        <p>Display: 14"IPS Full HD Matte,16:9 Ratio,1920 X 1080</p>
        <p>Graphics: NVIDIA GeForce GTX 1060(6GB GDDR5 VRAM)</p>
        <p>Processor: Intel Core i7-7700Q Quad-Core Processor with Hyper-Threading 2.8GHz/3.8GHZ(Base/Turbo)</p>
        <p>Chipset: Mobile Intel PCHM 100-series chipset,HM175</p>
        <p>Storage: choose from 256GB SSD | 512GB SSD | 1TB SSD</p>
        <p>Memory: 16GB dual-channel onboard memory(DDR4,2400MHz)</p>
        <p>Operating System:Window 10 (64-Bit)</p>
        <p>Communication: Killer™Wireless-AC 1535(802.11a/b/g/n/ac+Bluetooth 4.1)</p>
        <p>Input & Output: Built-in webcam, Anti-Ghosting keyboard with chroma lighting, Thunderbolt 3(USB-C), USB 3.0 port x2(Superspeed), HDMI audio and video(4k at 60Hz)output</p>
        <p>Audio: Built in Stereo Speakers, 3.5mm headphone/microphone combo part</p>
        <p>Power: Compact 165W power adapter </p>
        <p>Battery: Built-in 70Wh rechargable lithium-ion polymer battery</p>
        <p>Approx-Size: 0.70" / 17.9mm (height)x13.6"/ 345mm(Width)x 9.3"/ 235 mm (Depth)</p>
        <p>Approx-Weight: 4.10lbs /1.86kg</p>
        <asp:Button ID="Button1" runat="server" Text="Buy Now" />
    </div>
</asp:Content>
