using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_Ujian_ADO
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            // Deklarasi Variabel
            string username = string.Empty;
            string pass = string.Empty;
            string email = string.Empty;
            string country = string.Empty;
            string IT_Rev = string.Empty;

            username = TbUsername.Text;
            pass = TbPass.Text;
            email = TbEmail.Text;
            country = TbCountry.Text;
            IT_Rev = TextAreaIT_Rev.Text;

            //Pemanggil Fungsi

            Koneksi cn = new Koneksi();
            string Hasil = cn.ClassKoneksi_Insert(username, pass, email, country, IT_Rev);

            if (Hasil == "1")
            {
                Response.Write("<script language='javascript'>window.alert('Sukses Menyimpan Data !');window.location='../Login.aspx';</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>window.alert('Gagal Menyimpan Data!');window.location='../Sign_Up.aspx';</script>");
            }
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Login.aspx");
        }

    }
}