using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace OWASP
{
	public partial class A6 : System.Web.UI.Page
	{
		string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["OWASPConnectionString"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{
			
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlConnection connection = new SqlConnection(s_data);
			connection.Open();
			string id = "";
			id = Request.QueryString["id"] as string;
			String sql2 = "select p_money from member where people_id='" + id + "'";
			SqlCommand command2 = new SqlCommand(sql2, connection);
			String r = command2.ExecuteScalar().ToString();
			Label1.Text = r;
		}
	}
}