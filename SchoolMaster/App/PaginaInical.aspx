<%@ Page Title="Pagina Home" Language="C#" MasterPageFile="~/App/Layout.Master" AutoEventWireup="true" CodeBehind="PaginaInical.aspx.cs" Inherits="SchoolMaster.App.WebForm1" %>
<asp:Content ID="Header" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="menu" ContentPlaceHolderID="mainForm" runat="server">
<asp:Table ID="Home" runat="server" HorizontalAlign="Center">
   <asp:TableRow  Font-Italic="True"  >
            <asp:TableCell ForeColor="#ffffff" >
               <h1 style="text-align: center">Bem Vindo ao sistema School Master</h1>
            </asp:TableCell>
        </asp:TableRow>
</asp:Table>
</asp:Content>
