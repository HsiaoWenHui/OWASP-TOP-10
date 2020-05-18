<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A3.aspx.cs" Inherits="OWASP.A3" %>

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
		    <h2>A3:2017-Sensitive Data Exposure　機敏資料外洩</h2>
			<p>當資料未加密、或使用脆弱的金鑰時，容易使得密碼被攻破，造成機敏資料外洩的風險，將重要資料暴露在危險之中。常見於網路應用程式對於資料的保護不足，若駭客取得這些金融資訊、個人資料，即可偽造 / 竊取身分，或進行其他的犯罪行為。
                建議的控制措施為：
                </p>
            <ul>
				<li>備份檔、開發版本不應出現於正式機上。</li>
                <li>使用完善的 Cookie Session 保護機制。</li>
                <li>軟體中已經被識別的機敏資料，於實作階段應考量於傳輸時、儲存時、備份後，採用加密作法。</li> 
                <li>使用國際機構驗證且未遭破解的演算法，不使用自行創造加密方式。</li> 
                <li>盡可能使用該演算法支援的最大金鑰長度。應對金鑰進行適當保護，金鑰應定期更換。</li>  
			</ul>
        </div>
        <div>
			<hr />
			目錄: <asp:HyperLink NavigateUrl="~/index.aspx" runat="server" Text="OWASP TOP 10 目錄" />
		</div>
    </form>
</body>
</html>
