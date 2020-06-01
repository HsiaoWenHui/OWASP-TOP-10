<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A9.aspx.cs" Inherits="OWASP.A9" %>

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
		    <h2>A9:2017-Using Components with Known Vulnerabilities　使用已知弱點套件</h2>
			<p>當攻擊者提供竄改後的惡意物件進行反序列化，可能導致應用程式或 API 出現不安全的風險，例如：注入攻擊（Injection）、跨站腳本攻擊（XSS）、遠端程式碼執行。
                系統使用的外部元件或函式庫尚未更新至最新的版本（Stable Release），且該元件或函式庫已具有弱點，攻擊者便可利用其弱點進行攻擊。
                <h4>建議的控制措施為：</h4>
				
                </p>
            <ul>
				<li>識別所有使用到的第三方元件及其版本。</li>
                <li>定期檢視所使用元件的公開安全資訊，以確保接收到第三方元件的安全訊息。</li>
                <li>將序列化的物件加上數位簽章或進行加密，防止新增惡意物件或資料竄改建立安全政策，指導第三方元件的使用原則，例如：需要了解其安全性、通過安全性測試才得以使用。</li> 

			</ul>
        </div>
        <div>
			<h2>第三方元件 範例</h2>
			<h5>利用第三方套件來對密碼進行加密，該套件同時會偷偷在console中秀出原文密碼</h5>
			<p>帳號輸入:123</p>
            帳號：<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            加密後為：<asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
        </div>
        <div>
			<hr />
            <asp:HyperLink NavigateUrl="~/A10.aspx" runat="server" Text="next" /><br />
			目錄: <asp:HyperLink NavigateUrl="~/index.aspx" runat="server" Text="OWASP TOP 10 目錄" />
		</div>
    </form>
</body>
</html>
