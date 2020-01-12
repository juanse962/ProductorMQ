<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ProductorMQ.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Seleccione cola<br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>cola1</asp:ListItem>
                <asp:ListItem>cola2</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Ingrese mensaje
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enviar" />
        </div>
    </form>
</body>
</html>
