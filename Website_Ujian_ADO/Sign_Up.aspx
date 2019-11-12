<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_Up.aspx.cs" Inherits="Website_Ujian_ADO.Sign_Up" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Sign Up </title>
    <link href="Tambahan/Tampilan.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <br /><br /><br /><br /><br /><br />
    <div class="regist">
        <h3> Registration </h3>
        <table>
            <tr>
                <td> <asp:Label ID="LblUsername" runat="server" Text="Username"></asp:Label> </td>
                <td> <asp:TextBox ID="TbUsername" runat="server" Width="370px"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="LblPass" runat="server" Text="Password"></asp:Label> </td>
                <td> <asp:TextBox ID="TbPass" runat="server" TextMode="Password" Width="370px"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label> </td>
                <td> <asp:TextBox ID="TbEmail" runat="server" Width="370px"></asp:TextBox></td>
            </tr>
            <tr>
                <td> <asp:Label ID="LblCountry" runat="server" Text="Country"></asp:Label> </td>
                <td> <asp:TextBox ID="TbCountry" runat="server" Width="370px"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="LblIT_rev" runat="server" Text="IT Revolution"></asp:Label> </td>
                <td> <asp:TextBox ID="TextAreaIT_Rev" TextMode="multiline" Columns="50" Rows="5"  runat="server" MaxLength="600"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" align="center"> 
                        <asp:Button ID="ButtonBack" runat="server" Text="Back to Sign In !" 
                        onclick="ButtonBack_Click" /> 
                        <asp:Button ID="BtnLogin" runat="server" Text="Register Now !" 
                        onclick="BtnLogin_Click" /> 
               </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>