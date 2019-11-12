using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;

namespace Website_Ujian_ADO
{
    public class Koneksi
    {

        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader reader;
        public string status = string.Empty;
        ////menyimpan conn string dari web config
        //public string strconn = WebConfigurationManager.ConnectionStrings["KoneksiAdoNetClient"].ConnectionString;
        //public string KelasKoneksi_Open()
        //{

        //    conn = new SqlConnection(strconn);
        //    conn.Open();
        //    if (conn.State == System.Data.ConnectionState.Open)
        //    {
        //        status = "Connection Open";
        //    }
        //    else
        //    {
        //        status = "Connection Close";
        //    }
        //    return status;
        //}


        public string KelasKoneksi_CRUD(string SqlCmd)
        {
            String strconn = WebConfigurationManager.ConnectionStrings["KoneksiAdoNetClient"].ConnectionString;
            conn = new SqlConnection(strconn);
            string sql = SqlCmd;
            cmd = new SqlCommand(sql, conn);

            try
            {
                conn.Open();
                //cmd.ExecuteScalar();
                cmd.ExecuteNonQuery();
                status = "1";
            }
            catch (SqlException sqlEx)
            {
                status = "Terjadi error Ketika Insert: " + sqlEx.Message;
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
            return status;
        }

        internal List<string> KelasKoneksi_CRUD(string p, string p_2)
        {
            throw new NotImplementedException();
        }

        ////method execute scalar
        //public string Exec_scalar(string SqlCmd)
        //{
        //    status = string.Empty;

        //    String strconn = WebConfigurationManager.ConnectionStrings["KoneksiAdoNetClient"].ConnectionString;
        //    conn = new SqlConnection(strconn);
        //    string sql = SqlCmd;
        //    cmd = new SqlCommand(sql, conn);

        //    try
        //    {
        //        conn.Open();
        //        status = Convert.ToString(cmd.ExecuteScalar());
        //        return status;
        //    }
        //    catch (Exception ex)
        //    {
        //        status = "Terdapat error : " + ex.Message + "";
        //    }
        //    finally
        //    {
        //        conn.Close();
        //    }

        //    return status;
        //}

        //Fungsi untuk Insert
        public string ClassKoneksi_Insert(string usernm, string pswd, string email, string country, string IT_Rev )
        {
            String strconn = WebConfigurationManager.ConnectionStrings["KoneksiAdoNetClient"].ConnectionString;
            conn = new SqlConnection(strconn);
            string sql = "insert into Tb_Contestan values ('" + usernm + "', '" + pswd + "', '" + email + "', '" + country + "', '" + IT_Rev + "', 'Contestant')";
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

        ////Bagian Dataset
        public DataSet getDataSet(string sql)
        {
            DataSet ds = new DataSet();
            String strconn = WebConfigurationManager.ConnectionStrings["KoneksiAdoNetClient"].ConnectionString;
            conn = new SqlConnection(strconn);
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            try
            {
                conn.Open();
                da.Fill(ds);
            }
            catch (Exception)
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

        //internal List<string> KelasKoneksi_SelectGlobal(string p, string p_2)
        //{
        //    throw new NotImplementedException();
        //}

        //internal object email_otomatis(string email, string isipesan)
        //{
        //    throw new NotImplementedException();
        //}

        //fungsi untuk login
        public bool kelaskonesi_login(string username, string pswd)
        {
            String strconn = WebConfigurationManager.ConnectionStrings["KoneksiAdoNetClient"].ConnectionString;
            conn = new SqlConnection(strconn);
            string sql = "Select Username_Contestant, Password_Contestant from Tb_Contestan where Username_Contestant = '" + username + "' and Password_Contestant = '" + pswd + "'";
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

    }
}