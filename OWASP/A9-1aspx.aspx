<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A9-1aspx.aspx.cs" Inherits="OWASP.A9_1aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<h1>這裡是第三方套件私人頁面，偷偷存透過套件加密的原始密碼。</h1>
        </div>

    	<asp:Table ID="Table1" runat="server" Height="207px" Width="204px">
		</asp:Table>
		<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="142px" Width="387px">
			<ItemTemplate>
				pwd:
				<asp:Label ID="pwdLabel" runat="server" Text='<%# Eval("pwd") %>' />
				<br />
<br />
			</ItemTemplate>
		</asp:DataList>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OWASPConnectionString %>" SelectCommand="SELECT [pwd] FROM [hacker_pwd]"></asp:SqlDataSource>

    </form>
</body>
</html>
