<%@ Page Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Index" %>
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
<div class="slogan">
<p>HALA SPOR PARTNERİNİZİ BULAMADIYSANIZ : ARAMIZA KATILIN</p>
   <%--<a href="javascript:;" class="button">ÜYE OL</a>--%>
<asp:Button ID="btnUyelik" runat="server" CssClass="button" Text="Üye Ol" OnClick="btnUyelik_onClick" />
<%--<a href="javascript:;" class="button">GİRİŞ YAP</a>--%>
    <asp:Button ID="btnGiris" runat="server" CssClass="button" Text="Giriş Yap" OnClick="btnGiris_onClick" />
    
</asp:Content>