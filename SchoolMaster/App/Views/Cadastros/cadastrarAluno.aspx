<%@ Page Title="" Language="C#" MasterPageFile="~/App/Template.Master" AutoEventWireup="true" CodeBehind="cadastrarAluno.aspx.cs" Inherits="SchoolMaster.App.CadastrarAluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="formularioCadastroAluno" ContentPlaceHolderID="bodyForm" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="BlocoDoMeio" runat="server">
<form id="form1" runat="server" class="customform" >
      <div class="s-8 l-5 center">  
    <fieldset>
        <legend>Matricular Aluno</legend>
      <asp:Label ID="LbAluno" runat="server" Text="Nome do Aluno" CssClass="customform"   Font-Size="Large"></asp:Label> <em style="color: red">*</em>
            <asp:TextBox ID="aluno_nome" runat="server" CssClass="input-sm" ></asp:TextBox>
        <asp:Label ID="LbCPF" runat="server" Text="CPF "  Font-Size="Larger" TextMode="text"></asp:Label> <em style="color: red">*</em>
            <asp:TextBox ID="aluno_cpf" runat="server" CssClass="input-sm"></asp:TextBox>
        <asp:Label ID="LbNascimento" runat="server" Text="Data de Nascimento  " Font-Size="Larger"></asp:Label><em style="color: red">*</em>
            <asp:TextBox ID="aluno_datanascimento" runat="server"   TextMode="Date"></asp:TextBox>
        <asp:Label ID="LbMGP" runat="server" Text="MGP" Font-Size="Larger"  ></asp:Label><em style="color: red">*</em>
            <asp:TextBox ID="aluno_mgp" runat="server"  TextMode="number"></asp:TextBox>
        <asp:Label ID="LbCurso" runat="server" Text="Cursos" Font-Size="Larger" ForeColor="White" ></asp:Label><em style="color: red">*</em>
            <asp:DropDownList ID="listaCursos" DataTextField="_descricao" DataValueField="_cursoID" runat="server"></asp:DropDownList>
        <div class="s-4 l-2 left ">
        <asp:Button ID="Button1" runat="server" Text="Cadastrar" CssClass="btn-cadastrar"  OnClick="CadastrarAlunoClass" />
        </div>
        <div class="s-4 l-2 right">
        <asp:Button ID="Button2" runat="server" Text="Cancelar" CssClass="btn-cancelar" />
        </div>
    </fieldset>
    </div>
</form>

</asp:Content>
