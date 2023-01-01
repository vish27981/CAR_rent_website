<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 68px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <link rel="stylesheet" href="StyleSheet.css"/>
     <div class="registration-box ">
    
        <h2>Registration </h2>
 <table align="center" style="width: 375px">
        <div class="form-content">
             
            <tr><td class="auto-style1"><label>Full Name</label></td>
            <td><asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Full Name" CssClass="inputbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td></tr>
            
             <tr><td class="auto-style1"><label>Password</label></td>
            <td><asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Password" CssClass="inputbox" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td></tr>
             
             <tr><td class="auto-style1"><label>Age</label></td>
           <td> <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Age" CssClass="inputbox"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                 </td></tr>

            <tr><td class="auto-style1"> <label>City</label></td>
            <td><asp:TextBox ID="TextBox5" runat="server" placeholder="Enter City" CssClass="inputbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td></tr>

            <tr><td class="auto-style1"> <label>Address</label></td>
           <td> <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Address" CssClass="inputbox" TextMode="MultiLine"></asp:TextBox></td></tr>

            <tr><td class="auto-style1"> <label>Phone</label></td>
            <td><asp:TextBox ID="TextBox7" runat="server" placeholder="Enter Mobile no" CssClass="inputbox" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td></tr>

             <tr><td class="auto-style1"><label>Email</label></td>
            <td><asp:TextBox ID="TextBox8" runat="server" placeholder="Enter Email" CssClass="inputbox"  ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td></tr>
            
        <tr> <td class="auto-style1"><asp:Button class="btn btn-success btn-block btn-lg" ID="Button1"  OnClick ="Button1_Click" runat="server" Text="Update"  />
        
            <tr><td> <a href="changepassword.aspx">Change Password</a></td></tr>
        </td></tr>
            </div>
                </table>
         </div>
</asp:Content>

