using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;


public class Koneksi_ADO
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader reader;
    public string status = string.Empty;
    String strconn = WebConfigurationManager.ConnectionStrings["KoneksiMatrix1"].ConnectionString;


    public string KelasKoneksi_open()
    {
        string strconn = WebConfigurationManager.ConnectionStrings["KoneksiMatrix1"].ConnectionString;
        conn = new SqlConnection(strconn);
        conn.Open();
        if (conn.State == System.Data.ConnectionState.Open)
        {
            status = "Connection Open";
        }
        else
        {
            status = "Connection Close";
        }
        return status;
    }

    //Fungsi slect global dengan arraylist
    public List<String> GlobalAr = new List<String>();
    public List<String> KelasKoneksi_SelectGlobal(string SqlCmd, string sub)
    {
        String strconn = WebConfigurationManager.ConnectionStrings["KoneksiMatrix1"].ConnectionString;
        conn = new SqlConnection(strconn);
        string sql = SqlCmd;
        cmd = new SqlCommand(sql, conn);
        SqlDataReader reader; //Menggunakan data reder untuk select dan reader

        GlobalAr.Clear();
        try
        {
            conn.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                if (sub == "1")
                {
                    GlobalAr.Add(reader["Id_Login"].ToString()); //0
                    GlobalAr.Add(reader["Username_Login"].ToString()); //1
                    GlobalAr.Add(reader["Password_Login"].ToString()); //2
                }
                else if (sub == "2")
                {
                    GlobalAr.Add(reader["Nama_Barang"].ToString());
                }

                else if (sub == "3")
                {
                    GlobalAr.Add(reader["Id_Akses"].ToString());
                }
                else if (sub == "4")
                {
                    GlobalAr.Add(reader["nama_barang"].ToString());
                }
                else if (sub == "5")
                {
                    GlobalAr.Add(reader["Member_ID"].ToString());
                }

            }
        }
        catch (SqlException ex)
        {
            status = "Terjadi Eror ketika Select: " + ex.Message;
            GlobalAr.Clear();
            GlobalAr.Add(status);
            // return ArrayLogin;
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }

        return GlobalAr;
    }


    //Fungsi CRUD (Update)
    public string KelasKoneksi_CRUD(string SqlCmd)
    {
        String strconn = WebConfigurationManager.ConnectionStrings["KoneksiMatrix1"].ConnectionString;
        conn = new SqlConnection(strconn);
        string sql = SqlCmd;
        cmd = new SqlCommand(sql, conn);

        try
        {
            conn.Open();
            cmd.ExecuteNonQuery();
            status = "1";
        }

        catch (SqlException sqlex)
        {
            status = "Terjadi Eror ketika Update: " + sqlex.Message;
        }

        finally
        {
            cmd.Dispose();
            conn.Close();
        }

        return status;
    }


    //Fungsi CRUD (Delete) 
    public string ClassKoneksi_CRUD(string SqlCmd)
    {
        String strconn = WebConfigurationManager.ConnectionStrings["KoneksiMatrix1"].ConnectionString;
        conn = new SqlConnection(strconn);
        string sql = SqlCmd;
        cmd = new SqlCommand(sql, conn);

        try
        {
            conn.Open();
            cmd.ExecuteNonQuery();
            status = "1";
        }

        catch (SqlException sqlex)
        {
            status = "Terjadi Eror ketika Delete: " + sqlex.Message;
        }

        finally
        {
            cmd.Dispose();
            conn.Close();
        }

        return status;
    }

    //Fungsi untuk CRUD (Insert)
    public string ClassKoneksi_Insert(string nm, string username, string pswd, string alamat, string email)
    {
        String strconn = WebConfigurationManager.ConnectionStrings["KoneksiMatrix1"].ConnectionString;
        conn = new SqlConnection(strconn);
        string sql = "insert into persons values ('" + nm + "', '" + username + "', '" + pswd + "', '" + alamat + "', '" + email + "', '" + DateTime.Now.ToShortDateString() + "')";
        cmd = new SqlCommand(sql, conn);

        try
        {
            conn.Open();
            cmd.ExecuteNonQuery();
            status = "1";
        }

        catch (SqlException sqlex)
        {
            status = "Terjadi Eror ketika Insert: " + sqlex.Message;
        }

        finally
        {
            cmd.Dispose();
            conn.Close();
        }

        return status;
    }

    //fungsi untuk login
    public bool kelaskonesi_login(string username, string pswd)
    {
        String strconn = WebConfigurationManager.ConnectionStrings["KoneksiMatrix1"].ConnectionString;
        conn = new SqlConnection(strconn);
        string sql = "Select Username, Pass_Person from persons where Username = '" + username + "' and Pass_Person = '" + pswd + "'";
        cmd = new SqlCommand(sql, conn);

        try
        {
            conn.Open();
            reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                return true;
            }
            else
            {
                return false;
            }
        }

        catch (SqlException) //Jika error gunakan "catch (SqlException)"
        {
            return false;
        }

        finally
        {
            cmd.Dispose();
            conn.Close();
        }
    }

    //fungsi untuk Seumua Login
    public bool kelaskonesi_loginAll(string SqlCmd)
    {
        String strconn = WebConfigurationManager.ConnectionStrings["KoneksiMatrix1"].ConnectionString;
        conn = new SqlConnection(strconn);
        string sql = SqlCmd;
        cmd = new SqlCommand(sql, conn);

        try
        {
            conn.Open();
            reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                return true;
            }
            else
            {
                return false;
            }
        }

        catch (SqlException) //Jika error gunakan "catch (SqlException)"
        {
            return false;
        }

        finally
        {
            cmd.Dispose();
            conn.Close();
        }
    }


    //Kelas Koneksi untuk insert Hak Akses
    //Fungsi untuk CRUD (Insert)
    public string ClassKoneksi_InsertSupli(int kd, string nmtoko, string alt, string mail, string jentok, string slog)
    {
        String strconn = WebConfigurationManager.ConnectionStrings["KoneksiMatrix1"].ConnectionString;
        conn = new SqlConnection(strconn);
        string sql = "insert into persons values (" + kd + ", '" + nmtoko + "', '" + alt + "', '" + mail + "', '" + jentok + "', '" + slog + "')";
        cmd = new SqlCommand(sql, conn);

        try
        {
            conn.Open();
            cmd.ExecuteNonQuery();
            status = "1";
        }

        catch (SqlException sqlex)
        {
            status = "Terjadi Eror ketika Insert: " + sqlex.Message;
        }

        finally
        {
            cmd.Dispose();
            conn.Close();
        }

        return status;
    }

    //insert stock
    public string KelasKoneksi_InsertStock(int MemberID, string NamaBarang, string TglDatang, string Keterangan, string statub, int jml, string path)
    {
        conn = new SqlConnection(strconn);
        string sql = "insert into Stock values (" + MemberID + ", '" + NamaBarang + "', '" + TglDatang + "', '" + Keterangan + "', '" + statub + "', " + jml + ", '" + path + "')";
        cmd = new SqlCommand(sql, conn);
        try
        {
            conn.Open();
            cmd.ExecuteNonQuery();
            status = "OK";
        }
        catch (Exception ex)
        {
            status = ex.Message;
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }
        return status;
    }

    ////method return with data table 
    //public DataSet getDataSet(string sql)
    //{
    //    DataSet ds = new DataSet();
    //    String strconn = WebConfigurationManager.ConnectionStrings["KoneksiAdoNet"].ConnectionString;
    //    conn = new SqlConnection(strconn);
    //    SqlDataAdapter da = new SqlDataAdapter(sql, conn);
    //    try
    //    {
    //        conn.Open();
    //        da.Fill(ds);
    //    }
    //    catch (Exception ex)
    //    {
    //        ds = null;
    //    }
    //    finally
    //    {
    //        conn.Close();
    //        conn.Dispose();
    //        da.Dispose();
    //    }

    //    return ds;
    //}


    //fungsi email (untuk email notifikasi pendaftaran berhasil) 
    public string email_otomatis(string e, string pesan)
    {
        string hasil = "";

        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
        smtpClient.UseDefaultCredentials = false;
        smtpClient.EnableSsl = true;
        smtpClient.Credentials = new System.Net.NetworkCredential("sportyday7@gmail.com", "Youtube2018");
        smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;

        MailMessage mailMessage = new MailMessage("sportyday7@gmail.com", e);
        mailMessage.Subject = "Test Email Notification";
        mailMessage.Body = pesan;
        mailMessage.IsBodyHtml = true;
        try
        {
            smtpClient.Send(mailMessage);
            hasil = "OK";
        }
        catch (Exception ex)
        {
            hasil = ex.ToString();
        }
        return hasil;
    }

    public DataSet getDataSet(string sql)
    {
        DataSet ds = new DataSet();
        String strconn = WebConfigurationManager.ConnectionStrings["KoneksiMatrix1"].ConnectionString;
        conn = new SqlConnection(strconn);
        SqlDataAdapter da = new SqlDataAdapter(sql, conn);
        try
        {
            conn.Open();
            da.Fill(ds);
        }
        catch (Exception ex)
        {
            ds = null;
        }
        finally
        {
            conn.Close();
            conn.Dispose();
            da.Dispose();
        }

        return ds;
    }

}