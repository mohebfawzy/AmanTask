<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelecteProducts.aspx.cs" Inherits="AmanCompany.SelecteProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>All Products </h2>
    
    <hr />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" Width="1300px" GridLines="Horizontal">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="UpdateProduct.aspx?Id={0}" HeaderText="Edite" NavigateUrl="~/UpdateProduct.aspx" Text="Edite" />
            <asp:HyperLinkField DataNavigateUrlFields="Id,Name" DataNavigateUrlFormatString="DeleteProduct.aspx?id={0}&amp;Name={1}" HeaderText="Delete" NavigateUrl="~/DeleteProduct.aspx" Text="Delete" />
          
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
     <br />
    
    
    <br />
</asp:Content>
