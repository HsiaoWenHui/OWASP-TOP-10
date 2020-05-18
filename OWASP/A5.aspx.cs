using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OWASP
{
	public partial class A5 : System.Web.UI.Page
	{
		
		string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["OWASPConnectionString"].ConnectionString;
		
		protected void Page_Load(object sender, EventArgs e)
		{
			SqlConnection connection = new SqlConnection(s_data);
			connection.Open();
			string id = "";
			
			try
			{
				id = Request.QueryString["id"] as string;
				String sql2 = "select p_money from member where people_id='" + id + "'";
				SqlCommand command2 = new SqlCommand(sql2, connection);
				String r = command2.ExecuteScalar().ToString();
				Label1.Text = r;
				
			}
			catch (Exception a)
			{
				Label1.Text = "";
			}

		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlConnection connection = new SqlConnection(s_data);
			connection.Open();
			String sql = "select * from member where p_account='" + TextBox1.Text + "'and p_password='" + TextBox2.Text + "'";
			SqlCommand command = new SqlCommand(sql, connection);
			SqlDataReader sdr = command.ExecuteReader();
			while (sdr.Read())
			{
				Label1.Text = "登入成功!! ";
				string id = sdr[0].ToString();
				
				Response.Redirect(string.Format("A5.aspx?id={0}", id));
				
			}

			
			

		}
	}
}