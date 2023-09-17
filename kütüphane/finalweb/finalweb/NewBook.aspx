<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="NewBook.aspx.cs" Inherits="finalweb.NewAuthor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>ADD NEW BOOK</h4>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Add New Book :"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" placeholder="Book name"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Author name"></asp:TextBox>

    <br />
    <asp:Button ID="Button1" runat="server" Text="ADD" CssClass="btn btn-info" OnClick="Button1_Click"/>
</asp:Content>
