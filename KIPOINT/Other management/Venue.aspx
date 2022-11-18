﻿<%@ Page Title="Venue" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Venue.aspx.cs" Inherits="KIPOINT.Other_management.Venue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
         table {
          border-collapse: collapse;
          border-spacing: 0;
        }

        td,
        th {
            padding: 3px;
        }
        .auto-style12 {
            height: 22px;
            }
        .auto-style14 {
            height: 22px;
            width: 201px;
        }
        .auto-style15 {
            height: 20px;
            width: 201px;
        }
    
        .auto-style16 {
            width: 450px;
            height: 22px;
        }
        .auto-style17 {
            width: 449px;
            height: 22px;
        }
    
    </style>

   <div class="card pb-3">
        <div class="container-fluid">
            <div class="card-header mt-5 mb-5" style="background:#666666;">
                <h4 style="color:#ffffff">Venue List</h4>
            </div>
            <div class="card-card-header">
                
                <div class="card-card-header">
                    <table style="width: 100%; height: 130px">
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style14">&nbsp;</td>
                            <td class="auto-style12" colspan="2">&nbsp;</td>
                            <td style="height: 22px; width: 450px"">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style15">
                Venue Name*</td>
                            <td class="auto-style12" colspan="2">
                <asp:TextBox ID="txt_venue" runat="server" Height="25px" Width="301px"></asp:TextBox>
                            </td>
                            <td style="height: 22px; width: 450px"">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
            <td class="auto-style14">
                Capacity of Venue*</td>
                            <td class="auto-style12" colspan="2">
                <asp:TextBox ID="txt_capacity" runat="server" Height="25px" Width="301px" TextMode="Number"></asp:TextBox>
                            </td>
                            <td class="auto-style12">
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
            <td class="auto-style14">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
                            <td class="auto-style12" colspan="2"></td>
                            <td class="auto-style12">
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style14">&nbsp;</td>
                            <td class="auto-style12" colspan="2">&nbsp;</td>
                            <td style="height: 22px; width: 450px"">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style14">&nbsp;</td>
                            <td class="auto-style12">
                <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="150px" OnClick="btn_submit_Click" class="btn btn-success"/>
                            </td>
                            <td class="auto-style12">
                <asp:Button ID="btn_clear" runat="server" Text="Clear" Width="150px" OnClick="btn_clear_Click" class="btn btn-danger" />
                            </td>
                            <td class="auto-style16"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style14">&nbsp;</td>
                            <td class="auto-style12" colspan="2">&nbsp;</td>
                            <td style="height: 22px; width: 450px"">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td colspan="3" rowspan="5">
                <asp:GridView ID="venue_view" runat="server" DataKeyNames="id"  OnRowDataBound="OnRowDataBound_venue"
                OnRowEditing="OnRowEditing_venue" OnRowCancelingEdit="OnRowCancelingEdit_venue" OnRowUpdating="OnRowUpdating_venue"
                OnRowDeleting="OnRowDeleting_venue" EmptyDataText="No records has been added." AutoGenerateEditButton="True"
                ShowHeaderWhenEmpty="True" AutoGenerateDeleteButton="True" Width="93%" Height="200px" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:TemplateField HeaderText="Venue Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_venue" runat="server"  Text='<% #Bind("venue") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_venue" runat="server" Text='<% #Eval("venue") %>'></asp:Label>
                            </ItemTemplate>
                            
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Capacity">
                             <EditItemTemplate>
                                <asp:TextBox ID="txt_capacity" runat="server"  Text='<% #Bind("capacity") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_capacity" runat="server" Text='<% #Eval("capacity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Top" Font-Bold="True" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                            </td>
                            <td style="height: 22px; width: 450px"">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td style="height: 22px; width: 450px"">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td style="height: 22px; width: 450px"">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td style="height: 22px; width: 450px"">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td style="height: 22px; width: 450px"">&nbsp;</td>
                        </tr>
                    </table>
                </div>
                
            </div>
        </div>
    </div>


</asp:Content>
