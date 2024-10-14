<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Dot_net_Exam.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .heading {
            text-align: center;
            font-family: 'Segoe UI Historic';
            font-size: xx-large;
            font-weight: bolder;
            color: white;
            background-color: #6066ec;
            height: 50px;
            align-items:center;
        }
        .heading #Label1{
            text-align:center;
            margin-left:400px;
        }
        .heading #Button7{
            display:flow;
            margin-left:170vh;
            background-color:chocolate;
            width:110px;
        }
        .products{
            margin-top:10px;
            display:flex;
            flex-wrap:wrap;
            margin-left:3px;
        }
        .product {
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
            align-items: center;
            height: 250px;
            width: 405px;
            animation: backwards;
            border: 5px solid white;
            border-radius: 10px;
            background: linear-gradient(#b200ff, #ff6a00);
            transition: width 1s linear,height 1s linear;
            
        }
                .product:hover{
                    height:265px;
                    width:410px;
                }
        .currency{
            font-family:Arial;
            font-size:larger;
            font-weight:bolder;
            color:white;
        }
        .add_cart{
            width:110px;
            height:30px;
            color:white;
            background-color:red;
            font-weight:bolder;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="heading">
            <asp:Label ID="Label2" runat="server" Text="Purchase Your Favourite Currency"></asp:Label>
            <asp:Button ID="Button7" runat="server" Text="View Cart" OnClick="Button7_Click" />
        </div>
        <div class="products" >
            <div class="product">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/canadian dollar.jpg" />
                <asp:Label ID="Label1" CssClass="currency" runat="server" Text="Canadian Dollar"></asp:Label>
                <asp:Button ID="Button1" runat="server" CssClass="add_cart" Text="Add to Cart" OnClick="Button1_Click" />
            </div>
            <div class="product">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Assets/dinar.jpg" />
                <asp:Label ID="Label3" CssClass="currency" runat="server" Text="Kuwait Dinar"></asp:Label>
                <asp:Button ID="Button2" runat="server" CssClass="add_cart" Text="Add to Cart" OnClick="Button2_Click" />
            </div>
            <div class="product">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Assets/euro.jpg" />
                <asp:Label ID="Label4" CssClass="currency" runat="server" Text="Euro"></asp:Label>
                <asp:Button ID="Button3" runat="server" CssClass="add_cart" Text="Add to Cart" OnClick="Button3_Click" />
            </div>
            <div class="product">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Assets/ruble.jpg" />
                <asp:Label ID="Label5" CssClass="currency" runat="server" Text="Ruble"></asp:Label>
                <asp:Button ID="Button4" runat="server"  CssClass="add_cart" Text="Add to Cart" OnClick="Button4_Click" />
            </div>
                        <div class="product">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/Assets/rupee.jpg" />
                <asp:Label ID="Label6" CssClass="currency" runat="server" Text="Indian Rupee"></asp:Label>
                <asp:Button ID="Button5" runat="server" CssClass="add_cart" Text="Add to Cart" OnClick="Button5_Click" />
            </div>
            <div class="product">
                <asp:Image ID="Image6" runat="server" ImageUrl="~/Assets/us dollar.jpg" />
                <asp:Label ID="Label7" CssClass="currency" runat="server" Text="US Dollar"></asp:Label>
                <asp:Button ID="Button6" runat="server" CssClass="add_cart" Text="Add to Cart" OnClick="Button6_Click" />
            </div>
        </div>
    </form>
</body>
</html>
