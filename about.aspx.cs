using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class about : System.Web.UI.Page
{
    int sizet,sizem;
    string s = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;
    Random r = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(s))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand("select count(*) from [dbo].[Testimonials]", con))
            {
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        sizet = int.Parse(dr[0].ToString());
                    }
                }
            }
            int rInt = r.Next(1, sizet + 1);
            using (SqlDataAdapter da = new SqlDataAdapter("select [name],[description] from [dbo].[Testimonials] where [Id]=" + rInt.ToString(), con))
            {
                DataTable t = new DataTable();
                da.Fill(t);
                tm.InnerHtml = t.Rows[0].Field<string>(1);
                tmname.InnerHtml = " - " + t.Rows[0].Field<string>(0);
            }
            using (SqlCommand cmd = new SqlCommand("select count(*) from [dbo].[MenuItems]", con))
            {
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        sizem = int.Parse(dr[0].ToString());
                    }
                }
            }
            int[] rm = new int[3];
            rm[0] = r.Next(1, sizem + 1);
            rm[1] = r.Next(1, sizem + 1);
            rm[2] = r.Next(1, sizem + 1);
            for (int i = 0; i < 3; i++)
            {
                using (SqlDataAdapter da = new SqlDataAdapter("select [Id],[name],[description] from [dbo].[MenuItems] where [Id]=" + rm[i].ToString(), con))
                {
                    DataTable t = new DataTable();
                    da.Fill(t);
                    spm.InnerHtml += "<div class=\"special-grid\"><img src=\"images/menu/" + t.Rows[0].Field<int>(0).ToString() + ".jpg\" title=\"image\"/><a href=\"#spm\">" + t.Rows[0].Field<string>(1) + "</a><p>" + t.Rows[0].Field<string>(2) + "</p></div>";
                }
            }
        }
        spm.InnerHtml += "<div class=\"clear\"> </div>";
    }
}