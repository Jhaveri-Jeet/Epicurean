﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="update-role.aspx.cs" Inherits="epicurean.adminPages.role.update_role" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="content-wrapper">
            <form runat="server">
                <div class="row">
                    <div class="col-md-9 grid-margin stretch-card" style="display: block; margin-left: auto; margin-right: auto;">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Role</h4>
                                <p class="card-description">Update Role</p>
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">@</span>
                                        </div>
                                        <asp:TextBox
                                            autofocus
                                            ID="updatedName"
                                            type="text"
                                            class="form-control"
                                            placeholder="Role Name: "
                                            runat="server" />
                                    </div>
                                    <asp:Button
                                        runat="server"
                                        ID="updateRoleBtn"
                                        class="btn btn-inverse-primary btn-rounded btn-icon mt-5"
                                        Text="Update"
                                        OnClick="updateRole" />
                                </div>
                            </div>
                        </div>
                    </div>
            </form>
        </div>
    </div>
</asp:Content>
