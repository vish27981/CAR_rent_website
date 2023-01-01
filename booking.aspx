<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>

    <br/>
    <br/>
    <br/>
<h2 align="center">Booking</h2>

<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="/action_page.php">
      
       

          <div class="col-50">
           
            &nbsp;
              <label for="cname">Car Name:
              <asp:Label ID="Label4" runat="server"></asp:Label>
              </label>
            &nbsp;

              PickupDate:<label for="pickup"><asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged">
                  <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                  <DayStyle Width="14%" />
                  <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                  <OtherMonthDayStyle ForeColor="#999999" />
                  <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                  <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                  <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                  <TodayDayStyle BackColor="#CCCC99" />
              </asp:Calendar>
              <asp:Label ID="Label6" runat="server"></asp:Label>
              </label>
              &nbsp; Location:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="Label2" runat="server" Text="Source"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="DropDownList1" runat="server">
                  <asp:ListItem>Jamnagar</asp:ListItem>
                  <asp:ListItem>Rajkot</asp:ListItem>
                  <asp:ListItem>Ahemdabad</asp:ListItem>
                  <asp:ListItem>Surendarnagar</asp:ListItem>
                  <asp:ListItem>Bhavnagar</asp:ListItem>
                  <asp:ListItem>Virpur</asp:ListItem>
                  <asp:ListItem>Surat</asp:ListItem>
                  <asp:ListItem>Mumbai</asp:ListItem>
                  <asp:ListItem>Navagam</asp:ListItem>
                  <asp:ListItem>Dhrol</asp:ListItem>
                  <asp:ListItem>Gandhinagar</asp:ListItem>
                  <asp:ListItem>Dwaraka</asp:ListItem>
                  <asp:ListItem>Okha</asp:ListItem>
                  <asp:ListItem>Vapi</asp:ListItem>
                  <asp:ListItem>Rampur</asp:ListItem>
              </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="Label3" runat="server" Text="Destination"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="DropDownList2" runat="server">
                  <asp:ListItem>Jamnagar</asp:ListItem>
                  <asp:ListItem>Rajkot</asp:ListItem>
                  <asp:ListItem>Ahemdabad</asp:ListItem>
                  <asp:ListItem>Surendarnagar</asp:ListItem>
                  <asp:ListItem>Bhavnagar</asp:ListItem>
                  <asp:ListItem>Virpur</asp:ListItem>
                  <asp:ListItem>Surat</asp:ListItem>
                  <asp:ListItem>Mumbai</asp:ListItem>
                  <asp:ListItem>Navagam</asp:ListItem>
                  <asp:ListItem>Dhrol</asp:ListItem>
                  <asp:ListItem>Gandhinagar</asp:ListItem>
                  <asp:ListItem>Dwarka</asp:ListItem>
                  <asp:ListItem>Okha</asp:ListItem>
                  <asp:ListItem>Vapi</asp:ListItem>
                  <asp:ListItem>Rampur</asp:ListItem>
              </asp:DropDownList>
              <br />
              <br />
            &nbsp;
            <div class="row">
              <div class="col-50">

                    <label for="ccnum">Amount: <asp:Label ID="Label5" runat="server"></asp:Label>
              </label>
                    <label for="expmonth">Card No<asp:TextBox ID="TextBox3"  runat="server"></asp:TextBox>
              </label>
            &nbsp;
            <div class="row">
              <div class="col-50">


                <label for="expyear">Valid till<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                  </label>
&nbsp;</div>
             
            </div>
              <label for="expyear">CVV<asp:TextBox ID="TextBox5"  runat="server"></asp:TextBox>
                  </label>
            
&nbsp;</div>
             
            </div>
             
            
          </div>
          
         
    </div>
  </div>
  <div class="col-25">
    <div class="container">
     <center>
      <asp:Button class="btn btn-success btn-block btn-lg" ID="Button3" runat="server" Text="Book Now" OnClick="Button3_Click" />
    </div>
  </div>
    
</div>

      <br />
<br />
<br />
</asp:Content>

