<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Registrasi.aspx.cs" Inherits="Matrix_Mall.Registrasi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Sign Up
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <!-- Bagian CSS -->
    <link href="CSS/Tampilan.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
<br /><br /><br />
    <div class="Content">
        <h3> Customer Register </h3>
        <table border="1">
            <tr>
                <td> <asp:Label ID="LblNama" runat="server" Text="Nama"></asp:Label> </td>
                <td> <asp:TextBox ID="TbNama" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="LbUsername" runat="server" Text="Username"></asp:Label> </td>
                <td> <asp:TextBox ID="TbUsername" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label> </td>
                <td> <asp:TextBox ID="TbEmail" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="LblAlamat" runat="server" Text="Alamat"></asp:Label> </td>
                <td> <asp:TextBox ID="TbAlamat" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="Lblpass" runat="server" Text="Password"></asp:Label> </td>
                <td> <asp:TextBox ID="TbPass" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
<%--            <tr>
                <td> <asp:Label ID="LblTglLahir" runat="server" Text="Tanggal Lahir"></asp:Label> </td>
                <td> <asp:TextBox ID="TbTglLahir" runat="server"></asp:TextBox> </td>
            </tr>--%>
            <tr>
                <td> <asp:Button ID="BtnLogin" runat="server" Text="Input Data !" onclick="BtnLogin_Click" /> </td>
                <td> <asp:Button ID="ButtonBack" runat="server" Text="Back to Login" onclick="ButtonBack_Click" /> </td>
            </tr>
            <tr>
                <td colspan=2> <asp:Button ID="BtnSupreg" runat="server" Text="Register As Suplier" onclick="BtnSupreg_Click" /> </td>
            </tr>
        </table>

    </div>
</asp:Content>
