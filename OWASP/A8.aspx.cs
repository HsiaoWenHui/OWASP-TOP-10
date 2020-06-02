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
namespace OWASP
{
	public partial class A8 : System.Web.UI.Page
	{
        public string filename = Application.StartupPath + "\\Myobject.bin";
        public A8()
        {
            InitializeComponent();
        }
        [Serializable]//加上這行表示此類別可被序列化
        private class MyObject
        {
            public string strName = "bill";                                   //公用
            public string strUrl = "http://www.dotblogs.com.tw/hung-chin";  //公用
            [NonSerialized]//不列入序列化與反序列化動作中
            public int iAge = 28;
            public string GetName()
            { return strName; }
        }
        //序列化
        private void button1_Click(object sender, System.EventArgs e)
        {
            MyObject obj = new MyObject();
            obj.iAge = 38;
            obj.strName = TextBox1.Text;
            BinaryFormatter formatter = new BinaryFormatter();
            FileStream fs = new FileStream(filename, FileMode.Create);
            formatter.Serialize(fs, obj);
            fs.Close();
            MessageBox.Show("序列化成功");
        }
        //反序列化
        private void button2_Click(object sender, EventArgs e)
        {
            if (File.Exists(filename))
            {
                BinaryFormatter formmater = new BinaryFormatter();
                FileStream fs = new FileStream(filename, FileMode.Open);
                MyObject obj = (MyObject)formmater.Deserialize(fs);
                fs.Close();
                //因為iAge有設NonSerialized 禁止反序列化，所以讀出的值為0
                MessageBox.Show("name=" + obj.GetName() + Environment.NewLine + "age=" + obj.iAge + Environment.NewLine + "Url=" + obj.strUrl);
            }
            else
            {
                MessageBox.Show("找不到檔案");
            }
        }

       
    }
}