using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    string s = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sq = "INSERT INTO [dbo].[User] ([name],[email],[phone],[description]) VALUES (@name,@email,@phone,@desc)";
        using (SqlConnection con = new SqlConnection(s))
        {

            SqlCommand cmd = new SqlCommand(sq, con);
            con.Open();
            cmd.Parameters.AddWithValue("@name",userName.Value);
            cmd.Parameters.AddWithValue("@phone", userPhone.Value);
            cmd.Parameters.AddWithValue("@email", userEmail.Value);
            cmd.Parameters.AddWithValue("@desc", userMsg.Value);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), "toast", "$.extend(true, $.simplyToast.defaultOptions,{'align': 'center'});$.simplyToast('Thank you for Contacting Us', 'success');", true);
    }
}