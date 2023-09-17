<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BooksIRead.aspx.cs" Inherits="finalweb.BooksIRead" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   
    
    <asp:GridView ID="gvBook" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID" DataSourceID="dsBooks" OnSelectedIndexChanged="gvBook_SelectedIndexChanged">
    <Columns>
        <asp:CommandField ShowSelectButton="True" SelectText="Select" />
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="BOOKIREAD" HeaderText="BOOK I READ" SortExpression="BOOKIREAD" />
        <asp:BoundField DataField="AUTHOROFBOOK" HeaderText="AUTHOR OF BOOK" SortExpression="AUTHOROFBOOK" />
        <asp:BoundField DataField="ILOVE" HeaderText="I LOVE" SortExpression="ILOVE" />
    </Columns>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
<asp:SqlDataSource ID="dsBooks" runat="server" ConnectionString="<%$ ConnectionStrings:FINALConnectionString %>" DeleteCommand="DELETE FROM [BOOKSIREAD] WHERE [ID] = @ID" InsertCommand="INSERT INTO [BOOKSIREAD] ([BOOKIREAD], [AUTHOROFBOOK], [ILOVE]) VALUES (@BOOKIREAD, @AUTHOROFBOOK, @ILOVE)" SelectCommand="SELECT * FROM [BOOKSIREAD]" UpdateCommand="UPDATE [BOOKSIREAD] SET [BOOKIREAD] = @BOOKIREAD, [AUTHOROFBOOK] = @AUTHOROFBOOK, [ILOVE] = @ILOVE WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:ControlParameter ControlID="lblID" Name="ID" PropertyName="Text" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="txtBook" Name="BOOKIREAD" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="txtAuthor" Name="AUTHOROFBOOK" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="ddlLove" Name="ILOVE" PropertyName="SelectedValue" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:ControlParameter ControlID="txtBook" Name="BOOKIREAD" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="txtAuthor" Name="AUTHOROFBOOK" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="ddlLove" Name="ILOVE" PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="lblID" Name="ID" PropertyName="Text" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    
   
    
    <br />
    <br />
    <table class="nav-justified">
        <tr>
            <td>&nbsp;ID :&nbsp;<asp:Label ID="lblID" runat="server" Text="Label"></asp:Label>
            </td>
            <td>BOOK I READ :
                <asp:TextBox ID="txtBook" runat="server"></asp:TextBox>
                </td>
            <td>AUTHOR OF BOOK :
                <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td>&nbsp;I LOVE :
                &nbsp;<asp:DropDownList ID="ddlLove" runat="server" DataSourceID="dsLove" DataTextField="ILike" DataValueField="ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="dsLove" runat="server" ConnectionString="<%$ ConnectionStrings:FINALConnectionString %>" SelectCommand="SELECT * FROM [ILIKE]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;&nbsp;&nbsp;
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="3">
                <asp:Button ID="btnNew" runat="server" OnClick="btnNew_Click" Text="New" Width="100px" />
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" Width="100px" />
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" Width="100px" />
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
    </table>
    
   
    
    </asp:Content>
