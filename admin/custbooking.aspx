<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Masteradmin.master" AutoEventWireup="true" CodeFile="custbooking.aspx.cs" Inherits="admin_custbooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><h1>Customer Bookings</h1></center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bookingid" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Font-Bold="True" Font-Size="Larger">
        <Columns>
            <asp:BoundField DataField="bookingid" HeaderText="bookingid" ReadOnly="True" SortExpression="bookingid" InsertVisible="False" />
            <asp:BoundField DataField="carname" HeaderText="carname" SortExpression="carname" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="source" HeaderText="source" SortExpression="source" />
            <asp:BoundField DataField="dest" HeaderText="dest" SortExpression="dest" />
            <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
            <asp:BoundField DataField="cardno" HeaderText="cardno" SortExpression="cardno" />
            <asp:BoundField DataField="validtill" HeaderText="validtill" SortExpression="validtill" />
            <asp:BoundField DataField="cvv" HeaderText="cvv" SortExpression="cvv" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" BorderStyle="Inset" Font-Bold="True" ForeColor="White" Height="10px" HorizontalAlign="Center" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\cardata.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [booking]"></asp:SqlDataSource>
</asp:Content>

