<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SchoolMaster.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextNome" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextMatricula" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextData" runat="server"></asp:TextBox>
        <asp:Button ID="ButtonSubmit" runat="server" Text="Filtrar" />
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataRowStyle="Vazio" DataSourceID="teste">
            <Columns>
                <asp:BoundField DataField="_nome" HeaderText="_nome" SortExpression="_nome"></asp:BoundField>
                <asp:BoundField DataField="_cpf" HeaderText="_cpf" SortExpression="_cpf"></asp:BoundField>
                <asp:BoundField DataField="_datanascimento" HeaderText="_datanascimento" SortExpression="_datanascimento"></asp:BoundField>
                <asp:BoundField DataField="_mgp" HeaderText="_mgp" SortExpression="_mgp"></asp:BoundField>
                <asp:BoundField DataField="alunoid" HeaderText="alunoid" SortExpression="alunoid"></asp:BoundField>
                <asp:BoundField DataField="CursoID" HeaderText="CursoID" SortExpression="CursoID"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource runat="server" ID="teste" OldValuesParameterFormatString="original_{0}" SelectMethod="consultsarFiltros" TypeName="SchoolMaster.App.Controllers.AlunoController">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextNome" PropertyName="Text" Name="nome" Type="String"></asp:ControlParameter>
                <asp:ControlParameter ControlID="TextMatricula" PropertyName="Text" Name="alunoid" Type="Int32"></asp:ControlParameter>
                <asp:ControlParameter ControlID="TextData" PropertyName="Text" Name="_datanascimento" Type="DateTime"></asp:ControlParameter>

            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    </form>
</body>
</html>
