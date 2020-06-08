<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="OWASP.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<h1>OWASP TOP 10 </h1>
			<p>目前釋出最新的版本為 2017，有別於 2013 版本，新增了 3 個全新的資安風險，包括常見的「A4－XML 漏洞」、「A8－不安全的反序列化漏洞」，以及「A10－紀錄與監控不足」等風險。</p>
            <img src="https://storage.googleapis.com/sec-static/img/75ab1e73-ac12-474c-aca5-1f320308f7f8.png" alt="比較圖" title="比較圖" width="800px" height="500px"/>
            
			<ul>目錄
				<li><asp:HyperLink NavigateUrl="~/A1.aspx" runat="server" Text="A1" /></li>
                <li><asp:HyperLink NavigateUrl="~/A2.aspx" runat="server" Text="A2" /></li>
                <li><asp:HyperLink NavigateUrl="~/A3.aspx" runat="server" Text="A3" /></li>
                <li><asp:HyperLink NavigateUrl="~/A4.aspx" runat="server" Text="A4" /></li>
                <li><asp:HyperLink NavigateUrl="~/A5.aspx?id=0" runat="server" Text="A5" /></li>
                <li><asp:HyperLink NavigateUrl="~/A6.aspx" runat="server" Text="A6" /></li>
                <li><asp:HyperLink NavigateUrl="~/A7.aspx" runat="server" Text="A7" /></li>
                <li><asp:HyperLink NavigateUrl="~/A8.aspx" runat="server" Text="A8" /></li>
                <li><asp:HyperLink NavigateUrl="~/A9.aspx" runat="server" Text="A9" /></li>
                <li><asp:HyperLink NavigateUrl="~/A10.aspx" runat="server" Text="A10" /></li>
			</ul>
            資料來源: <asp:HyperLink NavigateUrl="https://secbuzzer.co/post/116" runat="server" Text="資安人須知的 OWASP TOP 10 資安風險來源" />
        </div>
    </form>
</body>
</html>
