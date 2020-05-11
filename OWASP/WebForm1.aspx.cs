using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OWASP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["OWASPConnectionString"].ConnectionString;
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(s_data);
            connection.Open();
            String sql = "select p_money from people where p_account='" + TextBox1.Text + "'and p_password='" + TextBox2.Text + "'";
            SqlCommand command = new SqlCommand(sql,connection);
            Label2.Text = sql;
            String r = command.ExecuteScalar().ToString();
            Label1.Text = r;
        }
        
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}