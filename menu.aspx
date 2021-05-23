<%@ Page Title="" Language="C#" MasterPageFile="~/Website/User.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="Food_Order_System.Website.menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="home.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



            

    
<div class="back">
    <table id="tables" style="margin-left: 20%; color:goldenrod; margin-right: 20%; width:80%">
        
        <tr>
            <td colspan="2" align="center">
                <br />
                <br />
                <br />
                <div id="menuDiv">
                    <table style="background-color:black; color:goldenrod">
                        <tr>
                            <th style="text-align:center; font-style: italic; background-color: orange; color:black; font-size:large"  class="auto-style1">
                                Our Special Menu
                            </th>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Repeater ID="rpt" runat="server">
                                    <ItemTemplate>
                                        <table id="InLine">
                                            <tr>
                                                <td>
                                                    <a href="item_details.aspx?id=<%# Eval("Item_Id") %>">
                                                    <%--<img alt="" height="240px" width="240px" src='<%# Eval("Image") %>' /></a>--%>
                                                    <asp:Image ID="Image1" height="240px" width="240px" runat="server" ImageUrl='<%# Eval("Image") %>' />
                                                </td>

                                                <td>
                                                    
                                                    <p>A food that was scalded in boiling water and then moved to cold water to stop cooking. Results in a softened texture</p><br /><br /><br />
                                                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("Item_Name") %>'></asp:Label><br />
                                                    Rs. <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Rate") %>'></asp:Label><br /><br />  
                                                    
                                                </td>
                                                
                                            </tr>
                                        </table><br />
                                    </ItemTemplate>
                                </asp:Repeater>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
  </div>
    

</asp:Content>
