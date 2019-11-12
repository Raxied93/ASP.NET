using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matrix_Mall
{
    public partial class Insert_Update_Stock : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Insert_Click(object sender, EventArgs e)
        {
            // Deklarasi Variabel
            string kode = string.Empty;
            string jenis = string.Empty;
            string nama = string.Empty;
            string harga = string.Empty;

            kode = Tb_KodeSup.Text;
            jenis = Tb_JenProduk.Text;
            nama = Tb_Nama.Text;
            harga = Tb_Harga.Text;
            
            //Pemanggil Fungsi

            //Pemanggil Fungsi
            //Koneksi_ADO cn = new Koneksi_ADO();
            //string Hasil = cn.KelasKoneksi_InserStock(kode, jenis, nama, harga);

            //if (Hasil == "1")
            //{
            //    Response.Write("<script language='javascript'>window.alert('Sukses Menyimpan Data !');window.location='../Login.aspx';</script>");
            //}
            //else
            //{
            //    Response.Write("<script language='javascript'>window.alert('Gagal Menyimpan Data!');window.location='../Regi.aspx';</script>");
            //}
        }
    }
}