<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="AmanCompany.UpdateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Update Product </h2>
   
               <div cssclass="form-control" style="max-width: 400px;">
        <hr />

        <br />
        <label for="txtName">Product Name</label>
        <asp:TextBox ID="textName" runat="server" CssClass="form-control" placeholder="Product Name" />
        <br />
        <label for="Image">Product Image</label>

        <asp:FileUpload ID="FileUpload1" runat="server" />

        <br />
        <label for="Image">Product Type</label>
        <asp:TextBox ID="txtType" runat="server" CssClass="form-control" placeholder="Product Type" />


        <br />
        <label for="Image">Delivary Date</label>
        <asp:TextBox ID="TxtDate" runat="server" CssClass="form-control" placeholder="Delivary Date" />

        <br />
        <label for="Image">Product Wieght </label>
        <asp:TextBox ID="txtWieght" runat="server" CssClass="form-control" placeholder="Product Wieght" />

        <br />
        <label for="Image">Product Price </label>
        <asp:TextBox ID="TextPrice" runat="server" CssClass="form-control" placeholder="Product Price" />

        <br />
        <label for="Image">Product Quantity </label>
        <asp:TextBox ID="TextQuantity" runat="server" CssClass="form-control" placeholder="Product Quantity" />

        <br />
        <%--,,,,,--%>
    </div>
    <br />

    <asp:Image ID="Image1" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" CssClass="btn btn-block" />

    <br />
    <br />
</asp:Content>
