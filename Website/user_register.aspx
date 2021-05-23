<%@ Page Title="" Language="C#" MasterPageFile="~/Website/User.Master" AutoEventWireup="true" CodeBehind="user_register.aspx.cs" Inherits="Food_Order_System.Website.user_register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="user_register_style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
            <div class="loginbox">
                <h2 class="head">Register Here</h2>
               
                <div class="row form-group">
                    <asp:Label ID="Label2" Class="lblname" runat="server" Text="Name : "></asp:Label>
                    <asp:TextBox ID="txtname" Class="txtname" placeholder="Enter Name" runat="server"></asp:TextBox>
                </div>

                <div class="row form-group">
                    <asp:Label ID="Label1" Class="lblemail" runat="server" Text="Email ID : "></asp:Label>
                    <asp:TextBox ID="txtemail" Class="txtemail" TextMode="email" placeholder="Enter Email" runat="server"></asp:TextBox>
                </div>

                <div class="row form-group">
                    <asp:Label ID="Label3" Class="lblmob" runat="server" Text="Mobile no. : "></asp:Label>
                    <asp:TextBox ID="txtmoblie" Class="txtmobile" TextMode="Phone" placeholder="Enter Mobile no." runat="server"></asp:TextBox>
                </div>

                <div class="row form-group">
                    <asp:Label ID="Label4" Class="lblemail" runat="server" Text="Username : "></asp:Label>
                    <asp:TextBox ID="txtuser" Class="txtemail" placeholder="Enter Username" runat="server"></asp:TextBox>
                </div>
                <div class="row form-group">
                    <asp:Label ID="Label5" Class="lblpass" runat="server" Text="Password : "></asp:Label>
                    <asp:TextBox ID="txtpass" Class="txtpass" TextMode="Password" placeholder="Enter Password" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="btnsubmit" class="btn" CssClass="btn btn-block" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                </div>
                <br />
                <div class="form-row">
                    <div class="newuser">
                        Already have account ? <a href="user_login.aspx" class="link">Login</a>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
