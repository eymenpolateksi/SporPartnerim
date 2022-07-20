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
    public partial class Duyurular : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Integrated Security=True;Data Source=.;Initial Catalog=SporPartnerim");
            baglanti.Open();
            SqlCommand komut = new SqlCommand();
            komut.Connection = baglanti;
            komut.CommandText = "select metin from Duyurular  "+ lblDuyuru.Text +"" ;
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                lblDuyuru.Text = oku[0].ToString();
                
            }
        }
    }
}