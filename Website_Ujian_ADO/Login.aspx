<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Website_Ujian_ADO.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Login Page </title>
    <!-- Bagian CSS -->
    <link href="Tambahan/Tampilan.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <br /><br /><br /><br /><br /><br />
        <div class="formClass">
        <h3> Login Page </h3>
        <table>
            <tr>
                <td> <asp:TextBox ID="TbUsername" CssClass="input" placeholder="Username" autocomplete="off" runat="server" Width="185px"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:TextBox ID="TbPass" CssClass="input" placeholder="Password" TextMode="Password" runat="server" Width="185px"></asp:TextBox></td>
            </tr>        
            <tr>
                <td align="center"> <asp:Label ID="LblLoginAs" runat="server" Text="Login As : "></asp:Label>
                <asp:DropDownList ID="DdlLoginAs" runat="server">
                    <asp:ListItem Value="Cont">Contestan</asp:ListItem>
                    <asp:ListItem Value="Vot">Voter</asp:ListItem>
                    </asp:DropDownList> </td>
            </tr>
            <tr>
                <td align="center"> <asp:Button ID="BtnLogin" CssClass="button" runat="server" Text="Login disini !" Width="100px" onclick="BtnLogin_Click" /> </td>
            </tr>
            <tr>
                <td align="center"> <asp:Button ID="BtnRegist" CssClass="button" runat="server" Text="Register !" Width="100px" onclick="BtnRegist_Click"/> </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
