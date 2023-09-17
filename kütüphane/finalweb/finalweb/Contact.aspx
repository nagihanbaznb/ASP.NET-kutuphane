<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="finalweb.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered" style="margin-left: 20px; margin-right: 20px">
        <tr>
            <th>ID</th>
            <th>NAME SURNAME</th>
            <th>MAIL</th>
            <th>TOPIC</th>
            <th>OPEN MESSAGE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("NAMESURNAME")  %></td>
                    <td><%# Eval("MAIL")  %></td>
                    <td><%# Eval("TOPIC")  %></td>
                    
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "MessageDetail.Aspx?ID=" + Eval("ID") %>' CssClass="btn btn-warning" BackColor="#CC3399">Open Message</asp:HyperLink>
                    </td>

                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>

</asp:Content>
