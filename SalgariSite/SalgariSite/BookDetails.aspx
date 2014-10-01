<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="SalgariSite.BookDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" SelectMethod="SelectBook" ItemType="SalgariSite.Models.Book">
        <ItemTemplate>

            <header>
                <h1>Book Details</h1>
                <p class="book-title"><%#: Item.Title %></p>
                <p class="book-engTitle"><i>English Title <%#: Item.EngTitle %></i></p>
                <p class="book-year">
                    <i>Year <%#: Item.Year %></i>
                </p>
                <p><asp:Image runat="server" ImageUrl="<%# Item.Cover %>" /></p>
                
            </header>

            <div class="row-fluid">
                <div class="span12 book-description">
                    <p><%#: Item.Description %></p>
                </div>
            </div>

        </ItemTemplate>
    </asp:FormView>

    <div class="back-link">
        <a href="/Bibliography.aspx">Back to books</a>
    </div>
</asp:Content>
