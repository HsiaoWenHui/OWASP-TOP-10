using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace OWASP
{
	public partial class A2 : System.Web.UI.Page
	{

		protected void Page_Load(object sender, EventArgs e)
		{
			UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

		}
		protected void Application_Start(object sender, EventArgs e)
		{
			ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
				new ScriptResourceDefinition
				{
					Path = "~/Scripts/jquery-3.5.1.js"
				});
		}
		string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["OWASPConnectionString"].ConnectionString;
		//protected void Button1_Click(object sender, EventArgs e)
		//{

		//	SqlConnection connection = new SqlConnection(s_data);
		//	connection.Open();
		//	String sql = "select p_money from member where p_account='" + TextBox1.Text + "'and p_password='" + TextBox2.Text + "'";
		//	SqlCommand command = new SqlCommand(sql, connection);
		//	string strconn = ConfigurationManager.ConnectionStrings["sqlconn"].ConnectionString;
		//	using (SqlDataReader read = command.ExecuteReader())
		//	{
		//		if (read.Read()) //如果reader.Read()的結果不為空, 則說明輸入的使用者名稱存在   
		//		{
		//			int errortimes = read.GetInt32(read.GetOrdinal("ErrorTimes")); //讀取錯誤登陸次數
		//			DateTime errortime = read.GetDateTime(read.GetOrdinal("attach_start"));//讀取到的錯誤時間
		//			string passwored = TextBox2.Text;
		//			string account = TextBox1.Text;
		//			//int errortimecount = DateTime.Now.Subtract(errortime).Minutes;//Subtract 是以當前時間的分鐘數減去錯誤時間的分鐘
		//			if (errortimes > 3)
		//			//判斷錯誤次數是否大於3,則開始禁止登入
		//			{
		//				if (DateTime.Now.Subtract(errortime).Minutes > 15)//當前時間與Error時間超過15分鐘 執行清空登陸Error
		//				{
		//					using (SqlConnection con = new SqlConnection(strconn))
		//					{
		//						using (SqlCommand com = new SqlCommand())
		//						{
		//							com.CommandText =
		//								"update Account set attach_start=getdate(), ErrorTimes=0 where AccountID=@username";
		//							com.Parameters.Add(new SqlParameter("username", userTex.Text));
		//							com.Connection = con;
		//							con.Open();
		//							com.ExecuteNonQuery();

		//						}
		//					}
		//				}
		//				else
		//				{
		//					Label1.Text = "密碼錯誤！";
		//					using (SqlConnection con = new SqlConnection(strconn))
		//					{
		//						using (SqlCommand com = new SqlCommand())
		//						{
		//							com.CommandText = "update Account set attach_start=getdate(), ErrorTimes=ErrorTimes+1 where AccountID='" +
		//											   userTex.Text.Trim() + "'";
		//							com.Connection = con;
		//							con.Open();
		//							com.ExecuteNonQuery();

		//						}
		//					}
		//				}
		//			}
		//			else {
		//				try
		//				{
		//					String r = command.ExecuteScalar().ToString();
		//					Label1.Text = r;
		//				}
		//				catch (NullReferenceException a)
		//				{
		//					errortimes++;
		//					Label1.Text = "帳密不符,錯誤次數:" + errortimes;
		//				}
		//			}

		//		}
				

		//	}

		//}
	}
}
