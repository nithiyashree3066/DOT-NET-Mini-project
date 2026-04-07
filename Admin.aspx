<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TicketReservationSystem.Admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel</title>

    <style>

        body {
            margin:0;
            padding:0;
            background:#f2f2f2;
            font-family:Arial;
        }

        .container {
            width:70%;
            background:white;
            padding:30px;
            border-radius:10px;
            box-shadow:0px 0px 10px gray;

            position:absolute;
            top:50%;
            left:50%;
            transform:translate(-50%,-50%);
        }

        h2 {
            text-align:center;
            color:#333;
        }

        .grid {
            width:100%;
            border-collapse:collapse;
            margin-top:20px;
        }

        .grid th {
            background:#007bff;
            color:white;
            padding:10px;
        }

        .grid td {
            padding:10px;
            text-align:center;
            border-bottom:1px solid #ddd;
        }

        .grid tr:hover {
            background:#f5f5f5;
        }

    </style>

</head>
<body>
<form id="form1" runat="server">

    <div class="container">

        <h2>All Bookings</h2>

        <asp:GridView ID="GridView1" runat="server"
            CssClass="grid"
            AutoGenerateColumns="true">
        </asp:GridView>

    </div>

</form>
</body>
</html>