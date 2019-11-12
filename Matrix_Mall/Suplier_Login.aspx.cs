using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matrix_Mall
{
    public partial class Suplier_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string Nama = string.Empty;
            string Kode = string.Empty;

            Nama = TbNmToko.Text;
            Kode = TbKodeSup.Text;

            Koneksi_ADO cn = new Koneksi_ADO();
            string sql = "Select nama_toko, kode_suplier from suplier where nama_toko = '" + TbNmToko.Text + "' and kode_suplier = " + Convert.ToInt32(TbKodeSup.Text) + " ";
            bool hasil;
            hasil = cn.kelaskonesi_loginAll(sql);

            if (hasil == true)
            {
                Session["Username_ID"] = TbKodeSup.Text;

                Response.Write("<script language='javascript'>window.alert('Yeay Suskes Login !');window.location='../Insert_Update_Stock.aspx';</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>window.alert('Gagal Login !');window.location='../Suplier_Login.aspx';</script>");
            }
        }

        protected void BtnCustLogin_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Login.aspx");
        }

        protected void BtnSupReg_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/SupReg.aspx");
        }
    }
}