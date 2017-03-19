<%@ Page Title="Cadastrar Curso" Language="C#" MasterPageFile="~/App/Layout.Master" AutoEventWireup="true" CodeBehind="cadastrarCurso.aspx.cs" Inherits="SchoolMaster.App.cadastrarCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainForm" runat="server">
    <asp:Table ID="CadastroCursoTable" runat="server" HorizontalAlign="Center">
   <asp:TableRow  Font-Italic="True"  >
            <asp:TableCell ForeColor="#ffffff" >
               <h1 style="text-align: center">Bem Vindo  área de Cadastro</h1>
            </asp:TableCell>
        </asp:TableRow>
</asp:Table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodyForm" runat="server">
    <asp:FormView ID="FormCurso" runat="server" DataSourceID="ObjCurso" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both" HorizontalAlign="Center">
        <EditItemTemplate>
            _codigo:
            <asp:TextBox Text='<%# Bind("_codigo") %>' runat="server" ID="_codigoTextBox" /><br />
            _descricao:
            <asp:TextBox Text='<%# Bind("_descricao") %>' runat="server" ID="_descricaoTextBox" /><br />
            _valorCurso:
            <asp:TextBox Text='<%# Bind("_valorCurso") %>' runat="server" ID="_valorCursoTextBox" /><br />
            _cursoID:
            <asp:TextBox Text='<%# Bind("_cursoID") %>' runat="server" ID="_cursoIDTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
       <EditRowStyle  />
        <FooterStyle />
        <HeaderStyle />
        <FooterTemplate>
            School Master - Cursos<br />
        </FooterTemplate>
        <InsertItemTemplate>
            Codigo : *
            <asp:TextBox Text='<%# Bind("_codigo") %>' runat="server" ID="_codigoTextBox" /><br />
            Descricao:
            <asp:TextBox Text='<%# Bind("_descricao") %>' runat="server" ID="_descricaoTextBox" /><br />
            Valor do Curso:
            <asp:TextBox Text='<%# Bind("_valorCurso") %>' runat="server" ID="_valorCursoTextBox" /><br />
            <asp:LinkButton runat="server" Text="Cadastrar" CommandName="Insert" ID="InsertButton" CausesValidation="True" CssClass="formatButton" />&nbsp;<asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" BorderStyle="Outset" BorderWidth="1px" CssClass="formatButton" />
        </InsertItemTemplate>
        <HeaderTemplate>
            Novo Cadastro
        </HeaderTemplate>
        <ItemTemplate>
            <asp:LinkButton runat="server" Text="Novo cadastro" CommandName="New" CssClass="formatButton" Height="10px"  ID="NewButton" Width="100px" CausesValidation="False" />
        </ItemTemplate>
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjCurso" runat="server" DataObjectTypeName="SchoolMaster.App.Context.CursoClass" InsertMethod="cadastrar" OldValuesParameterFormatString="original_{0}" SelectMethod="consultarTodos" TypeName="SchoolMaster.App.Controllers.CursoController"></asp:ObjectDataSource>
</asp:Content>
