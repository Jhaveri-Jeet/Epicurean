<%@ Page Title="" Language="C#" MasterPageFile="~/pages/main.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="epicurean.pages.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-info text-center">
                        <h1 class="text-white">Contact Us</h1>
                        <p class="text-white mt-3">
                            <a href="index">Home</a><i class="bi bi-chevron-right ms-2 me-2"></i>Contact Us
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Breadcrumb End -->

    <!-- Address -->

    <div class="address-area pb-120">
        <div class="container">
            <div class="row gy-4 justify-content-center">
                <div class="col-lg-4 col-md-6">
                    <div class="address-box text-center">
                        <div
                            class="address-icon d-flex align-items-center justify-content-center">
                            <i class="bi bi-envelope"></i>
                        </div>
                        <p>Email Us</p>
                        <a class="address-link" href="mailto:support@epicurean.com">support@epicurean.com</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="address-box text-center">
                        <div
                            class="address-icon d-flex align-items-center justify-content-center">
                            <i class="bi bi-telephone"></i>
                        </div>
                        <p>Call Us</p>
                        <a class="address-link" href="tel:9853246875">+91 9853246875</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="address-box text-center">
                        <div
                            class="address-icon d-flex align-items-center justify-content-center">
                            <i class="bi bi-geo-alt"></i>
                        </div>
                        <p>Location</p>
                        <span class="address-link">Raj Park, Ahmedabad, Gujarat.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Address End -->

    <!-- Contact Form -->

    <div class="contact-submit-area pb-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center">
                        <span>Contact Us</span>
                        <h2 class="mt-2">Have Any Questions?</h2>
                    </div>
                </div>
            </div>
            <div class="row pt-60 justify-content-center">
                <div class="col-lg-8">
                    <form class="contact-submit-wrap" runat="server">
                        <div class="row gy-3">
                            <div class="col-lg-12">
                                <label class="d-inline-block">Write comment</label>
                                <asp:TextBox ID="message" runat="server" Columns="10" placeholder="Type your Comment: "></asp:TextBox>
                            </div>
                            <div class="col-lg-4">
                                <label class="d-inline-block">Full Name</label>
                                <asp:TextBox ID="name" runat="server" type="text" placeholder="Enter your name" />
                            </div>
                            <div class="col-lg-4">
                                <label class="d-inline-block">Email</label>
                                <asp:TextBox ID="email" runat="server" type="email" placeholder="Enter your email Input" />
                            </div>
                            <div class="col-lg-4">
                                <label class="d-inline-block">Phone Number</label>
                                <asp:TextBox ID="number" runat="server" type="tel" placeholder="Enter your number Input" />
                            </div>
                            <div class="col-lg-12">
                                <asp:button
                                    runat="server"
                                    OnClick="addContact"
                                    type="submit"
                                    Text="Submit Now"
                                    class="common-btn border-0 mt-3 border-radius-0">
                                </asp:button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact Form End -->
</asp:Content>
