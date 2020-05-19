<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A2.aspx.cs" Inherits="OWASP.A2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>CompareValidator Example</title>
</head>
<body>
	<div>
		<h1>OWASP Top 10 資安風險</h1>
		<h2>A2:2017-Broken Authentication　無效的身分驗證</h2>
		
		<p>
			
			發生 Broken Authentication 風險通常是脆弱的帳戶認證，或是採取了不安全的管理機制。例如：登入未加密、Session 無控管 Cookie 為保護等。這容易造成帳號 / 身分盜用，或身分認證機制無效化，讓有心人士可肆意在伺服器做任何新增修改刪除查詢，進而接管主機等。

			<h4>建議的控制措施為：</h4>
		</p>
		<ul>
			<li>使用完善的 Cookie Session 保護機制。</li>
			<li>不允許外部 Session。</li>
			<li>登入及修改資訊頁面使用 SSL 加密。</li>
			<li>設定完善的 Timeout 機制。</li>
			<li>多因素認證。</li>
			<li>驗證密碼強度及密碼定期更換機制。</li>
		</ul>

	</div>
	<form id="form1" runat="server">
		<div>
			<h3>多因素認證 : CompareValidator控制項</h3>
			<p>
				CompareValidator控制項是用來比較兩個輸入控制項之間的資料一致性的，同時也可以用來校驗控制項中內容的資料類型：如整形、字串型等。ControlToCompare和ControlToValidate屬性用來設置進行比較的兩個控制項。
			</p>

			Password：
			<asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
			Confirm：
			<asp:TextBox ID="TxtCfm" runat="server" TextMode="Password"></asp:TextBox>
			<asp:Button ID="Button2" runat="server" Text="Button" />
			<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Error！"
				ControlToValidate="TxtCfm" ControlToCompare="txtPwd"></asp:CompareValidator>

			<p>若密碼和驗證不一致時跳出提醒</p>
		</div>
		<div>
			<h3>驗證密碼強度 : RegularExpressionValidator控制項</h3>
			<p>
				RegularExpressionValidator控制項可以判斷用戶輸入的運算式是否正確，如電話號碼、郵編、URL等，
			ControlToValidate屬性選擇需要驗證的控制項，ValidationExpression屬性則編寫需要驗證的運算式的樣式，
				下面的例子就是一段校驗密碼長度的代碼。
			</p>
			請輸入6~12位密碼<asp:TextBox ID="txtPW" runat="server" /><br />
			<asp:RegularExpressionValidator ControlToValidate="txtPW"
				ValidationExpression="^\d{6,12}$" Display="Dynamic"
				ErrorMessage="密碼長度不正確" runat="server" /><br />
			<asp:Button ID="btnButton2" Text="傳送" runat="server" />

		</div>
		<div>
			<hr />
			<asp:HyperLink NavigateUrl="~/A3.aspx" runat="server" Text="next" /><br />
			<asp:HyperLink NavigateUrl="~/index.aspx" runat="server" Text="OWASP TOP 10 目錄" />
		</div>
		<%--<div>
			<h3>設定完善的 Timeout 機制 : 密碼錯誤次數鎖定</h3>
			<p>以下簡單實作密碼輸入錯誤3次鎖定1分鐘 正確資料:帳:123 密:123</p>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OWASPConnectionString %>" SelectCommand="SELECT * FROM [people]"></asp:SqlDataSource>
			帳號：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			<br />
			密碼：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
			<br />
			<br />
			<%--<asp:Button ID="Button1" runat="server" OnClick="Button1_Click " Text="Button" />
			<br />
			您的餘額：<asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
		</div>--%>
	</form>
</body>
</html>
