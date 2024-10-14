<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Dot_net_Exam.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .login{
            display:flex;
            flex-direction:column;
            justify-content:space-around;
            width:300px;
            height:300px;
            border:3px solid #ffd800;
            border-radius:10px;
            box-shadow:#ffd800 2px 2px 2px;
            align-items:center;
            margin-left:40%;
            margin-top:200px;
            background:repeating-linear-gradient(#ffd800,#ff006e);
        }
        .login #TextBox1 {
            width:200px;
            height:30px;
                        text-align:center;

            border-radius:10px;
            background-color:#ffd800;
        }
       .login #TextBox2{
            width:200px;
            height:30px;
            text-align:center;
            border-radius:10px;
            background-color:#ffd800;
        }
      .login #Button1{
          width:120px;
            height:30px;
            text-align:center;
            border-radius:10px;
            background-color:#4cff00;
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login">
            <asp:Label ID="Label1" runat="server" Text="LOGIN PAGE"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" type="password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
