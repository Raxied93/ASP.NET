<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Management_Produk.aspx.cs" Inherits="Matrix_Mall.Management_Produk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Manage Product
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    &nbsp;&nbsp;&nbsp;
    <fieldset>
        <legend>Menu Management</legend>
        <asp:Repeater ID="rptMenu" runat="server" 
            onitemdatabound="rptMenu_ItemDataBound" 
            onitemcommand="rptMenu_ItemCommand">
            <HeaderTemplate>
                <table border="1">
                    <tr align="center">
                        <th> Kode Produk </th>
                        <th> Kode Suplier </th>
                        <th> Jenis Produk </th>
                        <th> Nama Produk </th>
                        <th> Harga Produk </th>
                        <th> Status Produk </th>
                        <th> Action </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><asp:Label ID="lblName" runat="server"></asp:Label></td>
                    <td><asp:Label ID="Label4" runat="server"></asp:Label></td>
                    <td><asp:Label ID="lblPrice" runat="server"></asp:Label></td>
                    <td><asp:Label ID="lblDescription" runat="server"></asp:Label></td>
                    <td><asp:Label ID="Label1" runat="server"></asp:Label></td>
                    <td><asp:Label ID="Label2" runat="server"></asp:Label></td>
                    <td>
                        <asp:Button ID="btnEdit" CommandName="EDIT" Text="Edit" runat="server"></asp:Button>
                        <asp:Button ID="btnDelete" CommandName="DELETE" Text="Delete" runat="server"></asp:Button>
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr style="background:grey;">
                    <td><asp:Label ID="lblName" runat="server"></asp:Label></td>
                    <td><asp:Label ID="Label3" runat="server"></asp:Label></td>
                    <td><asp:Label ID="lblPrice" runat="server"></asp:Label></td>
                    <td><asp:Label ID="lblDescription" runat="server"></asp:Label></td>
                    <td><asp:Label ID="Label1" runat="server"></asp:Label></td>
                    <td><asp:Label ID="Label2" runat="server"></asp:Label></td>
                    <td>
                        <asp:Button ID="btnEdit" CommandName="EDIT" Text="Edit" runat="server"></asp:Button>
                        <asp:Button ID="btnDelete" CommandName="DELETE" Text="Delete" runat="server"></asp:Button>
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </fieldset>
    <asp:LinkButton ID="linkPrevious" runat="server" > Prev </asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblCurrentPage" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="linkNext" runat="server"> Next </asp:LinkButton>
</asp:Content>
