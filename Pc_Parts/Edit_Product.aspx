<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Product.aspx.cs" Inherits="Pc_Parts.Edit_Product" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        /* Center the GridView */
        .grid-container {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px; /* Add padding around the grid */
        }

        /* Style the GridView */
        .gridview-header {
            background-color: #507CD1; /* Header Background Color */
            color: white; /* Header Text Color */
        }

        .gridview-row {
            background-color: #EFF3FB; /* Default Row Background */
        }

        .gridview-row:hover {
            background-color: #D1DDF1; /* Highlight on Hover */
        }

        .gridview-edit {
            background-color: #2461BF; /* Edit Row Background Color */
            color: white; /* Edit Text Color */
        }

        .gridview-footer {
            background-color: #507CD1; /* Footer Background Color */
            color: white; /* Footer Text Color */
        }

        .gridview-label {
            font-weight: normal; /* Normal Text Weight */
        }

        .gridview-image {
            width: 100px; /* Set Image Width */
            height: auto; /* Maintain Aspect Ratio */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light p-3">
                <div class="container-fluid">
                    <span class="navbar-brand mb-0 h1">Admin Panel</span>
                </div>
            </nav>
        </div>

        <!-- Bootstrap container to stack DropDownList and GridView vertically -->
        <div class="container">
            <!-- Row for DropDownList -->
            <div class="row">
                <div class="col-12">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="45px" Width="301px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-select mb-3">
                    </asp:DropDownList>
                </div>
            </div>

            <!-- Row for GridView -->
            <div class="row">
                <div class="col-12">
                    <asp:GridView ID="GridView1" runat="server" 
                                  Width="100%" 
                                  AutoGenerateColumns="False" 
                                  CellPadding="4" 
                                  ForeColor="#333333" 
                                  GridLines="None" 
                                  DataKeyNames="Product_id" 
                                  OnRowDeleting="GridView1_RowDeleting" 
                                  OnRowEditing="GridView1_RowEditing"
                                  CssClass="table table-striped table-bordered">
                        <AlternatingRowStyle CssClass="gridview-row" />
                        <Columns>
                            <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />

                            <asp:TemplateField HeaderText="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Product_name") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Product_name") %>' CssClass="gridview-label"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Price">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Product_price") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Product_price") %>' CssClass="gridview-label"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Stock">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Product_stock") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Product_stock") %>' CssClass="gridview-label"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Description">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Product_description") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Product_description") %>' CssClass="gridview-label"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Image">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Product_image") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Product_image") %>' CssClass="gridview-image" AlternateText="No image available" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle CssClass="gridview-edit" />
                        <FooterStyle CssClass="gridview-footer" />
                        <HeaderStyle CssClass="gridview-header" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle CssClass="gridview-row" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
