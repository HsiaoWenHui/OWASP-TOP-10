<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A1.aspx.cs" Inherits="OWASP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
        sql :
        <asp:Label ID="Label2" runat="server" Text="'OR '1'='1"></asp:Label>
    </form>
</body>
</html>
