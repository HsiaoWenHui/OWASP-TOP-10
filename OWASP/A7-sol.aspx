<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A7-sol.aspx.cs" Inherits="OWASP.A3_sol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<h1>OWASP Top 10 資安風險</h1>
			<h2>A7:2017 Cross-site scripting，XSS 跨網站指令碼</h2>
			<h3>XSS 漏洞防禦</h3>
			<ul>
				<li>在ASPX.Net 必須確認page validation沒有被關起來</li>
				<ul>
					<li>< Page validateRequest="False" / > 不能是false</li>
				</ul>
				<li>>.Net 4.0框架不允許validate被關起來，若想關掉必須在web.config中設定到2.0版本</li>
				<ul>
					<li>< httpRuntime requestValidationMode="2.0" /></li>
				</ul>
			</ul>
			<p>
				測試語法: < script > alert('You have been hacked') < / script > 

			</p>


            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
		    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
		    <p> 
			    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
		    </p>
			<asp:HyperLink NavigateUrl="~/A7.aspx" runat="server" Text="回A7" />
        </div>
    </form>
</body>
</html>
