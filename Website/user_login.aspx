<%@ Page Title="" Language="C#" MasterPageFile="~/Website/User.Master" AutoEventWireup="true" CodeBehind="user_login.aspx.cs" Inherits="Food_Order_System.Website.user_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="user_login_style.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
            <div class="loginbox">
                <h2 style="color:gold">Login Here</h2>
                
                <div class="row form-group">
                    <asp:Label ID="Label2" Class="lblemail" runat="server" Text="Username : "></asp:Label>
                    <asp:TextBox ID="txtuser" Class="txtemail" placeholder="Enter Username" runat="server"></asp:TextBox>
                </div>
                <div class="row form-group">
                    <asp:Label ID="Label3" Class="lblpass" runat="server" Text="Password : "></asp:Label>
                    <asp:TextBox ID="txtpass" Class="txtpass" TextMode="Password" placeholder="Enter Password" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="btnsubmit" class="btn" CssClass="btn btn-block" runat="server" Text="Login" OnClick="btnsubmit_Click1"  />
                </div> 
                 <%--<div class="form-row">
                    <div class="newuser">
                       <a href="Uforgot.aspx" class="link">Forgot Password ?</a>
                    </div>
                </div>--%>
                <div class="form-row">
                    <div class="newuser">
                        New User ? <a href="user_register.aspx" class="link">Create New Account ?</a>
                    </div>
                </div>
                
            </div>
              
        </div>
</asp:Content>
