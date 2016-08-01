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

public partial class cart : System.Web.UI.Page
{
    List<int[]> items = new List<int[]>{};
    string s = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;
    string n = "";
    int ts = 0;
    public void createtable(int[] qty = null)
    {
        items = (List<int[]>)Session["cart_item"];
        if (qty != null)
        {
            for (int w = 0; w < qty.Length; w++)
            {
                items[w][1] = qty[w];
            }
        }
        foreach (int[] i in items)
        {
            n += i[0].ToString() + ",";
        }
        n = n.Substring(0, n.Length - 1);
        content.InnerHtml = "<table class='table table-striped table-bordered table-hover table-condensed'><tr><th>S. No.</th><th>Item Name</th><th>Quantity</th><th>Price</th></tr>";
        using (SqlConnection con = new SqlConnection(s))
        {
            con.Open();
            using (SqlDataAdapter da = new SqlDataAdapter("select [name],[price] from [dbo].[MenuItems] where [Id] in (" + n + ")", con))
            {
                DataTable t = new DataTable();
                da.Fill(t);
                for (int i = 0; i < items.Count; i++)
                {
                    content.InnerHtml += string.Format("<tr><td>{0}</td><td>{1}</td><td><input type='text' class='qty' value='{3}'></td><td class='price'>{2}</td></tr>", i + 1, t.Rows[i].Field<string>(0), t.Rows[i].Field<int>(1)*items[i][1],items[i][1]);
                    ts += t.Rows[i].Field<int>(1)*items[i][1];
                }
            }
        }
        content.InnerHtml += "<tr><td colspan='3' class='text-right'>Total</td><td id='total'>" + ts.ToString() + "</td></tr>";
        content.InnerHtml += "</table>";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cart_item"] != null)
        {
            createtable();
        }
        else
            tt.InnerHtml =  "<center><h1>No Items<h1></center>";
    }
    [WebMethod]
    public static void total(string[] itemno)
    {
        
        int[] x = new int[itemno.Length];
        List<int[]> temp = new List<int[]>();
        temp = (List<int[]>)HttpContext.Current.Session["cart_item"];
        for(int i = 0;i<itemno.Length;i++)
        {
            temp[i][1] = int.Parse(itemno[i]);
        }
        HttpContext.Current.Session["cart_item"] = temp;
    }
}