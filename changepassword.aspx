<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 158px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <br />
    <br />
    <br />
    <br />

    <table class="auto-style1">
        <tr>
            <td class="auto-style2">

    <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TextBox1" runat="server"  TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
    <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TextBox2" runat="server"  TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
    <asp:Button ID="Button1" runat="server" Text="Change" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    &nbsp;  

</asp:Content>

