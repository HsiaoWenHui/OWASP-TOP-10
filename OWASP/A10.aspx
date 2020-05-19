<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A10.aspx.cs" Inherits="OWASP.A10" %>

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
		    <h2>A10:2017-Insufficient Logging & Monitoring　紀錄與監控不足風險</h2>
			<p>系統未記錄或記錄不足夠的訊息，
				例如：未記錄來自應用程式與 API 的可疑活動；遇到可疑活動時，未建立即時有效率的處理流程等。<br />
				因為紀錄和監控不足，一旦爆發資安事件就無法立即處理解決，而讓駭客有機可乘，進一步攻擊系統非法竄改、存取或銷毀系統的資料，能達成目的且不被及時發現。
               <h4>建議的控制措施為：</h4>
                </p>
            <ul>
				<li>確保登錄、存取失敗、驗證失敗的訊息都能被完整記錄，並保留足夠的用戶資訊，以辨別可疑或惡意行為。</li>
                <li>確保高額交易能有完整的審計訊息（audit trail），以防被竄改或刪除。</li>
                <li>建立有效的監控與警告機制，使可疑活動在短時間內能夠被發現及應對。</li> 
			</ul>
        </div>
        <div>
			<hr />
			目錄: <asp:HyperLink NavigateUrl="~/index.aspx" runat="server" Text="OWASP TOP 10 目錄" />
		</div>
    </form>
</body>
</html>
