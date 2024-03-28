<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="add-category.aspx.cs" Inherits="epicurean.adminPages.category.add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="content-wrapper">
            <form runat="server">
                <div class="row">
                    <div class="col-md-9 grid-margin stretch-card" style="display: block; margin-left: auto; margin-right: auto;">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Category</h4>
                                <p class="card-description">Add Category</p>
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">@</span>
                                        </div>
                                        <asp:TextBox
                                            autofocus
                                            ID="name"
                                            type="text"
                                            class="form-control"
                                            placeholder="Category Name: "
                                            runat="server" />
                                    </div>
                                    <asp:Button
                                        runat="server"
                                        ID="addCategoryBtn"
                                        class="btn btn-inverse-primary btn-rounded btn-icon mt-5"
                                        Text="Submit"
                                        OnClick="addCategory" />
                                </div>
                            </div>
                        </div>
                    </div>
            </form>
        </div>
    </div>
</asp:Content>
