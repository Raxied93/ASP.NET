using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matrix_Mall
{
    public partial class Registrasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string HasilEmail = string.Empty;

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            // Deklarasi Variabel
            string nama = string.Empty; 
            string username = string.Empty;
            string pass = string.Empty;
            string alamat = string.Empty;
            string email = string.Empty;

            nama = TbNama.Text;
            username = TbUsername.Text;
            pass = TbPass.Text;
            alamat = TbAlamat.Text;
            email = TbEmail.Text;

            //Pemanggil Fungsi
            Koneksi_ADO cn = new Koneksi_ADO();
            string Hasil = cn.ClassKoneksi_Insert(nama, username , pass , alamat , email);

            if (Hasil == "1")
            {
                Response.Write("<script language='javascript'>window.alert('Sukses Menyimpan Data !');window.location='../Login.aspx';</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>window.alert('Gagal Menyimpan Data!');window.location='../Regi.aspx';</script>");
            }
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Login.aspx");
        }

        protected void BtnSupreg_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/SupReg.aspx");
        }

    }
}