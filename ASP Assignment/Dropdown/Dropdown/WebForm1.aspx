<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Dropdown.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Select an Option: <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FFCC66" Height="59px" ValidationGroup="vg" Width="109px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <p>
            <asp:Image ID="Image1" runat="server" Height="700px" Width="700px" />
        </p>
        <p>
            Value of the selected option: <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="vg" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <asp:Button ID="submit" runat="server" OnClick="Button1_Click" Text="submit" Width="121px" />
    </form>
</body>
</html>
