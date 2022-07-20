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
    public partial class UyeOl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UyeOlMetot();
            }
        }
        protected void UyeOlMetot()
        {

        }

        protected void btnUyelik_onClick(object sender, EventArgs e)
        {
            try
            {
                string ad = txtAd.Text;
                string soyad = txtSoyad.Text;
               
                string email = txtMail.Text;
                string sifre = txtSifre.Text;
               
                if (ad == null ||soyad == null||email==null||sifre==null)
                {
                    lblUyari.Text = "Boş alan geçilemez.";
                }
                else
                {
                    string query = "insert into Uyeler (Ad,Soyad,Sifre,email) values (@Ad,@Soyad,@Sifre,@email)";
                    using (SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["conStr"].ToString()))
                    {
                        using (SqlCommand cmd = new SqlCommand(query, baglanti))
                        {
                            cmd.Parameters.Add("@Ad", SqlDbType.NChar, 10).Value = ad;
                            cmd.Parameters.Add("@Soyad", SqlDbType.NChar, 10).Value = soyad;  
                            cmd.Parameters.Add("@Email", SqlDbType.NVarChar, 50).Value = email;                           
                            cmd.Parameters.Add("@Sifre", SqlDbType.NChar, 10).Value = sifre;
                            baglanti.Open();
                            cmd.ExecuteNonQuery();
                            baglanti.Close();
                            lblUyari.Text = "Kayıt oluşturuldu! Aramıza hoş geldiniz. ";
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