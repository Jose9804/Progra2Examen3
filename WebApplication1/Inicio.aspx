<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="WebApplication1.Tecnicos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <div class="container text-center">
            <h1> Registrar Participante </h1>
            <p>&nbsp;</p>
        </div>
    <div>
    <br />
    <br />
    <asp:GridView runat="server" ID="datagrid" PageSize="10" HorizontalAlign="Center"
        CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
        RowStyle-CssClass="rows" AllowPaging="True" />
    <br />
    <br />
    <br />
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Nombre del Participante</label>
            <asp:TextBox ID="CajaParticipante" runat="server" Required="true"  Width="281px"></asp:TextBox>
        </div>
        <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Edad</label>
    <asp:TextBox ID="CajaEdad" runat="server" Required="true"  Width="281px"></asp:TextBox>
</div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">CorreoElectronico</label>
            <asp:TextBox ID="CajaEmail" runat="server" TextMode="Email" Required="true" Width="214px"></asp:TextBox>
        </div>

        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Partido Politico</label>
            <asp:DropDownList ID="DropDownList1" runat="server" Required="true">
                <asp:ListItem Text="PLN" Value="PLN"></asp:ListItem>
                <asp:ListItem Text="PUSC" Value="PUSC"></asp:ListItem>
                <asp:ListItem Text="PAC" Value="PAC"></asp:ListItem>
            </asp:DropDownList>
        </div>
        
        <asp:Button ID="Btn_Agregar" class="my-button" runat="server" Text="Registrar Encuesta" OnClick="Btn_Agregar_Click"/>
        

</div>
</asp:Content>
