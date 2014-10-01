<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="SalgariSite.Admin.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1>Edit Categories</h1>
    <asp:GridView ID="grdBooks" runat="server" ItemType="SalgariSite.Models.Book"
        SelectMethod="SelectBooks" AutoGenerateColumns="False" DataKeyNames="Id" OnRowEditing="grdBooks_OnRowEditing"
        CssClass="gridview" AllowSorting="True" AllowPaging="True" PageSize="5" OnSelectedIndexChanged="grdBooks_OnSelectedIndexChanged" OnRowDataBound="grdBooks_RowDataBound" OnSorting="grdBooks_Sorting">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"/>
            <asp:BoundField DataField="EngTitle" HeaderText="English Title" SortExpression="EngTitle"/>
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Cover" HeaderText="Cover"  SortExpression="Cover" />
            <asp:BoundField DataField="Category.Name" HeaderText="Category" SortExpression="Category.Name" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:LinkButton ID="btnEdit" CommandName="Edit" runat="server" CssClass="link-button">Edit</asp:LinkButton>
                    <asp:LinkButton ID="btnDelete" CommandName="Select" runat="server" CssClass="link-button">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <div class="create-link">
        <asp:LinkButton runat="server" ID="btnCreateNew" CssClass="link-button" OnClick="btnCreateNew_Click">Create New</asp:LinkButton>
    </div>
    <asp:Panel runat="server" ID="pnlBooks" Visible="False" CssClass="panel">

        <h2 runat="server" id="lblHeader">Create New Book</h2>
        <label>
            <asp:Label runat="server" Text="Title:"></asp:Label>
            <asp:TextBox ID="txtTitle" runat="server" placeholder="Enter book title ..." MaxLength="256"></asp:TextBox>
        </label>

        <asp:Panel ID="pnlAdditionalInfo" runat="server" Visible="True">
            <label>
                <asp:Label runat="server" Text="English Title:"></asp:Label>
                <asp:TextBox ID="txtEngTitle" runat="server" placeholder="Enter book english title ..." MaxLength="256"></asp:TextBox>
            </label>
            <p>
            <label>
                <asp:Label runat="server" Text="Year:"></asp:Label>
                <asp:TextBox ID="txtYear" runat="server" placeholder="Enter book year ..." MaxLength="256"></asp:TextBox>
            </label>
</p>
            <p>
            <label>
                <asp:Label runat="server" Text="Cover Image:"></asp:Label>
                <asp:TextBox ID="txtCover" runat="server" placeholder="Enter book cover image ..." MaxLength="256"></asp:TextBox>
            </label>
            </p>
            <p>
            <label>
                <asp:Label runat="server" Text="Description:"></asp:Label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" placeholder="Enter book description ..." Height="160"></asp:TextBox>
            </label>
            </p>
            <label>
                <asp:Label runat="server" Text="Category:"></asp:Label>
                <asp:DropDownList ID="ddlCategory" runat="server" SelectMethod="SelectCategories" DataTextField="Name" DataValueField="Id"></asp:DropDownList>
            </label>
        </asp:Panel>

        <asp:LinkButton ID="btnSave" runat="server" CssClass="link-button" OnClick="btnSave_Click"></asp:LinkButton>
        &nbsp;<asp:LinkButton ID="btnCancel" runat="server" CssClass="link-button" OnClick="btnCancel_Click">Cancel</asp:LinkButton>
    </asp:Panel>

    <div class="back-link">
        <a href="/">Back to books</a>
    </div>
</asp:Content>
