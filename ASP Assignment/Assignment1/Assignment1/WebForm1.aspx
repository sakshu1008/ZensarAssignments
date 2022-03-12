﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server" class="auto-style11">
        <div class="auto-style8">
            Insert Your Details : </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">First Name : </td>
                <td class="auto-style10">
                    <asp:TextBox ID="nm" runat="server"  Width="181px" Height="21px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="None" runat="server" ControlToValidate="nm" ErrorMessage="Required Firstname" ForeColor="Red"></asp:RequiredFieldValidator>
                 
                </td>
            
            </tr>
            <tr>
                <td class="auto-style2">Last Name : </td>
                <td class="auto-style4">
                    <asp:TextBox ID="fnm" runat="server"  Width="180px" Height="21px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" runat="server" ControlToValidate="fnm" ErrorMessage="Required LastName" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;
                    <asp:CompareValidator ID="CompareValidator1" Display="None" runat="server" ControlToCompare="nm" ControlToValidate="fnm" ErrorMessage="FamilyName must be different from Name" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Adress : </td>
                <td class="auto-style4">
                    <asp:TextBox ID="adrs" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="None" runat="server" ControlToValidate="adrs" ErrorMessage="Required Adress" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="None" runat="server" ErrorMessage="Adress Requires atleast 2 char " ControlToValidate="adrs" ForeColor="Red" ValidationExpression="^[a-zA-Z-\s\{2,}]+$"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">City : </td>
                <td class="auto-style4">
                    <asp:TextBox ID="ct" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="None" runat="server" ControlToValidate="ct" ErrorMessage="Required City" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" Display="None" runat="server" ErrorMessage="City Requires atleast 2 char " ControlToValidate="ct" ForeColor="Red" ValidationExpression="^[a-zA-Z-\s\{2,}]+$"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">ZipCode : </td>
                <td class="auto-style6">
                    <asp:TextBox ID="zpc" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="None" runat="server" ControlToValidate="zpc" ErrorMessage="Required ZipCode" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="None" runat="server" ErrorMessage="ZipCode must be only 5 digits" ControlToValidate="zpc" ForeColor="Red" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Mobile Phone No. : </td>
                <td class="auto-style4">
                    <asp:TextBox ID="phn" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="None" runat="server" ControlToValidate="phn" ErrorMessage="Required Phone Number" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="None" runat="server" ErrorMessage="Phone Number must be 10 digits only" ControlToValidate="phn" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email Address : </td>
                <td class="auto-style4">
                    <asp:TextBox ID="email" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="None" runat="server" ControlToValidate="email" ErrorMessage="Required Email" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="None" runat="server" ErrorMessage="Enter a Valid Email-id" ControlToValidate="email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <p>Validation Summary</p>
                    <asp:ValidationSummary runat="server" ShowMessageBox="true" ShowSummary="true" />
                    <asp:Button ID="Button1" runat="server" Text="Check" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
