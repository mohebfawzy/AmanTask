<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="AmanCompany.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <asp:FormView ID="productDetail" runat="server" ItemType="AmanCompany.Models.Product" SelectMethod ="GetProduct" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.Name %></h1>
            </div>
            <br />
            <table>
                <tr>
                    <td>
                      
                        <img src="<%# ResolveUrl(Convert.ToString(Eval("Image"))) %>" style="border: solid";  width="170" height="200" alt="<%#:Item.Name %>" />
                    </td>
                    <td>&nbsp;</td>  
                    <td style="vertical-align: top; text-align:left;">
                        <b> Weight:</b><br /><%#:Item.ProductWeight %> K.g
                        <br />
                        <span><b>Price:</b>&nbsp;<%#: String.Format("{0:c}", Item.price) %></span>
                        <br />
                        <span><b>Product Type:</b>&nbsp;<%#:Item.Product_Type %></span>
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>

</asp:Content>
