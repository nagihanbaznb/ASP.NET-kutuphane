<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MyFavorites.aspx.cs" Inherits="finalweb.MyFavorites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>WELCOME !
            <asp:Label ID="Labusrname" runat="server"></asp:Label></h1>
        <br />
        <asp:LinkButton ID="ButLogout" runat="server" OnClick="ButLogout_Click">Logout</asp:LinkButton>
    </div>
    <br />
   
    <p>Hello.Weolcome my page. I have added my favorite books to this page. If our tastes are similar to yours, contact me. </p>
     <br />
    <table class="table table-bordered" style="margin-left: 20px; margin-right: 20px">
        <tr>
            <th>ID</th>
            <th>BOOK I LOVE</th>
            <th>AUTHOR I LOVE</th>
            <th>DELETE</th>
            <th>UPDATE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("BOOKSILOVE") %></td>
                    <td><%# Eval("AUTHORSILOVE") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "DeleteBook.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-danger">Delete</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "UpdateBook.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-success">Update</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
    <a href="NewBook.aspx" class="btn btn-primary" style="margin-left: 20px">Add New Book</a>


</asp:Content>
