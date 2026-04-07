<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="TicketReservationSystem.Booking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ticket Booking</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
            font-family: Arial;
        }

        .container {
            width: 350px;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;

            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .textbox {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 15px;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }

        .btn:hover {
            background-color: #0056b3;
            cursor: pointer;
        }

        .msg {
            text-align: center;
            font-weight: bold;
        }

    </style>

</head>

<body>
<form id="form1" runat="server">

    <div class="container">

        <h2>Ticket Booking</h2>

        Source:
        <asp:TextBox ID="txtSource" runat="server" CssClass="textbox"></asp:TextBox>

        Destination:
        <asp:TextBox ID="txtDestination" runat="server" CssClass="textbox"></asp:TextBox>

        Travel Date:
        <asp:TextBox ID="txtDate" runat="server" CssClass="textbox" placeholder="yyyy-mm-dd"></asp:TextBox>

        <asp:Button ID="btnBook" runat="server" Text="Book Ticket" CssClass="btn" OnClick="btnBook_Click" />

        <br /><br />

        <asp:Label ID="lblMsg" runat="server" CssClass="msg"></asp:Label>

    </div>

</form>
</body>
</html>