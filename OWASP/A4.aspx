<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A4.aspx.cs" Inherits="OWASP.A4" %>

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
		    <h2>A4:2017-XML External Entities (XXE) [NEW]　XML 外部處理器弱點</h2>
			<p>此項目為 2017 年新進榜，主要因為以 XML 為基礎的網路應用程式沒有做好管控權限，直接讀取外部資源提供的 XML 檔案。故攻擊者可以利用 XML 為基礎，讓系統讀取後，進行文件的共享、監聽內部網路、執行遠端城市，進而導致資料外洩，或系統被駭客接管。</p>
                建議的控制措施為：
            <ul>
				<li>避免將物件直接暴露給使用者。</li>
                <li>驗證所有物件是否為正確。</li>
                <li>預設禁止任何存取行為，並先判斷使用者是否有權限。</li>   
			</ul>
        </div>
    </form>
    <div>
			<hr />
			目錄: <asp:HyperLink NavigateUrl="~/index.aspx" runat="server" Text="OWASP TOP 10 目錄" />
		</div>
</body>
</html>
