<%@ Page Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Duyurular.aspx.cs" Inherits="WebApplication1.Duyurular" %>
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
    <h1>SPOR PARTNERİM DUYURULAR</h1>
   <%--<p><label name="text" class="p" cols="20"></label></p><br>--%>
    <asp:Label ID="lblDuyuru" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblUyari" runat="server" Text=""></asp:Label>
</div>
</asp:Content>
