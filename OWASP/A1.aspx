<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A1.aspx.cs" Inherits="OWASP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div>
		<h1>OWASP Top 10 資安風險</h1>
		<h2>A2:2017-Injection　注入攻擊</h2>
		<p>
			這除了是 2017 版的第一名，同時也是 2013 版的第一名。廣為人知的是 SQL Injection，通常會發生在惡意程式輸入時；主要是因為沒有經過妥善的檢查、排除符號等，所造成的弱點風險。

可能造成洩漏機敏資料（A3），讓竊取者可讀取資料庫，或進而發生作業系統漏洞，執行系統指令，甚至讓主機被竊取者接管等等。
				<h4>建議的控制措施為：</h4>
		</p>
		<ul>
			<li>使用 Prepared Statements、Stored Procedures。</li>
			<li>嚴密檢查所有輸入值。</li>
			<li>控管錯誤訊息僅管理者可以閱讀。</li>
			<li>使用過濾字串函數過濾非法的字元。</li>
			<li>控管資料庫及網站使用者帳號權限。</li>
		</ul>

	</div>
    <form id="form1" runat="server">
        <div>
			<h2>SQL injection 範例</h2>
			<p>帳號輸入:123</p>
			<p>密碼輸入: 'OR '1'='1 即可不需密碼就能查餘額</p>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OWASPConnectionString %>" SelectCommand="SELECT * FROM [people]"></asp:SqlDataSource>
        帳號：<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        <br />
        密碼：<asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        您的餘額：<asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
        <br />
		背後程式的SQL搜尋語法:
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <div>
			<hr />
			<asp:HyperLink NavigateUrl="~/A2.aspx" runat="server" Text="next" /><br />
			<asp:HyperLink NavigateUrl="~/index.aspx" runat="server" Text="OWASP TOP 10 目錄" />
		</div>
    </form>

</body>
</html>
