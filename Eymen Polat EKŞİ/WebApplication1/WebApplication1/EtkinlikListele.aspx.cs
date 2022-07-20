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
    public partial class EtkinlikListele : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               EtkinlikGetir();
            }

        }
        protected void EtkinlikGetir()
        {
            SqlConnection baglanti = new SqlConnection("Integrated Security=True;Data Source=.;Initial Catalog=SporPartnerim");
            baglanti.Open();
            SqlCommand komut = new SqlCommand();
            komut.Connection = baglanti;
            komut.CommandText = "select etkinlikAdi,etkinlikTur,sporTur,kisiSayisi from Etkinlik  " + lblEtkinlikAdi.Text + ""+ lblEtkTur.Text
            +""+   lblSprTur.Text+""+ lblKisi.Text+"";
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                lblEtkinlikAdi.Text = oku[0].ToString();
                lblEtkTur.Text = oku[1].ToString();
                lblSprTur.Text = oku[2].ToString();
                lblKisi.Text = oku[3].ToString();

            }
        }
    }
}