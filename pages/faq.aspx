<%@ Page Title="" Language="C#" MasterPageFile="~/pages/main.Master" AutoEventWireup="true" CodeBehind="faq.aspx.cs" Inherits="epicurean.pages.faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-info text-center">
                        <h1 class="text-white">FAQ</h1>
                        <p class="text-white mt-3">
                            <a href="index">Home</a><i class="bi bi-chevron-right ms-2 me-2"></i>FAQ
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Breadcrumb End -->

    <!-- Faq -->

    <div class="faq-area pt-120 pb-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center">
                        <span>Contact Us</span>
                        <h2 class="mt-2">Have Any Questions?</h2>
                    </div>
                </div>
            </div>
            <div class="row pt-60 gy-5">
                <div class="col-lg-12">
                    <div
                        class="accordion faq-wrap"
                        id="accordionPanelsStayOpenExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                                <button
                                    class="accordion-button"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseOne"
                                    aria-expanded="true"
                                    aria-controls="panelsStayOpen-collapseOne">
                                    What is the project idea?
                                </button>
                            </h2>
                            <div
                                id="panelsStayOpen-collapseOne"
                                class="accordion-collapse collapse show"
                                aria-labelledby="panelsStayOpen-headingOne">
                                <div class="accordion-body">
                                    The project idea is to establish a unique and vibrant restaurant that caters to EPICUREAN enthusiasts, providing a memorable dining experience in the heart of Half Line.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                                <button
                                    class="accordion-button collapsed"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseTwo"
                                    aria-expanded="false"
                                    aria-controls="panelsStayOpen-collapseTwo">
                                    Can a reserve table depreciate in value?
                                </button>
                            </h2>
                            <div
                                id="panelsStayOpen-collapseTwo"
                                class="accordion-collapse collapse"
                                aria-labelledby="panelsStayOpen-headingTwo">
                                <div class="accordion-body">
                                   No, a reserved table does not depreciate in value; rather, it ensures a premium dining experience, guaranteeing customers a designated space and timely service at our restaurant in Half Line.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                                <button
                                    class="accordion-button collapsed"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseThree"
                                    aria-expanded="false"
                                    aria-controls="panelsStayOpen-collapseThree">
                                    Is an older order as good a value as a new order food?
                                </button>
                            </h2>
                            <div
                                id="panelsStayOpen-collapseThree"
                                class="accordion-collapse collapse"
                                aria-labelledby="panelsStayOpen-headingThree">
                                <div class="accordion-body">
                                    Our commitment to quality remains unwavering. Whether it's an older order or a new one, we ensure each dish from our restaurant in Half Line is crafted with the freshest ingredients and maintains the highest standards of taste and presentation.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="panelsStayOpen-headingFour">
                                <button
                                    class="accordion-button collapsed"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseFour"
                                    aria-expanded="false"
                                    aria-controls="panelsStayOpen-collapseFour">
                                    Do you require a deposit to begin design work?
                                </button>
                            </h2>
                            <div
                                id="panelsStayOpen-collapseFour"
                                class="accordion-collapse collapse"
                                aria-labelledby="panelsStayOpen-headingFour">
                                <div class="accordion-body">
                                   Yes, a deposit is required to initiate design work for our restaurant in Half Line, ensuring a dedicated commitment to creating a tailored and visually appealing space that aligns with your vision.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="panelsStayOpen-headingFive">
                                <button
                                    class="accordion-button collapsed"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseFive"
                                    aria-expanded="false"
                                    aria-controls="panelsStayOpen-collapseFive">
                                    How we can verify the reservation?
                                </button>
                            </h2>
                            <div
                                id="panelsStayOpen-collapseFive"
                                class="accordion-collapse collapse"
                                aria-labelledby="panelsStayOpen-headingFive">
                                <div class="accordion-body">
                                   To confirm your reservation at our restaurant in Half Line, we will send a confirmation email or message with the details. Please respond to confirm, ensuring a seamless and personalized dining experience.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Faq End -->
</asp:Content>
