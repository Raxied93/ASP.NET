using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_Ujian_ADO
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Koneksi cn = new Koneksi();
            bool hasil;
            hasil = cn.kelaskonesi_login(TbUsername.Text, TbPass.Text);

            if (hasil == true)
            {
                Session["Username_ID"] = TbUsername.Text;

                if (DdlLoginAs.SelectedItem.Text == "Contestan")
                {
                    Response.Write("<script language='javascript'>window.alert('Yeay... Berhasil Login!');window.location='../IT_Revolution_List.aspx';</script>");
                }
                else if (DdlLoginAs.SelectedItem.Text == "Voter")
                {
                    Response.Write("<script language='javascript'>window.alert('Cant Login as Voter because the Website is Demo Version !');window.location='../Login.aspx';</script>");
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
            Response.Redirect("~/Sign_Up.aspx");
        }
    }
}