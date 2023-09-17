<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="finalweb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1<>Books Are Great!</h1>
                <h2>LOGIN</h2>
                <hr />
                <fieldset style="border:1.5px solid; border-radius:35px; text-align:left; padding-left:35px; height:100px; width:300px;">
                    <legend>Login</legend>
            <table >
                <tr>
                    <td>Username :</td>
                    <td>
                        <asp:TextBox ID="TxtUsername" runat="server" placeholder="Enter username"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password :</td>
                    <td>
                        <asp:TextBox ID="Txtpwd" runat="server" placeholder="Enter password" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="ButLogin" runat="server" Text="Login" OnClick="ButLogin_Click" /></td>
                    <td>
                        <asp:Literal ID="LitMsg" runat="server"></asp:Literal></td>
                </tr>
            </table>
                    </fieldset>
                </center>
        </div>
    </form>
</body>
</html>
