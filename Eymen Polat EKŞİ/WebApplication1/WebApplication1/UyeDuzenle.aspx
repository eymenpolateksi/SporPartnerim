<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="UyeDuzenle.aspx.cs" Inherits="WebApplication1.UyeDuzenle" %>
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
<asp:Panel ID="pnlbilgiler" runat="server">
    <div class="uyeol">
        <asp:Label ID="lblMail" runat="server" />
    
    <asp:Label ID="lblAd" runat="server" Text="Adınız" />
    <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
    <asp:Label ID="lblSoyad" runat="server" Text="Soyadınız:" />
    <asp:TextBox ID="txtSoyad" runat="server" Width="191px" />
     <asp:Label ID="lblTelNo" runat="server" Text="Tel No : " />
    <asp:TextBox ID="txtTelNo" runat="server"></asp:TextBox>
    <asp:Label ID="lblSehir" runat="server" Text="Şehir : " />
    <asp:TextBox ID="txtSehir" runat="server"></asp:TextBox>
    <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" onclick="btnGuncelle_onClick" />
    <asp:Label ID="lblUyari" runat="server"/>

    </div>
</asp:Panel>
        <asp:Panel ID="pnlsonuc" runat="server">
        <asp:Label ID="lblFinish" runat="server" Text="Bilgileriniz Güncellendi"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="hplLogin" runat="server" NavigateUrl="~/Blog.aspx">Üye Profil</asp:HyperLink>
    </asp:Panel>
</body>
</asp:Content>
