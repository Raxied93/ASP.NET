using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matrix_Mall
{
    public partial class SupReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            // Deklarasi Variabel
            string Kode = string.Empty;
            string Nama = string.Empty;
            string Alamat = string.Empty;
            string Email = string.Empty;
            string Jenis = string.Empty;
            string Slogan = string.Empty;

            Kode = TbKodeSup.Text;
            Nama = TbNmToko.Text;
            Alamat = TbAlamat.Text;
            Email = TbEmail.Text;
            Jenis = TbJenToko.Text;
            Slogan = TbSlogan.Text;

            //Pemanggil Fungsi
            Koneksi_ADO cn = new Koneksi_ADO();
            string sql = "Insert into suplier values (" + Convert.ToInt32(TbKodeSup.Text) + ", '" + TbNmToko.Text + "', '" + TbAlamat.Text + "', '" + TbEmail.Text + "', '" + TbJenToko.Text + "', '" + TbSlogan.Text + "')";
            string Hasil = cn.KelasKoneksi_CRUD(sql);

            if (Hasil == "1")
            {
                Response.Write("<script language='javascript'>window.alert('Sukses Menyimpan Data !');window.location='../Suplier_Login.aspx';</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>window.alert('Gagal Menyimpan Data!');window.location='../SupReg.aspx';</script>");
            }
        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Registrasi.aspx");
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Login.aspx");
        }

    }
}