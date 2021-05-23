<%@ Page Title="" Language="C#" MasterPageFile="~/Website/User.Master" AutoEventWireup="true" CodeBehind="item_details.aspx.cs" Inherits="Food_Order_System.Website.item_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
        .auto-style1 {
            width: 1145px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <table id="tables" style="width: 50%; margin-left: auto; margin-right:auto; background-color: black; color:white; border: 1px solid #ddd" class="active">
        <tr>
            <td class="auto-style1">
                <asp:Repeater ID="d1" runat="server">
                <ItemTemplate>
                
                <table style="width: 100%; padding: 0; margin: 0; ">
                <tr>
                <th style="text-align:center">
                    <b style="font-size:x-large;">Item Details</b>
                </th>
                </tr>
                <tr>
                <td >
                    <table style="width: 100%; padding: 0; margin: 0;">
                        <tr>
                            <td align="center">
                                <asp:Image ID="Image1" height="240px" width="240px" runat="server" ImageUrl='<%# Eval("Image") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblName" runat="server" Text="Name:" Font-Size="Large" ForeColor="Goldenrod"></asp:Label>&nbsp;
                                <asp:Label ID="lblDBname" runat="server" Text='<%# Eval("Item_Name") %>' Font-Size="Large" ForeColor="Goldenrod"></asp:Label><br/>
                                <br/>
                                <asp:Label ID="lblPrice" runat="server" Text="Price: Rs." Font-Size="Large" ForeColor="Goldenrod"></asp:Label>&nbsp;
                                <asp:Label ID="lblDBPrice" runat="server" Text='<%# Eval("Rate") %>' Font-Size="Large" ForeColor="Goldenrod"></asp:Label><br/><br/>
                                <asp:Label ID="lblDiscount" runat="server" Text="Discount: " Font-Size="Large" ForeColor="Goldenrod"></asp:Label>&nbsp;
                                <asp:Label ID="lblDBDiscount" runat="server" Text='<%# Eval("Discount") %>' Font-Size="Large" ForeColor="Goldenrod"></asp:Label><br /><br />
                                
                                <%--<asp:DropDownList ID="ddlcat" runat="server" CssClass="active" BackColor="White" ForeColor="Black">
                                    <asp:ListItem Selected="True">--Select--</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                </asp:DropDownList><br /><br />--%>

                             </td>
                        </tr>
                    </table>
                </td>
                </tr>
                </table>

                </ItemTemplate>
                </asp:Repeater>
            </td>
        </tr>
        <tr>
        <td class="auto-style1">
           
            <table style="width: 100%; padding: 0; margin: 0;">
                <tr>
                    <td align="center" >

                        <%--<asp:Button ID="btnBuy" runat="server" Text="Buy" BackColor="SteelBlue" ForeColor="Black" CssClass="btn btn-block"  Height="40px" Width="200px" />
                                    
                        <asp:Button ID="btnViewMyOrder" runat="server" Text="Add To Cart" BackColor="Yellow" ForeColor="Black" CssClass="btn btn-block" Height="40px" Width="200px" />                                                              --%>
                    <asp:Label ID="lblQuantity" Class="lbl" runat="server" Text="Select Quantity : " Font-Size="Large" ForeColor="Goldenrod"></asp:Label>
                    <asp:TextBox ID="txtquantity" runat="server" ForeColor="Black" Width="121px" ></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                    <td >
                        <center><asp:Button ID="addtocart" runat="server" Text="Add To Cart" CssClass="btn btn-block" BackColor="Yellow" ForeColor="Black" width="343px" Font-Size="Large" OnClick="addtocart_Click"/></center>

                        <br />

                    </td>
                </tr>
            </table>
        </td>
        </tr>
    </table>

</asp:Content>
