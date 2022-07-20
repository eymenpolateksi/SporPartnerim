<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="EtkinlikListele.aspx.cs" Inherits="WebApplication1.EtkinlikListele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body class="arkaresim">
<div class="ustmenu">
<ul class="liste">
  <li><a href="index.html">ANASAYFA</a></li>
  <li><a href="hakkimizda.html">HAKKIMIZDA</a></li>
  <li><a href="duyurular.html">DUYURULAR</a></li>
  <li><a href="galeri.html">GALERİ</a></li>
  <li><a href="etkinlikler.html">ETKİNLİKLER</a></li>
    <li><a href="iletisim.html">İLETİŞİM</a></li>
</ul>
</div>
<div class="logo">
<img src="img/logo.png">
</div>
<div class="hakkindayazi">
    <h1>Etkinlik Adı</h1>
    <asp:Label ID="lblEtkinlikAdi" runat="server" Text=""></asp:Label>
    <h1>Etkinlik Türü</h1>
    <asp:Label ID="lblEtkTur" runat="server" Text=""></asp:Label>
    <h1>Spor Türü</h1>
    <asp:Label ID="lblSprTur" runat="server" Text=""></asp:Label>
    <h1>Kişi Sayısı</h1>
    <asp:Label ID="lblKisi" runat="server" Text=""></asp:Label>

    
</div>
</asp:Content>
