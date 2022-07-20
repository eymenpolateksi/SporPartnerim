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
    public partial class GirisYap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GirisYapMetot();
            }
        }
        protected void GirisYapMetot()
        {

        }
        protected void btnGiris_onClick(object sender, EventArgs e)
        {
                SqlConnection baglanti;
                SqlCommand db_komut;
                baglanti = new SqlConnection("Integrated Security = True; Data Source =.; Initial Catalog = SporPartnerim");
                baglanti.Open();

                string sorgu = "SELECT COUNT(*) FROM Uyeler WHERE email=@email and sifre=@Sifre";
                db_komut = new SqlCommand(sorgu, baglanti);
                db_komut.Parameters.Add("@email", SqlDbType.NVarChar,50).Value = txtMail.Text;
                db_komut.Parameters.Add("@sifre", SqlDbType.VarChar).Value = txtSifre.Text;
                int kayitsayisi = (int)db_komut.ExecuteScalar();
                baglanti.Close();
                baglanti = null;
                if (kayitsayisi <= 0)
                {
                    
                    this.lblUyari.Text = "Kullanıcı Adı veya Şifre Yanlış";
                }
                else
                {
                    Session["Mail"] = this.txtMail.Text;
                    Response.Redirect("Blog.aspx");
                }


            }
            
            
        }
    }
