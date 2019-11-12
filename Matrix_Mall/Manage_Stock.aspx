<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Manage_Stock.aspx.cs" Inherits="Matrix_Mall.Manage_Stock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div>
            <asp:ListView ID="ListViewMasterStock" runat="server" >
                <LayoutTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th  scope="col"> Kode Produk </th>
                                <th  scope="col"> Kode Suplier </th>
                                <th  scope="col"> Jenis Produk </th>
                                <th  scope="col"> Nama Produk </th>
                                <th  scope="col"> Harga Produk </th>
                                <th  scope="col"> Status Produk </th>
                                <th  scope="col"> Action </th>
                            </tr>
                        </thead>
                     <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
                    </table>

                </LayoutTemplate>
                <EmptyDataTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl="#"/>
                </EmptyDataTemplate>
                <ItemTemplate>
                    <tr>
                        <td>  </td>
                        <td>  </td>
                        <td>  </td>
                        <td>  </td>
                        <td>  </td>
                        <td>  </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
            <%--<asp:SqlDataSource ID="SqlDataSourceStock" runat="server" ConnectionString="<%$ ConnectionStrings:KoneksiAdoNet %>" SelectCommand="SELECT [Id_Barang], [Member_ID], [Nama_Barang], [Keterangan], [TglDatang], [Status_Barang], [Jumlah], [PathFile] FROM [Stock]"></asp:SqlDataSource>--%>
        </div>
        <div class="">
            <button id="btnbwh" type="button" class="btn btn-secondary">Insert</button>
        </div>
        <div id="update" style="display: none">  <br />          
            <div class="form-group">
                <asp:Label ID="Label8" CssClass="col-sm-4" runat="server" Font-Bold="true" Text="Pilih Status Barang : "></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownListUpdateStatus" CssClass="form-control" Width="100px" runat="server">
                    <asp:ListItem Value="1">Tampil</asp:ListItem>
                    <asp:ListItem Value="2">Tidak Tampil</asp:ListItem>
                </asp:DropDownList>
                
                    <br />
                    <asp:Button ID="BtnUpdate" runat="server" CssClass="btn btn-success" Text="Update" />              
            </div>
        </div>
        <div id="insert" style="display: none">
        <div class="form-group">
        <asp:Label ID="Label5" CssClass="col-sm-4" runat="server" Font-Bold="true" Text="Nama Barang"></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="TxtNamaBarang" class="form-control" runat="server" autocomplete="off"></asp:TextBox>           
            </div>       
        </div>
        <div class="form-group">
        <asp:Label ID="Label2" CssClass="col-sm-4" runat="server" Font-Bold="true" Text="Tgl Barang Masuk"></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="TxtTgl" class="form-control" runat="server" autocomplete="off"></asp:TextBox>       
            </div>       
        </div>
        <div class="form-group">
        <asp:Label ID="Label3" CssClass="col-sm-4" runat="server" Font-Bold="true" Text="Keterangan Barang"></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="TxtKet" class="form-control" runat="server" autocomplete="off"></asp:TextBox>       
            </div>       
        </div>
        <div class="form-group">
        <asp:Label ID="Label4" CssClass="col-sm-4" runat="server" Font-Bold="true" Text="Status Barang"></asp:Label>
            <div class="col-sm-8">
                <asp:DropDownList ID="DropDownListStatusBarang" Class="form-control" runat="server">
                    <asp:ListItem Value="0" text="Select a Value"></asp:ListItem>
                    <asp:ListItem Value="1">Tampil</asp:ListItem>
                    <asp:ListItem Value="2">Tidak Tampil</asp:ListItem>
                </asp:DropDownList>   
            </div>       
        </div>
        <div class="form-group">
        <asp:Label ID="Label6" CssClass="col-sm-4" runat="server" Font-Bold="true" Text="Jumlah Barang"></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="TxtJumlah" class="form-control" runat="server" autocomplete="off"></asp:TextBox>    
            </div>       
        </div>
        <div class="form-group">
            <asp:Label ID="Label7" CssClass="col-sm-4" runat="server" Font-Bold="true" Text="Upload Gambar Barang"></asp:Label>
             <div class="col-sm-8">
                 <asp:FileUpload ID="FileUploadGambar" runat="server" />
             </div>
        </div>
        <div class="form-group">
             <div class="col-sm-8">
                 <asp:Button ID="Simpan" CssClass="btn btn-success" runat="server" Text="Simpan"/>
            </div>
        </div>
        </div>
    </div>
</asp:Content>