<%@ Page Title="" Language="C#" MasterPageFile="~/App/Layout.Master" AutoEventWireup="true" CodeBehind="cadastrarDisciplina.aspx.cs" Inherits="SchoolMaster.App.DisciplinaCadastrar" %>
<asp:Content ID="Content4" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="mainForm" runat="server">
     <asp:Table ID="DisciplinaTable" runat="server" HorizontalAlign="Center">
   <asp:TableRow  Font-Italic="True"  >
            <asp:TableCell ForeColor="#ffffff" >
               <h1 style="text-align: center">Bem Vindo  área de Cadastro</h1>
            </asp:TableCell>
        </asp:TableRow>
</asp:Table>
</asp:Content>
<asp:Content   ContentPlaceHolderID="bodyForm" ID="form" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDisciplina"  BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both" HorizontalAlign="Center">
        <EditItemTemplate>
            codigo:
            <asp:TextBox Text='<%# Bind("codigo") %>' runat="server" ID="codigoTextBox" /><br />
            nome:
            <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
            creditos:
            <asp:TextBox Text='<%# Bind("creditos") %>' runat="server" ID="creditosTextBox" /><br />
            limitfaltas:
            <asp:TextBox Text='<%# Bind("limitfaltas") %>' runat="server" ID="limitfaltasTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <FooterStyle BackColor="#063507" ForeColor="white" />
        <HeaderStyle BackColor="#063507"  ForeColor="white"/>
        <FooterTemplate>
            School Master - Cursos<br />
        </FooterTemplate>
        <HeaderTemplate>
            Novo Cadastro
        </HeaderTemplate>
        <InsertItemTemplate>
            codigo:
            <asp:TextBox Text='<%# Bind("codigo") %>' runat="server" ID="codigoTextBox" /><br />
            nome:
            <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
            creditos:
            <asp:TextBox Text='<%# Bind("creditos") %>' runat="server" ID="creditosTextBox" /><br />
            limitfaltas:
            <asp:TextBox Text='<%# Bind("limitfaltas") %>' runat="server" ID="limitfaltasTextBox" /><br />
            <asp:LinkButton runat="server" Text="Cadastrar" CommandName="Insert" ID="InsertButton" CausesValidation="True" BorderStyle="Outset" BorderWidth="1px" CssClass="formatButton"  />&nbsp;<asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" BorderStyle="Outset" BorderWidth="1px" CssClass="formatButtonCancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton runat="server" Text="Novo cadastro" CommandName="New" CssClass="formatButton" Height="10px"  ID="NewButton" Width="100px" CausesValidation="False" />
        </ItemTemplate>
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
    </asp:FormView>
    <asp:ObjectDataSource runat="server" ID="ObjectDisciplina" DataObjectTypeName="SchoolMaster.App.Context.DisciplinaClass" InsertMethod="cadastrar" OldValuesParameterFormatString="original_{0}" SelectMethod="consultarTodos" TypeName="SchoolMaster.App.Controllers.DisciplinaController"></asp:ObjectDataSource>
</asp:Content>

        
