<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateBook.aspx.cs" Inherits="finalweb.UpdateAuthor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>UPDATE BOOK</h4>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Book Name To Be Updated : "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" placeholder="Book name"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="UPDATE" CssClass="btn btn-group" OnClick="Button1_Click"/>
</asp:Content>
