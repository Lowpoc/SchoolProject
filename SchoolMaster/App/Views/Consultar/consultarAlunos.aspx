<%@ Page Title="Consultar Alunos" Language="C#" MasterPageFile="~/App/Template.Master" AutoEventWireup="true" CodeBehind="consultarAlunos.aspx.cs" Inherits="SchoolMaster.App.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="mainForm" runat="server">--%>
<%--    <asp:Table ID="ConsultaAlunoTable" runat="server" HorizontalAlign="Center">--%>
<%--   <asp:TableRow  Font-Italic="True"  >--%>
<%--            <asp:TableCell ForeColor="#ffffff" >--%>
<%--               <h1 style="text-align: center">Bem Vindo  área de Consulta</h1>--%>
<%--            </asp:TableCell>--%>
<%--        </asp:TableRow>--%>
<%--</asp:Table>--%>
<%--</asp:Content>--%>
<asp:Content  ContentPlaceHolderID="BlocoDoMeio" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:School-TesteConnectionString %>' SelectCommand="SELECT * FROM [Aluno]"></asp:SqlDataSource>
    <section>   
         <div id="first-block center">
               <div class="line center">
                  <div class="margin-bottom">
                     <div class="margin">
                        <article class="s-5 l-12">
                           <h1>Bem Vindo ao Relatório de Alunos</h1>
                           <p> Área Desitanda ao relatorio de alunos matriculados no sistema School Master.
                           </p>
                        </article>
                     </div>
                  </div>
               </div>
            </div>
         </section>
    <form runat="server">
     <div class="s-10 l-6 center">
         <fieldset class="s-10 l-10 center ">
                <legend>Consulta Avançada</legend>
               <div class="s-2 l-6">
               <asp:Label ID="LbAluno" runat="server" Text="Nome do Aluno" CssClass="customform"   Font-Size="Large"></asp:Label> <em style="color: red">*</em>
               <asp:TextBox ID="FiltroNome" runat="server" AutoPostBack="True"></asp:TextBox>
               </div>
               <div class="s-2 l-4">
               <asp:Label ID="LbMatricula" runat="server" Text="Matricula" CssClass="customform"    Font-Size="Large"></asp:Label> <em style="color: red">*</em>
               <asp:TextBox ID="FiltroMatricula" runat="server" TextMode="Number" AutoPostBack="True"></asp:TextBox>
                </div>
                <div class="s-5 l-6">
                <asp:Label ID="LbData" runat="server" Text="Data Nascimento" CssClass="customform"   Font-Size="Large"></asp:Label> <em style="color: red">*</em>
               <asp:TextBox ID="FiltroData" runat="server" TextMode="Date" AutoPostBack="True"></asp:TextBox>
                </div>
             <asp:Button ID="SubmitFiltro" runat="server" Text="Filtrar" CssClass=" button btn-cadastrar" />
         </fieldset>
         <asp:GridView ID="ListaDeAlunos" runat="server" EmptyDataText="Sem Dados"  DataSourceID="ObjectAluno" AutoGenerateColumns="False" BackColor="#063507" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="#152732" HorizontalAlign="Center" DataKeyNames="alunoid" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="alunoid" HeaderText="Matricula" SortExpression="alunoid"></asp:BoundField>
            <asp:BoundField DataField="_nome" HeaderText="Nome" SortExpression="_nome"></asp:BoundField>

            <asp:BoundField DataField="_cpf" HeaderText="Cpf" SortExpression="_cpf" />
            <asp:BoundField DataField="_datanascimento" HeaderText="Data Nascimento" SortExpression="_datanascimento" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
            <asp:BoundField DataField="_mgp" HeaderText="Media" SortExpression="_mgp"></asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" HeaderText="Funcao" ButtonType="Image" DeleteImageUrl="~/App/public/Imagens/remove.png" EditImageUrl="~/App/public/Imagens/edit.png" ShowEditButton="True"></asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#152732" />
        <HeaderStyle BackColor="#152732" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#152732" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView> 
</div>
    </form>
    <asp:ObjectDataSource ID="ObjectAluno" runat="server" SelectMethod="consultsarFiltros" TypeName="SchoolMaster.App.Controllers.AlunoController" DeleteMethod="DeleteAluno"  UpdateMethod="AtualizarAluno">
        <DeleteParameters>
            <asp:Parameter Name="alunoId" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="FiltroNome" PropertyName="Text" Name="nome" Type="String"></asp:ControlParameter>
            <asp:ControlParameter ControlID="FiltroMatricula" PropertyName="Text" Name="alunoid" Type="Int32"></asp:ControlParameter>
            <asp:ControlParameter ControlID="FiltroData" PropertyName="Text" Name="_datanascimento" Type="DateTime"></asp:ControlParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="_nome" Type="String"></asp:Parameter>
            <asp:Parameter Name="_cpf" Type="String"></asp:Parameter>
            <asp:Parameter Name="_datanascimento" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="_mgp" Type="Single"></asp:Parameter>
            <asp:Parameter Name="alunoid" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
