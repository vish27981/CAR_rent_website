<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" href="StyleSheet.css"/>
     <div class="registration-box">
      
        <h2>Login</h2>
   
        <div class="form-content">
          <label>Username</label>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Username" CssClass="inputbox"></asp:TextBox>

             <label>Password</label>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Password" CssClass="inputbox"></asp:TextBox>

          <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1"  />
            
            
            <asp:Button class="btn btn-success btn-block btn-info" ID="Button2" runat="server" Text="Sign Up" />
            &nbsp;
            
           <a href="Home.aspx"><<< Back to Home</a>
            
            <asp:Label ID="Label1" runat="server" Text=" " CssClass="labletext"></asp:Label>
            </div>
       
       
</asp:Content>

