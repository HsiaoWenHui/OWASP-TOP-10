<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A5.aspx.cs" Inherits="OWASP.A5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>

	<form id="form1" runat="server">
		<div>
			<h1>OWASP Top 10 資安風險</h1>
			<h2>A5:2017-Broken Access Control 無效的存取控管</h2>
			<p>
				此項合併了在 2013 容易被混淆的 A4 與 A7，將存取控管擴大定義。攻擊者可透過網址或 HTML 頁面，繞過存取控制；或將自己的權限提升自管理者，進而攻破公司系統等。
               建議的控制措施為：
			</p>
			<ul>
				<li>避免將物件直接暴露給使用者。</li>
				<li>驗證所有物件是否為正確。</li>
				<li>預設禁止任何存取行為，並先判斷使用者是否有權限。</li>
			</ul>
			<h3>Insecure direct object references 不安全的直接物件參考</h3>
			<p>直接物件參考的意思就是，伺服器僅靠著客戶端所輸入的資訊就去存取相對應的資料或物件，並回傳給客戶端。所以使用者可以替換參數來直接存取未授權的資料</p>
			<h4>範例</h4>
			<p>攻擊者可以由URL中發現id編號，可以簡單判斷出"若更改url中的ID就能直接存取未授權的資料"例如可以將id=1改成id=2 即能查看id=2的使用者餘額</p>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OWASPConnectionString %>" SelectCommand="SELECT * FROM [people]"></asp:SqlDataSource>
			帳號：123<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			<br />
			密碼：123<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
			<br />
			<br />
			<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
			<br />
			您的餘額：<asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
			<br />
			<h3>Missing function level access control 缺少功能級別的存取控制</h3>
			<p>惡意的入侵者可能會嘗試著去試你的網站上其他網頁的網址，而如果你不對每個頁面進行存取控制權限的要求的話，如果直接被攻擊者嘗試到你的網址，那他可以直接癱瘓你的整台主機。</p>
			<p>防範方式：可以先預設每個網頁都要辨識身分後才能存取，並且做好認證管制，並確認每個頁面都有做好權限的控制，沒有按鈕可以連結過去的頁面並不代表攻擊者不會手動連過去，要特別注意這一點。</p>
			<h4>範例: <asp:HyperLink NavigateUrl="~/A5-1.aspx" runat="server" Text="本網站公開資料" /></h4>
			
		
		</div>
		<hr />
		資料來源:
		<asp:HyperLink NavigateUrl="https://ithelp.ithome.com.tw/articles/10209447" runat="server" Text="Access Control Flaws - Insecure Direct Object References 1" />
		<asp:HyperLink NavigateUrl="https://mmdays.com/2013/12/11/owasp_top_10/" runat="server" Text="Access Control Flaws - Insecure Direct Object References 1" />
		<br />
		目錄: <asp:HyperLink NavigateUrl="~/index.aspx" runat="server" Text="OWASP TOP 10 目錄" />
	</form>
	
</body>
</html>
