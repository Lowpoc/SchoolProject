<%@ Page Title="" Language="C#" MasterPageFile="~/App/Layout.Master" AutoEventWireup="true" CodeBehind="cadastrarAluno.aspx.cs" Inherits="SchoolMaster.App.CadastrarAluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainForm" runat="server">
    <asp:Table ID="CadastroAlunoTable" runat="server" HorizontalAlign="Center">
   <asp:TableRow  Font-Italic="True"  >
            <asp:TableCell ForeColor="#ffffff" >
               <h1 style="text-align: center">Bem Vindo  área de Cadastro</h1>
            </asp:TableCell>
        </asp:TableRow>
</asp:Table>
</asp:Content>
<asp:Content ID="formularioCadastroAluno" ContentPlaceHolderID="bodyForm" runat="server">
    <div class="form-cd">  
      <asp:Label ID="LbAluno" runat="server" Text="Nome do Aluno" CssClass="lbForm" ForeColor="White" Font-Size="Large"></asp:Label> <em style="color: red">*</em>
            <asp:TextBox ID="aluno_nome" runat="server" CssClass="input-sm" ></asp:TextBox>
        <asp:Label ID="LbCPF" runat="server" Text="CPF " CssClass="lbForm" Font-Size="Larger" ForeColor="White"></asp:Label> <em style="color: red">*</em>
            <asp:TextBox ID="aluno_cpf" runat="server" CssClass="input-sm"></asp:TextBox>
        <asp:Label ID="LbNascimento" runat="server" Text="Data de Nascimento  " Font-Size="Larger" ForeColor="White" ></asp:Label><em style="color: red">*</em>
            <asp:TextBox ID="aluno_datanascimento" runat="server" CssClass="input-sm"  TextMode="Date"></asp:TextBox>
        <asp:Label ID="LbMGP" runat="server" Text="MGP" Font-Size="Larger" ForeColor="White" ></asp:Label><em style="color: red">*</em>
            <asp:TextBox ID="aluno_mgp" runat="server" CssClass="input-sm" ></asp:TextBox>
        <asp:Label ID="LbCurso" runat="server" Text="Cursos" Font-Size="Larger" ForeColor="White" ></asp:Label><em style="color: red">*</em>
            <asp:DropDownList ID="listaCursos" DataTextField="_descricao" DataValueField="_cursoID" runat="server"></asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Cadastrar" CssClass="btn btn-default" OnClick="CadastrarAlunoClass" />
    </div>
</asp:Content>
