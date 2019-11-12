<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="IT_Revolution_List.aspx.cs" Inherits="Website_Ujian_ADO.IT_Revolution_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
IT Revolution List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

    <!-- Menu Select (Menampilkan data pada Database -->
    <div>

        <asp:SqlDataSource ID="SqlDataSourceMenampilkanTable" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KoneksiAdoNetClient %>"
        SelectCommand="select * from Tb_Contestan"
        ProviderName="<%$ ConnectionStrings:KoneksiAdoNetClient.ProviderName %>" >
        </asp:SqlDataSource>

        <asp:ListView ID="ListViewLogin" DataSourceID="SqlDataSourceMenampilkanTable" runat="server">
            <LayoutTemplate>
                <h2> IT_Revolution Collection </h2>
                <table border="1px solid">
                    <thead>
                        <th> Username </th>
                        <th> Country </th>
                        <th> IT Revolution </th>
                        <th> Status User </th>
                        <th> Jumlah Fans </th> <!-- Belom Dibuat View -->
                    </thead>
                        <asp:PlaceHolder ID="ItemPlaceHolder" runat="server" />
                </table>
            </LayoutTemplate>
        
            <EmptyDataTemplate>
            </EmptyDataTemplate>

            <ItemTemplate>
                <tr>
                    <td style="padding-top:10px; text-align:center"> <%#Eval("Username_Contestant")%> </td>
                    <td style="padding-top:10px; text-align:center"> <%#Eval("Country")%> </td>
                    <td style="padding-top:10px; text-align:center"> <%#Eval("IT_Revolution")%> </td>                
                    <td style="padding-top:10px; text-align:center"> <%#Eval("Status_User")%> </td>
<%--                    <td style="padding-top:10px; text-align:center"> <%#Eval("Jumlah Fans")%> </td> <!-- Belom Dibuat View -->--%>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>

</asp:Content>