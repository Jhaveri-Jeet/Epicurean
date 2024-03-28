<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="update-product.aspx.cs" Inherits="epicurean.adminPages.product.update_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="content-wrapper">
            <form runat="server">
                <div class="row">
                    <div class="col-md-9 grid-margin stretch-card" style="display: block; margin-left: auto; margin-right: auto;">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Product</h4>
                                <p class="card-description">Update Product</p>
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">@</span>
                                        </div>
                                        <asp:DropDownList autofocus ID="categoryList" class="form-control mb-2" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">@</span>
                                        </div>
                                        <asp:TextBox
                                            ID="productName"
                                            type="text"
                                            class="form-control mb-2"
                                            placeholder="Product Name: "
                                            runat="server" />
                                    </div>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">@</span>
                                        </div>
                                        <asp:TextBox
                                            ID="productDescription"
                                            type="text"
                                            class="form-control mb-2"
                                            placeholder="Product Description: "
                                            runat="server" />
                                    </div>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">@</span>
                                        </div>
                                        <asp:TextBox
                                            ID="quantity"
                                            type="number"
                                            class="form-control mb-2"
                                            placeholder="Product Quantity: "
                                            runat="server" />
                                    </div>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">@</span>
                                        </div>
                                        <asp:TextBox
                                            ID="price"
                                            type="number"
                                            class="form-control mb-2"
                                            placeholder="Product Price: "
                                            runat="server" />
                                    </div>
                                    <asp:Button
                                        runat="server"
                                        ID="updateProductBtn"
                                        class="btn btn-inverse-primary btn-rounded btn-icon mt-5"
                                        Text="Submit"
                                        OnClick="updateProduct" />
                                </div>
                            </div>
                        </div>
                    </div>
            </form>
        </div>
    </div>
</asp:Content>
