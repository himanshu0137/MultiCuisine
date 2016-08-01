using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class feedback : System.Web.UI.Page
{
    string s = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitfb(object sender, EventArgs e)
    {
        string sq = "INSERT INTO [dbo].[User] ([name],[email],[description]) VALUES (@name,@email,@desc)";
        using (SqlConnection con = new SqlConnection(s))
        {

            SqlCommand cmd = new SqlCommand(sq, con);
            con.Open();
            cmd.Parameters.AddWithValue("@name", userName.Value);
            cmd.Parameters.AddWithValue("@email", userEmail.Value);
            cmd.Parameters.AddWithValue("@desc", userMsg.Value);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        sq = "INSERT INTO [dbo].[Testimonials] ([name],[description]) VALUES (@name,@desc)";
        using (SqlConnection con = new SqlConnection(s))
        {

            SqlCommand cmd = new SqlCommand(sq, con);
            con.Open();
            cmd.Parameters.AddWithValue("@name", userName.Value);
            cmd.Parameters.AddWithValue("@desc", userMsg.Value);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), "toast", "$.extend(true, $.simplyToast.defaultOptions,{'align': 'center'});$.simplyToast('Thank you for your Feedback', 'success');", true);
    }
}