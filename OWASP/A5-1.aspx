<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A5-1.aspx.cs" Inherits="OWASP.A5_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            這是命名為A5-1頁面，並透過A5的連結過來，可以合理的懷疑尚有A5-2頁面，因此直接更改URL就可以非授權的存取到其他頁面
        </div>
    </form>
</body>
</html>
