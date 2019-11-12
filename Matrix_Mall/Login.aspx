<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Matrix_Mall.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Login Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <!-- Bagian CSS -->
    <link href="CSS/Tampilan.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
        <br /><br /><br />
        <div class="formClass">
        <h3> Login Customer </h3>
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
                    <asp:ListItem Value="Admin">Admin</asp:ListItem>
                    <asp:ListItem Value="Customer">Customer</asp:ListItem>
                </asp:DropDownList> </td>
            </tr>        
            <tr>
                <td align="center"> <asp:Button ID="BtnLogin" CssClass="button" runat="server" Text="Login disini !" Width="100px" onclick="BtnLogin_Click" /> </td>
            </tr>
            <tr>
                <td align="center"> <asp:Button ID="BtnSupLogin" CssClass="button" runat="server" 
                        Text="Login As Suplier !" Width="100px" onclick="BtnSupLogin_Click"/> </td>
            </tr>
            <tr>
                <td align="center"> <asp:Button ID="BtnRegist" CssClass="button" runat="server" Text="Register !" Width="100px" onclick="BtnRegist_Click"/> </td>
            </tr>

        </table>
        </div>
</asp:Content>
