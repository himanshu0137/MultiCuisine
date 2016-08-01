using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    int sizef,sizet;
    string s = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;
    Random r = new Random();
    protected static string Truncate(string value)
    {
        if (string.IsNullOrEmpty(value)) return value;
        return value.Length <= 100 ? value : (value.Substring(0, 100) + "...");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(s))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand("select count(*) from [dbo].[Facts]", con))
            {
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        sizef = int.Parse(dr[0].ToString());
                    }
                }
            }
            int rInt = r.Next(1, sizef + 1);
            using (SqlCommand cmd = new SqlCommand("select [fact] from [dbo].[Facts] where [Id]=" + rInt.ToString(), con))
            {
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        rfact.InnerHtml = dr[0].ToString();
                    }
                }
            }
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
            int rtm1, rtm2;
            if (sizet % 2 == 0)
            {
                rtm1 = r.Next(1, sizet / 2);
                rtm2 = r.Next(sizet / 2 + 1, sizet + 1);
            }
            else
            {
                rtm1 = r.Next(1, (sizet - 1) / 2);
                rtm2 = r.Next((sizet - 1) / 2 + 1, sizet + 1);
            }
            using (SqlDataAdapter da = new SqlDataAdapter("select [name],[description] from [dbo].[Testimonials] where [Id]=" + rtm1.ToString() + "or [Id]=" + rtm2.ToString(), con))
            {
                DataTable t = new DataTable();
                da.Fill(t);
                tm1.InnerHtml = Truncate(t.Rows[0].Field<string>(1)) + " - <label>" + t.Rows[0].Field<string>(0) + "</lable>";
                tm2.InnerHtml = Truncate(t.Rows[1].Field<string>(1)) + " - <label>" + t.Rows[1].Field<string>(0) + "</lable>";
            }
        }
    }

}
