<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Member's_Profile.aspx.cs" Inherits="Website_Ujian_ADO.Member_s_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Member's Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

    <!-- Menu Select (Menampilkan data pada Database -->
    <div>
        <h2> Member's Profile </h2>
        <!-- Textbox Fans -->
        <asp:TextBox ID="TbFans" placeholder=" Masukkan Fans Anda " autocomplete="off" runat="server"></asp:TextBox>
        <asp:Button ID="BtnFans" runat="server" Text=" Input Data! " />
        <!-- Batas Textbox -->

        <asp:SqlDataSource ID="SqlDataSourceMenampilkanTable" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KoneksiAdoNetClient %>"
        SelectCommand="select * from Tb_Contestan"
        ProviderName="<%$ ConnectionStrings:KoneksiAdoNetClient.ProviderName %>" >
        </asp:SqlDataSource>

        <asp:ListView ID="ListViewLogin" DataSourceID="SqlDataSourceMenampilkanTable" runat="server">
            <LayoutTemplate>
                <table border="1px solid">
                    <thead>
                        <th> ID_Login </th>
                        <th> Username </th>
                        <th> Password </th>
                        <th> Country </th>
                        <th> IT Revolution </th>
                        <th> Status User </th>
                    </thead>
                        <asp:PlaceHolder ID="ItemPlaceHolder" runat="server" />
                </table>
            </LayoutTemplate>
        
            <EmptyDataTemplate>
            </EmptyDataTemplate>

            <ItemTemplate>
                <tr>
                    <td style="padding-top:10px; text-align:center"> <%#Eval("ID_Contestant")%> </td>
                    <td style="padding-top:10px; text-align:center"> <%#Eval("Username_Contestant")%> </td>
                    <td style="padding-top:10px; text-align:center"> <%#Eval("Password_Contestant")%> </td>
                    <td style="padding-top:10px; text-align:center"> <%#Eval("Country")%> </td>
                    <td style="padding-top:10px; text-align:center"> <%#Eval("IT_Revolution")%> </td>                
                    <td style="padding-top:10px; text-align:center"> <%#Eval("Status_User")%> </td>
                    </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>

</asp:Content>
