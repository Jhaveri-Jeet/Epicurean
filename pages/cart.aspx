<%@ Page Title="" Language="C#" MasterPageFile="~/pages/main.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="epicurean.pages.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-info text-center">
                        <h1 class="text-white">Cart</h1>
                        <p class="text-white mt-3">
                            <a href="index.html">Home</a><i class="bi bi-chevron-right ms-2 me-2"></i>Cart
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Breadcrumb End -->

    <!-- Shop Form -->

    <div class="shop-form-wrap pt-120">
        <div class="container">
            <div class="row pt-10">
                <div class="col-lg-12">
                    <div
                        class="cart-product-details-wrap cart-product-details-wrap-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Subtotal</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <!-- Table Head Mobile display -->
                                            <th
                                                class="d-lg-none d-md-none d-block d-sm-block"
                                                scope="row">Product
                                            </th>
                                            <!-- Table Head Mobile display End -->
                                            <td>
                                                <div class="cart-product-img-wrap">
                                                    <div class="single-cart-product-box">
                                                        <div class="single-cart-img">
                                                            <img
                                                                src="assets/images/shop/cart-img-1.png"
                                                                alt="" />
                                                            <h2 class="h2"><%# Eval("Name") %></h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <!-- Table Head Mobile display -->
                                            <th
                                                class="d-lg-none d-md-none d-block d-sm-block"
                                                scope="row">Price
                                            </th>
                                            <!-- Table Head Mobile display End -->
                                            <td><b><%# Eval("Price") %></b></td>
                                            <!-- Table Head Mobile display -->
                                            <th
                                                class="d-lg-none d-md-none d-block d-sm-block"
                                                scope="row">Quantity
                                            </th>
                                            <!-- Table Head Mobile display End -->
                                            <td>
                                                <b><%# Eval("TotalQuantity") %></b>
                                            </td>
                                            <!-- Table Head Mobile display -->
                                            <th
                                                class="d-lg-none d-md-none d-block d-sm-block"
                                                scope="row">Subtotal
                                            </th>
                                            <!-- Table Head Mobile display End -->
                                            <td><b><%# Eval("GrandTotal") %></b></td>
                                            <th
                                                class="d-lg-none d-md-none d-block d-sm-block"
                                                scope="row">Status
                                            </th>
                                            <!-- Table Head Mobile display End -->
                                            <td><b><%# Eval("Status") %></b></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <form runat="server">
                <asp:Button
                    runat="server"
                    class="mt-5 common-btn h-100 flex-shrink-0 border-0 border-radius-0 ms-lg-4 ms-2"
                    type="submit"
                    OnClick="placeOrder"
                    Text="Place Order" />
            </form>
        </div>
    </div>
    <br />
    <br />
    <br />
    <!-- Shop Form End -->
</asp:Content>
