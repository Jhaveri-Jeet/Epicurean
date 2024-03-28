<%@ Page Title="" Language="C#" MasterPageFile="~/pages/main.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="epicurean.pages.menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-info text-center">
                        <h1 class="text-white">Menu</h1>
                        <p class="text-white mt-3">
                            <a href="/index">Home</a><i class="bi bi-chevron-right ms-2 me-2"></i>Menu
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Breadcrumb End -->

    <!-- Food Menu -->

    <div class="coffee-food-menu-area pt-120 pb-120 position-relative z-index-one">
        <div class="container large-container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title section-title-coffee orange text-center">
                        <span>Our Main Menu</span>
                        <h2 class="mt-2">Choose The Best Pizza</h2>
                    </div>
                </div>
            </div>
            <div class="row pt-60">
                <div class="col-lg-12">
                    <div class="menu-book-box-wrap pizzamenu-book-box-wrap">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="menu-book-box d-flex justify-content-between align-items-center">
                                    <div class="menu-book-info-wrap d-flex flex-column flex-xl-row align-items-xl-center">
                                        <div class="menu-book-img flex-shrink-0">
                                            <img class="w-100" src="<%# "/uploads/" + Eval("ImageFileName") %>" alt="">
                                        </div>
                                        <div class="menu-book-info">
                                            <h2 class="h2 mb-1"><%# Eval("Name") %></h2>
                                            <p><%# Eval("Description") %></p>
                                        </div>
                                    </div>
                                    <div class="dots"></div>
                                    <div class="menu-book-price">
                                        <h2>₹<%# Eval("Price") %></h2>
                                        <% if (Session["user"] == "true")
                                            {  %>
                                        <a href="/pages/addToCart?id=<%# Eval("Id") %>">
                                            <svg
                                                class="add-cart-button float-end"
                                                style="margin-top: 10px"
                                                width="26"
                                                height="26"
                                                viewBox="0 0 26 26"
                                                fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <circle
                                                    cx="13"
                                                    cy="13"
                                                    r="12.25"
                                                    stroke="currentColor"
                                                    stroke-width="1.5" />
                                                <path
                                                    d="M13 8.5V13M13 13V17.5M13 13H17.5M13 13L8.5 13"
                                                    stroke="currentColor"
                                                    stroke-width="1.5"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                            </svg>
                                        </a>
                                        <% }  %>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
        <img class="position-absolute z-index-minus-one end-0 bottom-0" src="/assets/images/pizza/pizza-sp.png" alt="">
    </div>
    <!-- Food Menu End -->
</asp:Content>
