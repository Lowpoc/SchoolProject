<%@ Page Title="Consultar Curso" Language="C#" MasterPageFile="~/App/Template.Master" AutoEventWireup="true" CodeBehind="consultarCurso.aspx.cs" Inherits="SchoolMaster.App.consultarCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BlocoDoMeio" runat="server">
    <form runat="server">
        <div class="s-4 l-6 center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectCurso" DataKeyNames="_cursoID" AllowPaging="True">
        <Columns>
            <asp:CommandField HeaderText="Selecione" ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/App/public/Imagens/selected.png" />
            <asp:BoundField DataField="_codigo" HeaderText="Coluna" SortExpression="_codigo"></asp:BoundField>
            <asp:BoundField DataField="_descricao" HeaderText="Descri&#231;&#227;o" SortExpression="_descricao"></asp:BoundField>
            <asp:BoundField DataField="_valorCurso" HeaderText="Valor" SortExpression="_valorCurso" DataFormatString="{0:C3}"></asp:BoundField>
            <asp:BoundField DataField="_cursoID" HeaderText="CodigoCurso" SortExpression="_cursoID"></asp:BoundField>
            <asp:BoundField DataField="qtdAlunos" HeaderText="qtd Alunos" SortExpression="qtdAlunos"></asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" HeaderText="Funcao" ButtonType="Image" DeleteImageUrl="~/App/public/Imagens/remove.png"></asp:CommandField>
        </Columns>
        <HeaderStyle BackColor="#152732" ForeColor="white"></HeaderStyle>
    </asp:GridView>
            <asp:ObjectDataSource runat="server" ID="ObjectCurso" DeleteMethod="remover"  SelectMethod="consultarTodos" TypeName="SchoolMaster.App.Controllers.CursoController">
                <DeleteParameters>
                    <asp:Parameter Name="_cursoID" Type="Int32"></asp:Parameter>
                </DeleteParameters>
            </asp:ObjectDataSource>
    </div>
  </form>
</asp:Content>