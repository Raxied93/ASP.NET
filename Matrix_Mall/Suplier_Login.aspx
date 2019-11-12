<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Suplier_Login.aspx.cs" Inherits="Matrix_Mall.Suplier_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Login Suplier
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <!-- Bagian CSS -->
    <link href="CSS/Tampilan.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
        <br /><br /><br /><br />
        <div class="formClass">
        <h3> Login Suplier </h3>
        <table>
            <tr>
                <td> <asp:TextBox ID="TbNmToko" CssClass="input" placeholder="Nama Toko" autocomplete="off" runat="server" Width="185px"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:TextBox ID="TbKodeSup" CssClass="input" placeholder="Kode Suplier" TextMode="Password" runat="server" Width="185px"></asp:TextBox></td>
            </tr>

            <!-- Bagian Button -->
            <tr>
                <td align="center"> 
                    <asp:Button ID="BtnLogin" CssClass="button" runat="server" 
                        Text="Login disini !" Width="115px" onclick="BtnLogin_Click" /> </td>
            </tr>
            <tr>
                <td align="center"> 
                    <asp:Button ID="BtnCustLogin" CssClass="button" runat="server" 
                        Text="Login As Customer !" Width="115px" onclick="BtnCustLogin_Click" /> </td>
            </tr>
            <tr>
                <td align="center"> 
                    <asp:Button ID="BtnSupReg" CssClass="button" runat="server" 
                        Text="Register !" Width="115px" onclick="BtnSupReg_Click" /> </td>
            </tr>

        </table>
        </div>
</asp:Content>
