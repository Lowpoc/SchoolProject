<%@ Page Title="Cadastrar Curso" Language="C#" MasterPageFile="~/App/Template.Master" AutoEventWireup="true" CodeBehind="cadastrarCurso.aspx.cs" Inherits="SchoolMaster.App.cadastrarCurso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="BlocoDoMeio" runat="server">
        <form runat="server" class="customform">
           <div class="s-8 l-5 center">
    <asp:FormView ID="FormCurso" runat="server" DataSourceID="ObjCurso"  BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both" HorizontalAlign="Center">
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
        <FooterStyle BackColor="#152732" ForeColor="white" />
        <HeaderStyle BackColor="#152732"  ForeColor="white"/>
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
            <div class="s-4 l-2 left">
            <asp:Button runat="server" Text="Cadastrar" CommandName="Insert" ID="InsertButton" CausesValidation="True"  CssClass="btn-cadastrar" />&nbsp;
             </div>
            <div class="s-4 l-2 right">
                <asp:Button runat="server" Text="Cancelar" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" BorderStyle="Outset" BorderWidth="1px"  CssClass="btn-cancelar" />
            </div>
        </InsertItemTemplate>
        <HeaderTemplate>
            Novo Cadastro
        </HeaderTemplate>
        <ItemTemplate>
            <asp:LinkButton runat="server" Text="Novo cadastro" CommandName="New" Height="10px"  ID="NewButton" Width="100px" CausesValidation="False" />
        </ItemTemplate>
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
    </asp:FormView>
               </div>
    </form>
        
    <asp:ObjectDataSource ID="ObjCurso" runat="server" DataObjectTypeName="SchoolMaster.App.Context.CursoClass" InsertMethod="cadastrar" OldValuesParameterFormatString="original_{0}" SelectMethod="consultarTodos" TypeName="SchoolMaster.App.Controllers.CursoController"></asp:ObjectDataSource>
</asp:Content>
