<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="GirisYap.aspx.cs" Inherits="WebApplication1.GirisYap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body class="arkaresim">
<div class="ustmenu">
<ul class="liste">
  <li><a href="javascript">ANASAYFA</a></li>
  <li><a href="araclar.html">HAKKIMIZDA</a></li>
  <li><a href="icerik.html">DUYURULAR</a></li>
  <li><a href="blog.html">GALERİ</a></li>
  <li><a href="sepet.html">ETKİNLİKLER</a></li>
    <li><a href="sepet.html">İLETİŞİM</a></li>

</ul>
  </div>
    <div class="uyeol">
    <h1>GİRİŞ YAP</h1>
        <%--<span>E-Mailiniz</span> <input type="text" name="email" value="">--%>
    <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
        <%--<span>Şifreniz</span> <input type="text" name="sifre" value="">--%>
    <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox>

  </div>
        <%--<a href="javascript:;" class="button buttonuye">GİRİŞ YAP</a>--%>
   <asp:Button ID="btnGiris" runat="server" CssClass="button buttonuye" Text="Giriş Yap" OnClick="btnGiris_onClick" />
        <asp:Label ID="lblUyari" runat="server" Text=""></asp:Label>


<div class="logo">
<img src="img/logo.png">


</div>
        </body>
</asp:Content>
