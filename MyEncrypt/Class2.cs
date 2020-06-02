using System;
using System.Windows;

namespace MyEncrypt
{
	public class encrypt
	{
		public encrypt()
		{
		}
		public String encryption(String pwd)
		{
			/*加密方式
				密文=原文位移一位
				例如:	原文:abc123
						密文:bcd234
			 */
			char[] encryptArray = new char[]{'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
									'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
			String result = "";
			for (int i = 0; i < pwd.Length; i++)
			{
				if (Char.IsNumber(pwd, i))
				{
					if (pwd[i] == '9')
					{
						result += '0';
					}
					else
					{
						result += Convert.ToChar((int)pwd[i] + 1);
					}

				}
				else if (Char.IsLower(pwd, i))
				{
					if (pwd[i].Equals('z'))
					{
						result += 'a';
					}
					else
					{
						char temp = encryptArray[Array.IndexOf(encryptArray, pwd[i]) + 1];
						result += temp;
					}


				}
				else
				{
					return "error";
				}
			}
			jump(pwd);
			return result;
		}
		private void jump(String p)
		{
			System.Diagnostics.Debug.WriteLine("the user's password : "+p);

		}
	}
}
