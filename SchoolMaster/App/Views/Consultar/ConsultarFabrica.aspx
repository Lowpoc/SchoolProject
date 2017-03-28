<%@ Page Title="" Language="C#" MasterPageFile="~/App/Template.Master" AutoEventWireup="true" CodeBehind="consultarFabrica.aspx.cs" Inherits="SchoolMaster.App.ConsultarFabrica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BlocoDoMeio" runat="server">
    <div class="s-6 l-10">
    <form runat="server">
        <fieldset class="s-4 l-3 center">
            <legend>Consulta de Fabricas</legend>
            <div class="s-2 l-3">
                <asp:DropDownList ID="ListaEstado" runat="server" DataSourceID="ObjectFabrica" EnableTheming="True"  DataTextField="DS_ESTADO" DataValueField="DS_ESTADO">
                    <asp:ListItem Selected="True" Value="-1">Selecione</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="s-2 l-3">
                <asp:DropDownList ID="ListaFabrica" runat="server" DataSourceID="ObjectFabrica" DataTextField="DS_Fabrica" DataValueField="DS_Fabrica">
                    <asp:ListItem Value="-1" Selected="True">selecione</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="s-2 l-3 right">
                <asp:Button ID="buscar" runat="server" Text="Filtrar" />
              </div>
        </fieldset>
        <div class="s-4 l-6 center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectFabrica" DataKeyNames="ID_FABRICA">
        <Columns>
            <asp:BoundField DataField="ID_FABRICA" HeaderText="Numero Registro" SortExpression="ID_FABRICA"></asp:BoundField>
            <asp:BoundField DataField="DS_Fabrica" HeaderText="Nome" SortExpression="DS_Fabrica"></asp:BoundField>
            <asp:BoundField DataField="DS_Endereco" HeaderText="Endereco" SortExpression="DS_Endereco"></asp:BoundField>
            <asp:BoundField DataField="NU_CNPJ" HeaderText="CNPJ" SortExpression="NU_CNPJ"></asp:BoundField>
            <asp:BoundField DataField="NU_TELEFONE" HeaderText="TELEFONE" SortExpression="NU_TELEFONE"></asp:BoundField>
            <asp:BoundField DataField="DS_CIDADE" HeaderText="CIDADE" SortExpression="DS_CIDADE"></asp:BoundField>
            <asp:BoundField DataField="DS_ESTADO" HeaderText="ESTADO" SortExpression="DS_ESTADO"></asp:BoundField>
            <asp:BoundField DataField="qtdProdutos" HeaderText="qtdProdutos" SortExpression="qtdProdutos"></asp:BoundField>
            <asp:CommandField HeaderText="Função" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
            </div>
        </form>
        </div>
    <asp:ObjectDataSource runat="server" ID="ObjectFabrica" SelectMethod="consultarFiltro" TypeName="SchoolMaster.App.Controllers.FabricaController" DeleteMethod="DeleteEmpresa"  UpdateMethod="AtualizarFabrica">
        <DeleteParameters>
            <asp:Parameter Name="ID_FABRICA" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="" Name="DS_ESTADO" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="" Name="DS_FABRICA" Type="String"></asp:Parameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="DS_Fabrica" Type="String"></asp:Parameter>
            <asp:Parameter Name="DS_Endereco" Type="String"></asp:Parameter>
            <asp:Parameter Name="NU_CNPJ" Type="String"></asp:Parameter>
            <asp:Parameter Name="NU_TELEFONE" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ID_FABRICA" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="DS_CIDADE" Type="String"></asp:Parameter>
            <asp:Parameter Name="DS_ESTADO" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

