<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TicketReservationSystem.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }

        .container {
            width: 300px;
            margin: 100px auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
            text-align: center;
        }

        h2 {
            color: darkblue;
        }

        input, select {
            width: 90%;
            padding: 8px;
            margin: 8px 0;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: green;
            color: white;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background-color: darkgreen;
        }
    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div class="container">

            <h2>Login</h2>

            <asp:TextBox ID="txtUser" runat="server" Placeholder="Username"></asp:TextBox>

            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox>

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />

            <br /><br />

            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>

        </div>

    </form>

</body>
</html>