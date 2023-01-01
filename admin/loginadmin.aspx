

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginadmin.aspx.cs" Inherits="admin_loginadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 align="center"><b>Admin</b></h1><br><br>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading"> 
					
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form method="post" >
                            <fieldset>
                                <div class="form-group"><asp:TextBox ID="TextBox1" class="form-control" name="text" type="text" autofocus required placeholder="Name" runat="server"></asp:TextBox>
                                    </div>
                                

                                <div class="form-group">
                                   <asp:TextBox ID="TextBox2" class="form-control" placeholder="Password" name="pass" type="password" required  runat="server"></asp:TextBox>
                                   
                                </div>
								<div class="form-group">
                                    <asp:Button ID="Button1" name="login" type="submit" value="Login" class="btn btn-lg btn-success btn-block" runat="server" Text="Login" OnClick="Button1_Click"></asp:Button>
                                   

                                </div>
                                 <asp:Label ID="Label1" runat="server" Text=" " CssClass="labletext"></asp:Label>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    </form>
</body>
</html>
