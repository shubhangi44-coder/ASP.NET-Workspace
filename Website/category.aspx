<%@ Page Title="" Language="C#" MasterPageFile="~/Website/User.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="Food_Order_System.Website.category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="col-md-2">
                    <a href="category.aspx?id=<%# Eval("Cat_Id") %>">
                    <asp:Button ID="Button1" runat="server" Text='<%# Eval("Category_Name") %>' CssClass="btn btn-block" BackColor="maroon" ForeColor="White" OnClick="Button1_Click"/>
                        
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div><br /><br /><br />

<%--    category wise menu--%>

     <div class="back">
    
                                <asp:Repeater ID="rpt" runat="server">
                                    <ItemTemplate >
                                        <table id="InLine">
                                            <tr>
                                                <td>
                                                    <%--<a href="PostBackUrl='<%# Eval("Cat_Id","veg.aspx?Cat_Id={0}") %>' "></a>--%>
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
                            
  </div>   
</asp:Content>
