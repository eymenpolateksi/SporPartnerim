<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="WebApplication1.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body class="arkaresim">
<div class="ustmenu">
    <ul class="liste">
        <li><a href="index.html">ANASAYFA</a></li>
        <li><a href="hakkimizda.html">HAKKIMIZDA</a></li>
        <li><a href="duyurular.html">DUYURULAR</a></li>
        <li><a href="galeri.html">GALERi</a></li>
        <li><a href="etkinlikler.html">ETKİNLİKLER</a></li>
        <li><a href="iletisim.html">İLETİŞİM</a></li>
    </ul>
  </div>
    <div class="uyeol">
    <h1>BLOG</h1>
    <asp:Label ID="lblUyari" runat="server" Text=""></asp:Label>
    <div class="bilgiler">
    <h1>Kişisel Bilgiler</h1>
    <asp:Label ID="lblAd" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblSoyad" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblSehir" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblTelNo" runat="server" Text=""></asp:Label>
    <asp:Button ID="btnBilgiDegis" runat="server" Text="Bilgileri Düzenle" OnClick="btnBilgiDegis_onClick" />
  </div>
  <div class="etkinlikler">
    <h1>ETKİNLİKLER</h1>
      <asp:Button ID="btnEkle" runat="server" Text="Etkinlik Oluştur" OnClick="btnEkle_onClick" />
      <asp:Button ID="btnListele" runat="server" Text="Etkinlik Listele" OnClick="btnListele_onClick" />
</div>
    </div>
  

<div class="logo">
<img src="img/logo.png">


</div>
    </body>
</asp:Content>
