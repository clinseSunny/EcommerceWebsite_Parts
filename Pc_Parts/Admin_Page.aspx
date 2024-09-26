<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Page.aspx.cs" Inherits="Pc_Parts.Admin_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style type="text/css">
        .image-button-container {
            margin-bottom: 20px;
        }
        .image-button-container img {
            transition: transform 0.3s ease;
        }
        .image-button-container:hover img {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light p-3">
                <div class="container-fluid">
                    <span class="navbar-brand mb-0 h1">Admin Panel</span>
                    <div class="d-flex">
                        <a href="#" class="btn btn-danger">Log Out</a>
                    </div>
                </div>
            </nav>

            <!-- Main Content -->
            <div class="container mt-5">
                <div class="row text-center">
                    <!-- Add Category Card -->
                    <div class="col-md-6">
                        <div class="card image-button-container">
                            <div class="card-body">
                                <h5 class="card-title">Add Category</h5>
                                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="img-fluid" Height="140px" ImageUrl="~/Icons/addCategoreyicon.jpeg" Width="257px" PostBackUrl="~/Add_Categorey.aspx" />
                            </div>
                        </div>
                    </div>

                    <!-- Edit Category Card -->
                    <div class="col-md-6">
                        <div class="card image-button-container">
                            <div class="card-body">
                                <h5 class="card-title">Edit Category</h5>
                                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="img-fluid" Height="140px" ImageUrl="~/Icons/EditCategory.png" Width="257px" PostBackUrl="~/Edit_Categorey.aspx" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row text-center mt-4">
                    <!-- Add Product Card -->
                    <div class="col-md-6">
                        <div class="card image-button-container">
                            <div class="card-body">
                                <h5 class="card-title">Add Product</h5>
                                <asp:ImageButton ID="ImageButton3" runat="server" CssClass="img-fluid" Height="140px" ImageUrl="~/Icons/AddProducticon.png" Width="257px" PostBackUrl="~/Add_Product.aspx" />
                            </div>
                        </div>
                    </div>

                    <!-- Edit Product Card -->
                    <div class="col-md-6">
                        <div class="card image-button-container">
                            <div class="card-body">
                                <h5 class="card-title">Edit Product</h5>
                                <asp:ImageButton ID="ImageButton4" runat="server" CssClass="img-fluid" Height="140px" ImageUrl="~/Icons/EditProduct.png" Width="257px" PostBackUrl="~/Edit_Product.aspx" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
