<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A6.aspx.cs" Inherits="OWASP.A6" validateRequest="false"%>

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
		    <h2>A6: 2017-Security Misconfiguration　不安全的組態設定</h2>
			<p>系統的安全性取決於應用程式、伺服器，及平台的設定，若缺少適當的設定，可能導致敏感性資訊外洩，進而容易遭受入侵或攻擊。系統的設定也要與版本和漏洞配合，才能確保系統安全無虞。
                <h4>建議的控制措施為：</h4>
                </p>
            <ul>
				<li>Web server : </li>
				<ol>
					<li>建議關閉不必要的 Port、服務、功能、帳號、權限…</li>
                    <li>建議移除預設帳號、頁面、開源套件中的預設後台功能…</li> 
                    <li>關閉目錄瀏覽(Directory Listing)</li>
                    <li>協定越新越好，建議使用 TLS v1.2</li>
                    <li>並關閉加密較弱的 TLS v1.1、TLS v1.0、SSLv3、SSLv2…</li>
                    <li>避免使用較弱的加密法或Hash</li>

				</ol>
                    
                <li>Web application : </li>
				<ol>
					<li>關閉debug模式</li>
                    <li>客製錯誤頁面處理:錯誤處理會向使用者顯示過度資訊、錯誤訊息或程式碼</li>
                    <li>移除套件預設頁面</li>
                    <li>cookies 加上屬性 HttpOnly</li>
                    <li>cookies 加上屬性 Secure</li>
                    <li>設定robots.txt 限縮 Google搜尋範圍，Google可能會搜出網站中機敏頁面</li>
                    <li>關閉支援不影響正常維運的 HTTP Method (DELETE \ PUT)</li>
				</ol>
			</ul>
        </div>
        <div>
			<h3>範例 : 當有錯誤時顯示過多的程式資訊</h3>
	
			<asp:Button ID="Button1" runat="server" Text="測試" OnClick="Button1_Click" />
			<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
			<hr />
            資料來源:<asp:HyperLink NavigateUrl="https://ithelp.ithome.com.tw/articles/10217607" runat="server" Text="A6- Security Misconfiguration" /><br />
			<asp:HyperLink NavigateUrl="~/A7.aspx" runat="server" Text="next" /><br />
            目錄: <asp:HyperLink NavigateUrl="~/index.aspx" runat="server" Text="OWASP TOP 10 目錄" />
		</div>
    </form>
</body>
</html>
