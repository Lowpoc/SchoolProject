<%@ Page Title="Consultar Curso" Language="C#" MasterPageFile="~/App/Layout.Master" AutoEventWireup="true" CodeBehind="consultarCurso.aspx.cs" Inherits="SchoolMaster.App.consultarCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainForm" runat="server">
     <asp:Table ID="ConsultarCursoTable" runat="server" HorizontalAlign="Center" Height="85px" Width="257px">
   <asp:TableRow  Font-Italic="True"  >
            <asp:TableCell ForeColor="#ffffff" >
               <h1 style="text-align: center">Bem Vindo  área de Consulta</h1>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodyForm" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectCurso">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF; color: #333333;">
                <td>
                    <asp:Label ID="_codigoLabel" runat="server" Text='<%# Eval("_codigo") %>' />
                </td>
                <td>
                    <asp:Label ID="_descricaoLabel" runat="server" Text='<%# Eval("_descricao") %>' />
                </td>
                <td>
                    <asp:Label ID="_valorCursoLabel" runat="server" Text='<%# Eval("_valorCurso") %>' />
                </td>
                <td>
                    <asp:Label ID="_cursoIDLabel" runat="server" Text='<%# Eval("_cursoID") %>' />
                </td>
                 <td>
                    <asp:Label ID="qtdAlunos" runat="server" Text='<%# Eval("qtdAlunos") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="_codigoTextBox" runat="server" Text='<%# Bind("_codigo") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_descricaoTextBox" runat="server" Text='<%# Bind("_descricao") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_valorCursoTextBox" runat="server" Text='<%# Bind("_valorCurso") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_cursoIDTextBox" runat="server" Text='<%# Bind("_cursoID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_QtdAluosTextBox" runat="server" Text='<%# Bind("qtdAlunos") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="_codigoTextBox" runat="server" Text='<%# Bind("_codigo") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_descricaoTextBox" runat="server" Text='<%# Bind("_descricao") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_valorCursoTextBox" runat="server" Text='<%# Bind("_valorCurso") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_cursoIDTextBox" runat="server" Text='<%# Bind("_cursoID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_QtdAlunosTextBox" runat="server" Text='<%# Bind("qtdAlunos") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: gray; color: white;">
                <td>
                    <asp:Label ID="_codigoLabel" runat="server" Text='<%# Eval("_codigo") %>' />
                </td>
                <td>
                    <asp:Label ID="_descricaoLabel" runat="server" Text='<%# Eval("_descricao") %>' />
                </td>
                <td>
                    <asp:Label ID="_valorCursoLabel" runat="server" Text='<%# Eval("_valorCurso") %>' />
                </td>
                <td>
                    <asp:Label ID="_cursoIDLabel" runat="server" Text='<%# Eval("_cursoID") %>' />
                </td>
                <td>
                    <asp:Label ID="qtdAlunos" runat="server" Text='<%# Eval("qtdAlunos") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" align="center">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#333333; color:#ffffff;">
                                <th runat="server">Codigo</th>
                                <th runat="server">Descricao</th>
                                <th runat="server">Valor do Curso</th>
                                <th runat="server">Curso ID</th>
                                <th runat="server">Qtd de Matriculados</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color:gray; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF" >
                    </td>
                </tr>
            </table>
        <div align="center">
           <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="buttonPaginacao" />
                                <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="buttonPaginacao" />
                    </Fields>
           </asp:DataPager>
        </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                <td>
                    <asp:Label ID="_codigoLabel" runat="server" Text='<%# Eval("_codigo") %>' />
                </td>
                <td>
                    <asp:Label ID="_descricaoLabel" runat="server" Text='<%# Eval("_descricao") %>' />
                </td>
                <td>
                    <asp:Label ID="_valorCursoLabel" runat="server" Text='<%# Eval("_valorCurso") %>' />
                </td>
                <td>
                    <asp:Label ID="_cursoIDLabel" runat="server" Text='<%# Eval("_cursoID") %>' />
                </td>'
                <td>
                    <asp:Label ID="qtdAlunos" runat="server" Text='<%# Eval("qtdAlunos") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="ObjectCurso" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="consultarTodos" TypeName="SchoolMaster.App.Controllers.CursoController"></asp:ObjectDataSource>
    
</asp:Content>