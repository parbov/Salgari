<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="SalgariSite.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">

        <div class="span12">
            <h1>Search Results for Query <i>“<%#: Query %>”</i>:</h1>
        </div>

        <asp:Repeater ID="rSearchResults" SelectMethod="SelectBook" ItemType="SalgariSite.Models.Book" runat="server">
            <HeaderTemplate>
                <div class="span12 search-results">
                    <ul>
            </HeaderTemplate>
            <ItemTemplate>
                <li><a href="/BookDetails?id=<%#: Item.Id %>">“<%#: Item.Title %>” 
                    </i></a> (Category: <%#: Item.Category.Name %>)</li>
            </ItemTemplate>
            <FooterTemplate>
                    </ul>
                </div>
            </FooterTemplate>
        </asp:Repeater>

    </div>

    <div class="back-link">
        <a href="/Bibliography.aspx">Back to books</a>
    </div>
</asp:Content>
