using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matrix_Mall
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Koneksi_ADO cn = new Koneksi_ADO();
            bool hasil;
            hasil = cn.kelaskonesi_login(TbUsername.Text, TbPass.Text);

            if (hasil == true)
            {
                Session["Username_ID"] = TbUsername.Text;

                if (DdlLoginAs.SelectedItem.Text == "Admin")
                {
                    Response.Write("<script language='javascript'>window.alert('Can not Login as Admin !');window.location='../Login.aspx';</script>");
                }
                else if (DdlLoginAs.SelectedItem.Text == "Customer")
                {
                    Response.Write("<script language='javascript'>window.alert('Yeay... Berhasil Login!');window.location='../#.aspx';</script>");
                }
            }
            else
            {
                Response.Write("<script language='javascript'>window.alert('Gagal Login !');window.location='../Login.aspx';</script>");
            }
        }

        protected void BtnRegist_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Registrasi.aspx");
        }

        protected void BtnSupLogin_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Suplier_Login.aspx");
        }
    }
}