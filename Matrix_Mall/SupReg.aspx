<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="SupReg.aspx.cs" Inherits="Matrix_Mall.SupReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Suplier Sign Up
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <!-- Bagian CSS -->
    <link href="CSS/Tampilan.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
<br /><br /><br />
    <div class="Content">
        <h3> Suplier Register </h3>
        <table border="1">
            <tr>
                <td> <asp:Label ID="LbKodeSup" runat="server" Text="Kode Supliier"></asp:Label> </td>
                <td> <asp:TextBox ID="TbKodeSup" runat="server"></asp:TextBox> </td> <!-- Kode Suplier == Password Login-->
            </tr>
            <tr>
                <td> <asp:Label ID="LbNmToko" runat="server" Text="Nama Toko"></asp:Label> </td>
                <td> <asp:TextBox ID="TbNmToko" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td> <asp:Label ID="LbAlamat" runat="server" Text="Alamat Toko"></asp:Label> </td>
                <td> <asp:TextBox ID="TbAlamat" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="LblEmail" runat="server" Text="Email Toko"></asp:Label> </td>
                <td> <asp:TextBox ID="TbEmail" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="LblJenToko" runat="server" Text="Jenis Toko"></asp:Label> </td>
                <td> <asp:TextBox ID="TbJenToko" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="LbSlogan" runat="server" Text="Slogan Toko"></asp:Label> </td>
                <td> <asp:TextBox ID="TbSlogan" runat="server" TextMode="MultiLine"></asp:TextBox> </td>
            </tr>

            <!-- Bagian Button -->
            <tr>
                <td> <asp:Button ID="BtnLogin" runat="server" Text="Input Data !" onclick="BtnLogin_Click"/> </td>
                <td> <asp:Button ID="ButtonBack" runat="server" Text="Back to Login" onclick="ButtonBack_Click"/> </td>
            </tr>
            <tr>
                <td colspan=2> <asp:Button ID="BtnReg" runat="server" Text="Register As Customer" onclick="BtnReg_Click"/> </td>
            </tr>
        </table>

    </div>
</asp:Content>
