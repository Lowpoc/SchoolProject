<%@ Page Title="" Language="C#" MasterPageFile="~/App/Layout.Master" AutoEventWireup="true" CodeBehind="consultarAlunos.aspx.cs" Inherits="SchoolMaster.App.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainForm" runat="server">
    <asp:Table ID="ConsultaAlunoTable" runat="server" HorizontalAlign="Center">
   <asp:TableRow  Font-Italic="True"  >
            <asp:TableCell ForeColor="#ffffff" >
               <h1 style="text-align: center">Bem Vindo  área de Consulta</h1>
            </asp:TableCell>
        </asp:TableRow>
</asp:Table>
</asp:Content>
<asp:Content  ContentPlaceHolderID="bodyForm" runat="server">
    <asp:GridView ID="ListaDeAlunos" runat="server" DataSourceID="ObjectAluno" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="_nome" HeaderText="Nome do Aluno" SortExpression="_nome" />
            <asp:BoundField DataField="_cpf" HeaderText="CPF" SortExpression="_cpf"></asp:BoundField>
            <asp:BoundField DataField="_datanascimento" HeaderText="Data de Nascimento" SortExpression="_datanascimento"></asp:BoundField>
            <asp:BoundField DataField="_mgp" HeaderText="Media Geral" SortExpression="_mgp"></asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectAluno" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="consultsarTodos" TypeName="SchoolMaster.App.Controllers.AlunoController"></asp:ObjectDataSource>
</asp:Content>
