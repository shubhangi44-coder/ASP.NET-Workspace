<%@ Page Title="" Language="C#" MasterPageFile="~/Website/User.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Food_Order_System.Website.user_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="home.css" rel="stylesheet" />
    
    <style>

        body{
            background-color:black;
        }


        .vertical .carousel-inner {
            height: 50%;
        }

        .carousel.vertical .item {
            -webkit-transition: 0.6s ease-in-out top  ;
            -moz-transition: 0.6s ease-in-out top  ;
            -ms-transition: 0.6s ease-in-out top  ;
            -o-transition: 0.6s ease-in-out top  ;
            transition: 0.6s ease-in-out top ;
             left: 0;
        }
      

        .carousel.vertical .active {
            top: 0;
           
        }

        .carousel.vertical .next {
            top: 100%;
      
        }

        .carousel.vertical .prev {
            top: -50%;
       
        }

            .carousel.vertical .next.left,
            .carousel.vertical .prev.right {
                top: 0;
            }

        .carousel.vertical .active.left {
            top: -50%;

        }

        .carousel.vertical .active.right {
            top: 50%;
            
        }

        
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    
    <%--menu slider--%>  
<div class="container">
    
    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="overflow:hidden">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
 <div class="carousel-inner" >
    <div class="item active">
<%--     <img src="images/1.jpg" alt="" width="100%" >--%>
        <img src="../Admin/Images/food2.jpg" width="100%" />
        <div class="carousel-caption d-none d-md-block">
    <h5 style="font-size:x-large; color:yellow; font-style:italic">Our Delicious Food</h5>
    <p style="font-size:x-large; color:yellow; font-style:italic">A food that was scalded in boiling water and then moved to cold water to stop cooking...</p>
  </div>
    </div>

    <div class="item">
<img src="../Admin/Images/food14.jpg" width="100%" />
        <div class="carousel-caption d-none d-md-block">
    <h5 style="font-size:x-large; color:yellow; font-style:italic"  >Our Delicious Food</h5>
    <p style="font-size:x-large; color:yellow; font-style:italic">A food that was scalded in boiling water and then moved to cold water to stop cooking...</p>
  </div>
    </div>

    <div class="item">
<img src="../Admin/Images/food6.jpg" width="100%" />
        <div class="carousel-caption d-none d-md-block">
    <h5 style="font-size:x-large; color:yellow; font-style:italic">Our Delicious Food</h5>
    <p style="font-size:x-large; color:yellow; font-style:italic">A food that was scalded in boiling water and then moved to cold water to stop cooking...</p>
  </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" data-target="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" data-target="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>


<%--<span><i><h1>Hello World....Welcome To Food Factory</h1></i></span>--%>
     
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
