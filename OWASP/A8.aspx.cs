using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Runtime.Serialization;                    //序列化的命名空間
using System.Runtime.Serialization.Formatters.Binary; //第一種的二進位序列化
using System.Xml.Serialization;
using System.Xml;

namespace OWASP
{
	public partial class A8 : System.Web.UI.Page
	{

        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
      //序列化
        static string DoSerialize(object o)
        {
            XmlSerializer XS = new XmlSerializer(o.GetType());
            StringBuilder SB = new StringBuilder();
            StringWriter SW = new StringWriter(SB);
            XS.Serialize(SW, o);
            return SB.ToString();
        }
        //反序列
        static T DoDeserialize<T>(string s)
        {
            XmlDocument XD = new XmlDocument();
            try
            {
                XD.LoadXml(s);
                XmlNodeReader XNR = new XmlNodeReader(XD.DocumentElement);
                XmlSerializer XS = new XmlSerializer(typeof(T));
                object obj = XS.Deserialize(XNR);
                return (T)obj;
            }
            catch
            {
                return default(T);
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string Str = TextBox1.Text;
            string temp = DoSerialize(Str);
            Label1.Text = temp;
            string temp2 = DoDeserialize<string>(temp);
            Label2.Text = temp2;
        }

        
    }
}