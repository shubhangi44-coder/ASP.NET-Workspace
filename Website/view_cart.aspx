<%@ Page Title="" Language="C#" MasterPageFile="~/Website/User.Master" AutoEventWireup="true" CodeBehind="view_cart.aspx.cs" Inherits="Food_Order_System.Website.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1>My Cart....</h1></center>

    <div class="container-fluid">
        <%--<asp:Button ID="viewcart" runat="server" Text="View Cart" OnClick="viewcart_Click" />--%>
        <asp:DataList ID="d1" runat="server" Width="813px">
            <HeaderTemplate>
            <table style="background-color:black; box-sizing:padding-box; width:100%;margin-left: 30%;margin-right: 20% " class="tables">               
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    
                    <%--<td><img src="<%#Eval("Image") %>" height="100" width="100" /></td>--%>
                    <td><asp:Image ID="Image1" height="140px" width="140px" runat="server" ImageUrl='<%# Eval("Image") %>' /></td>                        
                    <td style=" color:white; font-size:large"><%# Eval("Item_Name") %></td>
                    <td style=" color:white; font-size:large"><%# Eval("Rate") %></td>
                    <td style=" color:white; font-size:large"><%# Eval("Discount") %></td>                                      
                    <td style=" color:white; font-size:large"><%# Eval("Quantity")%></td>
                 </tr>       
                     
                    
                <br />
                
            </ItemTemplate>
            <FooterTemplate><br /><br />
            </table><br /><br />
            </FooterTemplate>
        </asp:DataList>
    </div><br /><br />


</asp:Content>
