<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="epicurean.adminPages.product.product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">All Products</h4>
                            <a href="/adminPages/product/add-product" class="btn btn-inverse-primary btn-rounded btn-icon" style="float: right; margin-top: -50px">
                                <i class="ti-plus"></i>
                            </a>
                            <div class="table-responsive">
                                <form runat="server">
                                    <table class="table">
                                        <thead style="text-align: center">
                                            <tr>
                                                <th>Sr No.</th>
                                                <th>Category Name</th>
                                                <th>Product Name</th>
                                                <th>Product Description</th>
                                                <th>Quantity Per Piece</th>
                                                <th>Price Per Piece</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody style="text-align: center">
                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%# (Container.ItemIndex + 1).ToString() %></td>
                                                        <td><%# Eval("CategoryName") %></td>
                                                        <td><%# Eval("Name") %></td>
                                                        <td><%# Eval("Description") %></td>
                                                        <td><%# Eval("Quantity") %></td>
                                                        <td><%# Eval("Price") %></td>
                                                        <td>
                                                            <a href="/adminPages/product/update-product.aspx?id=<%# Eval("Id") %>" class="btn btn-inverse-dark btn-rounded btn-icon">
                                                                <i class="mdi mdi-debug-step-out"></i>
                                                            </a>
                                                            <asp:LinkButton
                                                                runat="server"
                                                                CommandName="Delete"
                                                                CommandArgument='<%# Eval("Id") %>'
                                                                class="btn btn-inverse-info btn-rounded btn-icon"
                                                                OnClientClick="return confirm('Are you sure you want to delete this product?');"
                                                                OnClick="deleteProduct">
                                                                    <i class="mdi mdi-delete"></i>
                                                            </asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
</asp:Content>
