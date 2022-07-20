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
    public partial class UyeDuzenle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["Mail"]) == "")
            {
                Response.Redirect("GirisYap.aspx");
                Response.End();
            }
            this.pnlbilgiler.Visible = true;
            this.pnlsonuc.Visible = false;
            if (!Page.IsPostBack)
            {
                bilgilerigoster();
            }
        }
        protected void bilgilerigoster()
        {
            DataTable dt = null;
            DataSet ds = new DataSet();          
            SqlConnection db_baglanti;
            SqlCommand db_komut;
            SqlDataReader db_reader = null;
            db_baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = SporPartnerim");
            db_baglanti.Open();
            string sorgu = "SELECT * FROM Uyeler WHERE email=@email";
            db_komut = new SqlCommand(sorgu, db_baglanti);
            db_komut.Parameters.Add("@email", SqlDbType.VarChar).Value = Session["Mail"];
            db_reader = db_komut.ExecuteReader();
            if (db_reader.HasRows)
            {
                db_reader.Read();
                this.lblMail.Text = db_reader["email"].ToString();
                this.txtAd.Text = db_reader["Ad"].ToString();
                this.txtSoyad.Text = db_reader["Soyad"].ToString();
                this.txtTelNo.Text = db_reader["telNo"].ToString();
                this.txtSehir.Text = db_reader["sehir"].ToString();
            }
            db_reader.Close();
            db_baglanti.Close();
            db_baglanti = null;
        }
        protected void btnGuncelle_onClick(object sender, EventArgs e)
        {
            
            
            SqlConnection baglanti = null;
            SqlCommand komut = null;
            SqlDataReader dtReader = null;
            string deneme = Session["Mail"].ToString();
            baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = SporPartnerim");
            baglanti.Open();
            string sorgu = "SELECT * FROM Uyeler WHERE email=@email";
            komut = new SqlCommand(sorgu, baglanti);
            komut.Parameters.Add("@Ad", SqlDbType.VarChar).Value = this.lblAd.Text;
            komut.Parameters.Add("@Soyad", SqlDbType.VarChar).Value = this.lblSoyad.Text;
            komut.Parameters.Add("@sehir", SqlDbType.VarChar).Value = this.txtSehir.Text;
            komut.Parameters.Add("@telno", SqlDbType.VarChar).Value = this.txtTelNo.Text;
            komut.Parameters.Add("@email", SqlDbType.VarChar).Value = Session["Mail"];
            dtReader = komut.ExecuteReader();
            if (dtReader.HasRows)
            {             
                this.lblUyari.Text = "Mail Adresi zaten var!!!";
            }
            dtReader.Close();
            string sorgu1 = "Update Uyeler set TelNo=@telNo,Sehir=@sehir where email=@email";
            komut = new SqlCommand(sorgu1, baglanti);
            komut.Parameters.Add("@telno", SqlDbType.VarChar).Value = this.txtTelNo.Text;
            komut.Parameters.Add("@sehir", SqlDbType.VarChar).Value = this.txtSehir.Text;
            komut.Parameters.Add("@email", SqlDbType.VarChar).Value = Session["Mail"];

            
                
            komut.ExecuteNonQuery();
            baglanti.Close();
            baglanti = null;
            this.pnlbilgiler.Visible = false;
            this.pnlsonuc.Visible = true;

        }
    }
}