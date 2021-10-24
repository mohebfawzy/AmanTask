<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateProducts.aspx.cs" Inherits="AmanCompany.CreateProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Creact Product </h2>
   
    <div cssclass="form-control" style="max-width: 400px;">
        <hr />

        <br />
        <label for="txtName">Product Name</label>
        <asp:TextBox ID="textName" runat="server" CssClass="form-control" placeholder="Product Name" />
        <br />
        <label >Product Image</label>

        <asp:FileUpload ID="FileUpload1" runat="server" />

        <br />
        <label >Product Type</label>
        <asp:TextBox ID="txtType" runat="server" CssClass="form-control" placeholder="Product Type" />


        <br />
        <label >Delivary Date</label>
        <asp:TextBox type="date" id="TxtDate" runat="server" CssClass="form-control datepicker-field" placeholder="Delivary Date" />

        <br />
        <label for="Image">Product Wieght </label>
        <asp:TextBox  ID="txtWieght" runat="server" CssClass="form-control" placeholder="Product Wieght" />

        <br />
        <label for="Image">Product Price </label>
        <asp:TextBox ID="TextPrice" runat="server" CssClass="form-control" placeholder="Product Price" />

        <br />
        <label >Product Quantity </label>
        <asp:TextBox ID="TextQuantity" runat="server" CssClass="form-control" placeholder="Product Quantity" />

        <br />
        
    </div>
    <br />

    <asp:Image ID="Image1" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="Create" OnClick="Button1_Click" CssClass="btn btn-block" />

    <br />
    <br />
    <script>
    $(document).ready(function(){
        var today = new Date();
        var dd = String(today.getDate()).padStart(2, '0');
        var mm = String(today.getMonth() + 1).padStart(2, '0');
        var yyyy = today.getFullYear();

        today = yyyy + '-' + mm + '-' + dd;
        $('#MainContent_TxtDate').attr('min', today);

    });
    </script>
</asp:Content>
