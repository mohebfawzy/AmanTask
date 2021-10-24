<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteProduct.aspx.cs" Inherits="AmanCompany.DeleteProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h1>Are You Sure You Want to Delete <span style="color:red">
        <asp:Label ID="LabDelete" runat="server" Text="LabDelete"></asp:Label></span>
    </h1>
           <hr />

        <asp:Button ID="ConfirmDelete" runat="server" Text="Confirm" CssClass="btn btn-block" OnClick="ConfirmDelete_Click"/>

    
</asp:Content>
