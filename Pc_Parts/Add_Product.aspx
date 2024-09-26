<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Product.aspx.cs" Inherits="Pc_Parts.Add_Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light p-3">
                <div class="container-fluid">
                    <span class="navbar-brand mb-0 h1">Admin Panel</span>
                </div>
                </nav>
                 
        </div>
            <div>

                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                </asp:DropDownList>

            </div>
            <div class="card card-custom">
            <div class="card-body">
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td><asp:Label ID="Label1" runat="server" Text="  Product  Name" CssClass="form-label"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label2" runat="server" Text="  Product  Price" CssClass="form-label"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label3" runat="server" Text="  Available Stock" CssClass="form-label"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label4" runat="server" Text="Add image" CssClass="form-label"></asp:Label></td>
                            <td><asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" /></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label5" runat="server" Text="Description" CssClass="form-label"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox></td>
                        </tr>
                    </tbody>
                </table>
                <div class="text-center">
                    <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-success" Width="319px" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
