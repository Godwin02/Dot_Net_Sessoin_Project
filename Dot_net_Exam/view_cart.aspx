<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_cart.aspx.cs" Inherits="Dot_net_Exam.view_cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .purchase {
            display:flex;
            flex-direction:column;
            justify-content:space-evenly;
            margin-left:40%;
            border:5px groove red;
            width:300px;
            height:450px;
            object-fit:fill;
            align-items:center;
        }
        .purchase #Label1{
            background-color:beige;
            font-family:Arimo;
            font-size:xx-large;
            font-weight:bolder;
        }
        .purchase #TextBox1{
            width:250px;
            height:40px;
            
        }
        .purchase #Image1{
            height:170px;
            width:250px;
        }
        .purchase #Button1{
            width:200px;
            height:40px;
            background-color:burlywood;
            border:5px solid burlywood;
            border-radius:3px 4px;
            font-size:medium;
        }
        .purchase #Button2{
            width:200px;
            height:40px;
            background-color:burlywood;
            border:5px solid burlywood;
            border-radius:3px 4px;
            font-size:medium;
        }
        .purchase #Label3{
            background-color:beige;
            font-family:Arimo;
            font-size:medium;
            font-weight:bolder;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>Select</asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Panel ID="Panel1" CssClass="purchase" Visible="false" runat="server">
                 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Image ID="Image1" runat="server" />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox1" type="number" MaxLength="2" Text='1' min="1" max="99" placeholder="Enter Quantity" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Calculate" OnClick="Button2_Click" />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Place Order"  OnClick="Button1_Click" />
        </asp:Panel>
 
        
    </form>
</body>
</html>
