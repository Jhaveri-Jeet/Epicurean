<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="epicurean.adminPages.contact.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">All Contacts</h4>
                            <div class="table-responsive">
                                <form runat="server">
                                    <table class="table">
                                        <thead style="text-align: center">
                                            <tr>
                                                <th>Sr No.</th>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Number</th>
                                                <th>Message</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody style="text-align: center">
                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%# (Container.ItemIndex + 1).ToString() %></td>
                                                        <td><%# Eval("FullName") %></td>
                                                        <td><%# Eval("Email") %></td>
                                                        <td><%# Eval("MobileNumber") %></td>
                                                        <td><%# Eval("Message") %></td>
                                                        <td>
                                                            <asp:LinkButton
                                                                runat="server"
                                                                CommandName="Delete"
                                                                CommandArgument='<%# Eval("Id") %>'
                                                                class="btn btn-inverse-info btn-rounded btn-icon"
                                                                OnClientClick="return confirm('Are you sure you want to delete this category?');"
                                                                OnClick="deleteContact">
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
