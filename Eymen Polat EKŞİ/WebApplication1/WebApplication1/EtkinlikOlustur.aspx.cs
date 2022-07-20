using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.Configuration;

namespace WebApplication1
{
    public partial class EtkinlikOlustur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                EtkinlikOlusturMetod();
            }
            this.pnlbilgiler.Visible = true;
            this.pnlsonuc.Visible = false;
            if (Convert.ToString(Session["Mail"]) == "")
            {
                Response.Redirect("GirisYap.aspx");
                Response.End();
            }
        }
        protected void EtkinlikOlusturMetod()
        {

        }
       protected void btnOlustur_onClick(object sender,EventArgs e)
        {
            try
            {
                string EtkAd = txtEtkAd.Text;
                string EtkTur = txtEtkTur.Text;

                string SprTur = txtSprTur.Text;
                string Kisi = txtKisi.Text;

                if (EtkAd == null || EtkTur == null || SprTur == null || Kisi == null)
                {
                    lblUyari.Text = "Boş alan geçilemez.";
                }
                else
                {
                    string query = "insert into Etkinlik (etkinlikAdi,etkinlikTur,sporTur,kisiSayisi) values (@etkinlikAdi,@etkinlikTur,@sporTur,@kisiSayisi)";
                    using (SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["conStr"].ToString()))
                    {
                        using (SqlCommand cmd = new SqlCommand(query, baglanti))
                        {
                            cmd.Parameters.Add("@etkinlikAdi", SqlDbType.NChar, 10).Value = EtkAd;
                            cmd.Parameters.Add("@etkinlikTur", SqlDbType.NChar, 10).Value = EtkTur;
                            cmd.Parameters.Add("@sporTur", SqlDbType.NVarChar, 50).Value = SprTur;
                            cmd.Parameters.Add("@kisiSayisi", SqlDbType.NChar, 10).Value = Kisi;
                            baglanti.Open();
                            cmd.ExecuteNonQuery();
                            baglanti.Close();
                            this.pnlbilgiler.Visible = false;
                            this.pnlsonuc.Visible = true;

                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblUyari.Text = "Bir Hata Oluştu: " + ex;
            }
        }
    }
}