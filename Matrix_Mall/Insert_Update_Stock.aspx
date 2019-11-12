<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Insert_Update_Stock.aspx.cs" Inherits="Matrix_Mall.Insert_Update_Stock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

<h3> Menu Insert / Update </h3> <br />
<div class="container">
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label2" runat="server" Text="Kode Suplier"></asp:Label>   
        </div>
        <div class="col-sm">
            <asp:TextBox ID="Tb_KodeSup" class="form-control" placeholder="Masukan Kode Suplier" runat="server"></asp:TextBox>  
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label3" runat="server" Text="Jenis Produk"></asp:Label>   
        </div>
        <div class="col-sm">
            <asp:TextBox ID="Tb_JenProduk" class="form-control" placeholder="Masukan Jenis Produk" runat="server"></asp:TextBox>  
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label7" runat="server" Text="Jenis Toko"></asp:Label>
        </div>
        <div class="col-sm">
            <asp:DropDownList ID="Ddl_JenProd" class="form-control" runat="server">
                <asp:ListItem>Restoran</asp:ListItem>
                <asp:ListItem>Stationary</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label4" runat="server" Text="Nama Produk"></asp:Label>   
        </div>
        <div class="col-sm">
            <asp:TextBox ID="Tb_Nama" class="form-control" placeholder="Masukan Nama Produk" runat="server"></asp:TextBox>  
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label5" runat="server" Text="Harga Produk"></asp:Label>   
        </div>
        <div class="col-sm">
            <asp:TextBox ID="Tb_Harga" class="form-control" placeholder="Masukan Harga Produk" runat="server"></asp:TextBox>  
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">
            <asp:Label ID="Label6" runat="server" Text="Status Produk"></asp:Label>   
        </div>
        <div class="col-sm"> 
            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                <asp:ListItem>Aktif</asp:ListItem>
                <asp:ListItem>Tidak Aktif</asp:ListItem>
            </asp:DropDownList>    
        </div>
    </div>

    <div class="row">
        <div align="center" class="col-sm">
            <br />
            <asp:Button class="btn btn-danger" ID="Btn_Insert" runat="server" Text="Insert" 
                onclick="Btn_Insert_Click" />
            <asp:Button class="btn btn-success" ID="Btn_Delete" runat="server" Text="Delete" />          
        </div>
    </div>
</div>

</asp:Content>