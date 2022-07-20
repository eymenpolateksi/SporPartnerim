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
    public partial class Blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BlogMetod();
            }
            if (Convert.ToString(Session["Mail"]) == "")
            {
                Response.Redirect("GirisYap.aspx");
                Response.End();
            }
            bilgilerigetir();
        }
        protected void bilgilerigetir()
        {
            DataTable dt = null;
            DataSet ds = new DataSet();


            SqlConnection baglanti;
            SqlCommand komut;
            SqlDataAdapter adapter = null;
            baglanti = new SqlConnection("Integrated Security=True;Data Source=.;Initial Catalog=SporPartnerim");
            baglanti.Open();

            string sorgu = "SELECT Ad, Soyad, telNo, sehir, profilResim FROM Uyeler WHERE email = @email";
            komut = new SqlCommand(sorgu, baglanti);
            komut.Parameters.Add("@email", SqlDbType.NVarChar,50).Value = Session["Mail"];

            adapter = new SqlDataAdapter();
            adapter.SelectCommand = komut;
            adapter.Fill(ds);
            dt = ds.Tables[0];
            adapter = null;
            baglanti.Close();
            baglanti = null;
            if (dt.Rows.Count > 0)
            {
                this.lblAd.Text = dt.Rows[0]["Ad"].ToString();
                this.lblSoyad.Text = dt.Rows[0]["Soyad"].ToString();
                this.lblSehir.Text = dt.Rows[0]["sehir"].ToString();
                this.lblTelNo.Text = dt.Rows[0]["telNo"].ToString();
                
            }


        }
        protected void BlogMetod()
        {

        }
       
        protected void btnBilgiDegis_onClick(object sender,EventArgs e)
        {
            Response.Redirect("UyeDuzenle.aspx");

        }
        protected void btnEkle_onClick(object sender, EventArgs e)
        {
            Response.Redirect("EtkinlikOlustur.aspx");

        }
        protected void btnListele_onClick(object sender, EventArgs e)
        {
            Response.Redirect("EtkinlikListele.aspx");

        }


    }
}
