using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyEncrypt;

namespace OWASP
{
	public partial class A9 : System.Web.UI.Page
	{
		String pwd = "";
		encrypt encryptLib;
		protected void Page_Load(object sender, EventArgs e)
		{
			encryptLib = new encrypt() { };

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			
			pwd = TextBox1.Text;
			Label1.Text = encryptLib.encryption(pwd);
		}
	}
}