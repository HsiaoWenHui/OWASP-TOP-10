using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OWASP
{
	public partial class A7 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string id = Request.QueryString["id"] as string;
			if (id == null)
				Label1.Text = "NA";
			else
				Label1.Text = id;
		}
		protected void Button1_Click(object sender, EventArgs e) {
			string id = TextBox1.Text;
			Response.Redirect(string.Format("A7.aspx?id={0}", id));
		}
	}
}