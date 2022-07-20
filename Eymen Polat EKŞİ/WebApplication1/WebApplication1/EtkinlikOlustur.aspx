<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="EtkinlikOlustur.aspx.cs" Inherits="WebApplication1.EtkinlikOlustur" %>
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
  <div class="etkinlikler">
    <h1>ETKİNLİKLER</h1>
  <asp:Panel ID="pnlbilgiler" runat="server">
      <asp:Label ID="lblEtkAd" runat="server" Text="Etkinlik Adı:"></asp:Label>
      <asp:TextBox ID="txtEtkAd" runat="server"></asp:TextBox>
      <asp:Label ID="lblEtkTur" runat="server" Text="Etkinlik Türü:"></asp:Label>
      <asp:TextBox ID="txtEtkTur" runat="server"></asp:TextBox>
      <asp:Label ID="lblSprTur" runat="server" Text="Spor Türü:"></asp:Label>
      <asp:TextBox ID="txtSprTur" runat="server"></asp:TextBox>
      <asp:Label ID="lblKisi" runat="server" Text="Kişi Sayısı:"></asp:Label>
      <asp:TextBox ID="txtKisi" runat="server"></asp:TextBox>
      <asp:Button ID="btnOlustur" runat="server" Text="Oluştur" OnClick="btnOlustur_onClick" />
      <asp:Label ID="lblUyari" runat="server" Text=""></asp:Label>
  </asp:Panel>
  <asp:Panel ID="pnlsonuc" runat="server">
        <asp:Label ID="lblFinish" runat="server" Text="Etkinlik Oluşturuldu"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="hplLogin" runat="server" NavigateUrl="~/Blog.aspx">Üye Profil</asp:HyperLink>
   </asp:Panel>
</div>
    </div>
  

<div class="logo">
<img src="img/logo.png">


</div>
    </body>
</asp:Content>
