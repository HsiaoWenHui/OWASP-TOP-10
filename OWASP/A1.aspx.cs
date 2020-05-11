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
			String sql = "select p_money from member where p_account='" + TextBox1.Text + "'and p_password='" + TextBox2.Text + "'";
			SqlCommand command = new SqlCommand(sql, connection);

			Label2.Text = sql;

			try
			{
				String r = command.ExecuteScalar().ToString();
				Label1.Text = r;
			}
			catch (NullReferenceException a)
			{
				Label1.Text = "帳密不符";
			}




		}
	}
}