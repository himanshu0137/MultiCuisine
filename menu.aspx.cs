using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;


public partial class menu : System.Web.UI.Page
{
    string s = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;
    int sizem;
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(s))
        {
            con.Open();
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
            using (SqlDataAdapter da = new SqlDataAdapter("select [Id],[name],[price],[description],[isveg] from [dbo].[MenuItems]", con))
            {
                DataTable t = new DataTable();
                da.Fill(t);
                for (int i = 0; i < sizem; i += 3)
                {
                    mi.InnerHtml += "<div class=\"gallery-grids\">";
                    for (int j = 0; j < 3; j++)
                    {
                        mi.InnerHtml += "<div class=\"gallery-grid";
                        if (j == 1)
                            mi.InnerHtml += " grid2";
                        mi.InnerHtml += string.Format("\"><a href=\"#\"><img src=\"images/menu/{0}.jpg\" alt=\"\" /><span>&#8377;<b>{1}</b></span></a><h4>{2}</h4><p>{3}</p><div class=\"gallery-button\"><a href=\"javascript:void(0)\" class=\"menuitem\"  id=\"{4}\" onclick=\"addtocart(this);\">Add</a></div></div>", t.Rows[i + j].Field<int>(0).ToString(), t.Rows[i + j].Field<int>(2), t.Rows[i + j].Field<string>(1), t.Rows[i + j].Field<string>(3), i + j + 1);
                    }
                    mi.InnerHtml += "</div><div class=\"clear\"> </div>";
                }
            }
        }
    }
    [WebMethod]
    public static bool addtocart(string a)
    {
        int x = Int32.Parse(a);
        bool k = false;
        List<int[]> ids = new List<int[]>();
        if (HttpContext.Current.Session["cart_item"] != null)
        {
            ids = (List<int[]>)HttpContext.Current.Session["cart_item"];
            foreach (int[] i in ids)
            {
                if (!i.Contains(x))
                {
                    k = true;
                }
                else{
                    k = false;
                    break;
                }
            }
            if (k)
            {
                int[] temp = new int[2] { x, 1 };
                ids.Add(temp);
            }
        }
        else
        {
            int[] temp = new int[2] { x, 1 };
            ids.Add(temp);
        }
        HttpContext.Current.Session["cart_item"] = ids;
        return true;
    }
}