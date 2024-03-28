<%@ Page Title="" Language="C#" MasterPageFile="~/pages/main.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="epicurean.pages.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="site-wrapper">
        <div class="reservation-area reservation-area-padding" id="reservation">
            <div class="container">
                <div class="row align-items-center justify-content-center gy-4">
                    <div class="col-lg-6">
                        <form class="booking-form" runat="server">
                            <div class="row gy-4">
                                <div class="col-md-12">
                                    <div class="input1_wrapper">
                                        <h2 style="color: white !important; text-align: center">Register to Epicurean
                                        </h2>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input1_wrapper">
                                        <asp:TextBox
                                            runat="server"
                                            ID="name"
                                            type="text"
                                            autofocus
                                            class="input"
                                            placeholder="Your Name"
                                            required />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input1_wrapper">
                                        <asp:TextBox
                                            runat="server"
                                            ID="email"
                                            type="email"
                                            class="input"
                                            placeholder="Your Email"
                                            required />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input1_wrapper">
                                        <asp:TextBox
                                            runat="server"
                                            ID="password"
                                            type="text"
                                            class="input"
                                            placeholder="Your Password"
                                            required />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <asp:button
                                        runat="server"
                                        text="Register"
                                        type="submit"
                                        OnClick="registerUser"
                                        class="common-btn border-0 w-100 text-capitalize"
                                    />
                                </div>
                                <div class="col-md-12">
                                    <h2 class="h5 mt-4 text_color_white">
                                        <a href="./login">If you are in the Epicurean family</a>
                                    </h2>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

