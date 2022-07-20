<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="UyeOl.aspx.cs" Inherits="WebApplication1.UyeOl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body class="arkaresim">
<div class="ustmenu">
<div class="ustmenu">
<ul class="liste">
  <li><a href="javascript">ANASAYFA</a></li>
  <li><a href="hakkimizda.html">HAKKIMIZDA</a></li>
  <li><a href="duyurular.html">DUYURULAR</a></li>
  <li><a href="galeri.html">GALERİ</a></li>
  <li><a href="etkinlikler.html">ETKİNLİKLER</a></li>
    <li><a href="iletisim.html">İLETİŞİM</a></li>
    </ul>
  </div>
    </div>
    <div class="uyeol">
    <h1>ÜYE OL</h1>
        <%--<span>Adınız</span> <input type="text" name="ad" value="">--%>
    <asp:Label ID="lblAd" Text="Adınız" runat="server" />
    <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
       <%--<span>Soyadınız</span> <input type="text" name="soyad" value="">--%>
    <asp:Label ID="lblSoyad" Text="Soyadınız" runat="server" />
    <asp:TextBox ID="txtSoyad" runat="server"></asp:TextBox>
       <%--<span>E-mail</span> <input type="text" name="email" value="">--%>
    <asp:Label ID="lblMail" Text="E-Mail Adresiniz" runat="server"/>
    <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
       <%-- <span>Şifre</span> <input type="password" name="sifre" value="">--%>
    <asp:Label ID="lblSifre" Text="Şifreniz" runat="server"/>
    <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox>
      <%--<a href="javascript:;" class="button buttonuye">ÜYE OL</a>--%>
        
    <asp:Button ID="btnUyelik" runat="server" CssClass="button buttonuye" Text="Üye Ol" OnClick="btnUyelik_onClick" />
  <asp:Label ID="lblUyari" runat="server" Text=""></asp:Label>
    </div>
   
    

<div class="logo">
<img src="img/logo.png">


</div>
</body>
       
</asp:Content>
