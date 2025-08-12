<%@ Page Title="" Language="C#" MasterPageFile="~/master/cinestar.Master" AutoEventWireup="true" CodeBehind="cine.aspx.cs" Inherits="cinestar_web.pages.cine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <br/><h1>Nuestros Cines</h1><br/>

    <asp:Repeater ID="rptCines" runat="server">
        <ItemTemplate>
    
	<div class="contenido-cine">
	    <img src="img/cine/1.1.jpg" width="227" height="170"/>
            <div class="datos-cine">
       	        <h4><%#Eval("RazonSocial") %></h4><br/>
                <span><%#Eval("Direccion") %> - <%#Eval("Detalle") %><br/><br/>Teléfono: <%#Eval("Telefonos") %></span>
            </div>
            <br/>
            <a href="cine.aspx?id=<%#Eval("id") %>">
                <img src="img/varios/ico-info2.png" width="150" height="40"/>
            </a>
	        </div>
        </ItemTemplate>
    </asp:Repeater>


</asp:Content>
