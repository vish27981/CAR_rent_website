<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" href="StyleSheet.css"/>
    
     <div class="registration-box ">
        
        <h2>Contact Us </h2>
   <table align="center">
        <div class="form-content">
            <tr><td><label>Username</label></td>
            <td><asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Username" CssClass="inputbox"></asp:TextBox></td></tr>
            
             <tr><td><label>Email</label></td>
            <td><asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Email" CssClass="inputbox"></asp:TextBox></td></tr>
             
             <tr><td><label>Phone</label></td>
           <td> <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Age" CssClass="inputbox"></asp:TextBox></td></tr>

            <tr><td> <label>Message</label></td>
            <td><asp:TextBox ID="TextBox5" runat="server" placeholder="Enter City" CssClass="inputbox"></asp:TextBox></td></tr>

           
         <td><asp:Button class="btn- btn-success btn-block btn-lg" ID="Button1"  runat="server" Text="Submit" OnClick="Button1_Click"  /></td>
            

           <tr><td> <asp:Label ID="Label1" runat="server" Text=" " CssClass="labletext"></asp:Label></td></tr>
            </div>
        </table>
    </div>
</asp:Content>

