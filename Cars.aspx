<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cars.aspx.cs" Inherits="Cars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><h1>&nbsp;</h1>
        <h1>&nbsp;Cars</h1>
    </center>
    <table>
        </table>
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" Height="200px" 
        HorizontalAlign="Center" Width="300px" RepeatColumns="3" RepeatDirection="Horizontal" 
        TabIndex="2" CellPadding="10" CellSpacing="10"  OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
             <table>
                 <tr>
                     <td style="text-align:center; background-color:#5f98f3">
                         <asp:Label ID="carnameLabel" runat="server" Text='<%# Eval("carname") %>'
                             Font-Bold="True" Font-Names="Sans Serif"  ForeColor="White" Font-Size="Large" />
                     </td>
                 </tr>
               
                 <tr>
                     <td style="text-align:center; background-color:#5f98f3">
                         <asp:Image ID="Image1" runat="server" BorderColor="#519813" BorderWidth="1px" Height="200px" Width="300px" ImageUrl='<%# Eval("image") %>'/>
                     </td>
                 </tr>
                
                
                 <tr>
                     <td style="text-align:center; background-color:#5f98f3">
                         <asp:Label ID="Label1" runat="server" Text="Price:Rs" Font-Bold="True" Font-Names="Arial" ForeColor="White"
                             style="text-align:center"></asp:Label>
                         <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' Font-Bold="True" 
                             Font-Names="Arial" ForeColor="White"    style="text-align:center" />

                     </td>
                 </tr>
                                                    
                 <tr>
                     <td style="text-align:center">
                         <asp:Button ID="Button1" runat="server" Text="Book Now"  Height="50px" CommandArgument='<%# Eval("carname")+","+ Eval("price") %>' CommandName="Book Now" Width="100px" />
                                                  
                          
                          
                     </td>
                     </tr>
             </table>
            <br/>
            <br/>
            </ItemTemplate>
        <SeparatorStyle BorderStyle="Inset" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\cardata.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [car]"></asp:SqlDataSource>
</asp:Content>

