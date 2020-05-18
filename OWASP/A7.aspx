<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A7.aspx.cs" Inherits="OWASP.A7"validateRequest="False" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div>
		<h1>OWASP Top 10 資安風險</h1>
		<h2>A7:2017 Cross-site scripting，XSS 跨網站指令碼</h2>
		<p>
			跨網站指令碼攻擊通常指利用網頁開發時留下的漏洞，攻擊者將惡意程式碼注入到網頁上，並將網頁使用釣魚郵件或用社群網站等媒介散佈，
				使得其他點擊連結的使用者在觀看網頁時就會受到影響這些惡意程式碼的攻擊，通常用於 HTML/JavaScript 或者其他使用者端的腳本語言。
				Reflected XSS 是其中一種，當使用者點擊一個經過設計的連結，就有可能被執行特定的 Script。
			XSS的重點描述及控制手法為：
		</p>
		<ul>
			
			<li>有三種XSS形式: Reflected XSS(Non-Persistent)、Stored XSS(Persistent)、DOM based XSS</li>
			<li>難以從web application上辨別或移除XSS</li>
			<li>最好的方式是縝密的code review，並找出所有使用者可以透過HTTP request輸入並且有HTML輸出的地方，</li>		
			<li>不受信任的資料不會以跟HTTP或JS相同的HTTP response傳輸</li>
			<li>當資料從server傳到client時，不受信任的資料必須被適當的加密以及HTTP response。不要假設從Server端傳送的資料是安全的，最好的方式就是一直檢查資料。</li>
			<li>在引入DOM時，必須使用以下API之一進行引入不受信任的數據</li>
			<ol>
			  <li>Node.textContent</li>
			  <li>document.createTextNode</li>
			  <li>Element.setAttribute(second parameter only)</li>
			</ol>
		</ul>

	</div>
    <form id="form1" runat="server">
        <div>
			<h3>Reflected XSS</h3>
			<p>因為 使用 Querystring 這種傳值方法會在 url 上顯示，攻擊者可以看到網頁的變數內容，當我們在 textbox 輸入＂dangerous＂並且按下 Submit 後，可以看到在 url 中出現變數 id＝dangerous。</p>
			<h4>- HTML Attribute Encoding -</h4>
			<p>攻擊者當然也可以輸入想執行的 Script，像是輸入 <br />
				< script > alert('You have been hacked') < / script >; <br />
				則會執行 Script 內容。這種 url 很容易被認出，攻擊者也可以利用 urlencode 將 Script 內容加密，亦會顯示一樣的結果。</p>
			<p>輸入 : %3Cscript%3Ealert(%27You%20have%20been%20hacked%27)%3B%3C%2Fscript%3E</p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
		    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
		    <p> 
			    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
		    </p>
			<asp:HyperLink NavigateUrl="~/A7-sol.aspx" runat="server" Text="見XSS解決方法" />
			
        </div>
		<div>
			<hr />
			目錄: <asp:HyperLink NavigateUrl="~/index.aspx" runat="server" Text="OWASP TOP 10 目錄" />
		</div>
		
    </form>
</body>
</html>
