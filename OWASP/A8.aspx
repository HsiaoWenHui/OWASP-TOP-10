<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A8.aspx.cs" Inherits="OWASP.A8" validateRequest="false"%>

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
		    <h2>A8:2017-Insecure Deserialization　不安全的反序列化弱點</h2>
			<p>當攻擊者提供竄改後的惡意物件進行反序列化，可能導致應用程式或 API 出現不安全的風險，例如：注入攻擊（Injection）、跨站腳本攻擊（XSS）、遠端程式碼執行。
        <h4>建議的控制措施為：</h4>
                </p>
            <ul>
				<li>不接受來自不信任來源的序列化物件。</li>
                <li>只允許原始資料型態進行反序列化。</li>
                <li>將序列化的物件加上數位簽章或進行加密，防止新增惡意物件或資料竄改。</li> 
                <li>記錄反序列化所發生的例外情況與失敗訊息。</li> 
                <li>監控反序列化，當用戶持續進行反序列化時，應啟動警告機制。</li>
			</ul>
        	
			
        </div>
		<div>
			<h4>範例</h4>
			<p>以下範例是將xml格式文字傳送給後端，進行序列化跟反序列，反序列之後可以看到只剩下文字</p>
			xml範例(要把空白刪掉): <br />	
			正常 : < summary > 反序列化成功< / summary >< param name="data">< /param> < returns>< /returns>
			<br />
			惡意攻擊 :< summary > < script>alert("入侵")< /script>  < / summary >< param name="data">< /param> < returns>< /returns>
			<br /> 
		</div>
        <div>
			<br />
			輸入上面範例xml:<asp:TextBox ID="TextBox1" runat="server" Width="1156px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="開始" /><br />
			<br />
			序列化結果:<asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
			反序列化結果:<asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
			<hr />
            <asp:HyperLink NavigateUrl="~/A9.aspx" runat="server" Text="next" /><br />
			目錄: <asp:HyperLink NavigateUrl="~/index.aspx" runat="server" Text="OWASP TOP 10 目錄" />
		</div>
    </form>
</body>
</html>
