<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Masteradmin.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
      <table align="center">
		  <tr>
		 <td >
             
           
             <a href="manageuser.aspx"><img  align="left" border="5" width="500px" height="250px" src="image/user1.jpg" ></a><br />
             
             <a href="manageuser.aspx"><figcaption align="center"><h3>User</h3></figcaption></a></td>
		 
		 
		
		  <td>
              
              <a href="addcar.aspx"><img align="right" border="5" width="500px" height="250px" src="image/car.jpg">
                  <figcaption align="center"></a><br />
              <br />
              <a href="addcar.aspx"><h3>Cars</h3></figcaption></a></td>
		  </tr>
		  <tr>
		  <td>
              
              <a href="custbooking.aspx"><img align="left" border="5" width="500px" height="250px"src="image/pay1.jpg">
                  <figcaption align="center"><h3>Bookings</h3></figcaption></a></td>
		  
		  
		  <td>
            
              <a href="message.aspx"><img align="right"border="5" width="500px" height="250px" src="image/me.jpg"><figcaption align="center"><h3>Messages</h3></figcaption></a>


		  </td>
		  </tr>
		  </table>
    <div class="container">
        <center>
                <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="Log-Out" OnClick="Button1_Click" Font-Size="Large" />
        </div>
      </asp:Content>

