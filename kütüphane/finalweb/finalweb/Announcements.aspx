<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Announcements.aspx.cs" Inherits="finalweb.Announcements" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="table table-bordered" style="margin-left: 20px; margin-right: 20px">
        <tr>
            <th>TITLE</th>
            <th>ANNOUNCEMENTS</th>
            <th>DATE</th>

        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("TITLE")  %></td>
                    <td><%# Eval("ANNOUNCEMENT")  %></td>
                    <td><%# Eval("DATE")  %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>


    </table>
</asp:Content>
