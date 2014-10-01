<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditFilms.aspx.cs" Inherits="SalgariSite.Admin.EditFilms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Edit Films</h1>
    <asp:GridView ID="grdFilms" runat="server" ItemType="SalgariSite.Models.Film"
        SelectMethod="SelectFilms" AutoGenerateColumns="False" DataKeyNames="Id" OnRowEditing="grdFilms_RowEditing"
        CssClass="gridview" AllowSorting="True" AllowPaging="True" PageSize="5" OnSelectedIndexChanged="grdFilms_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Id" />
            <asp:BoundField DataField="Cover" HeaderText="Cover" SortExpression="Id" />
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
    <asp:Panel runat="server" ID="pnlFilm" Visible="False" CssClass="panel">
        <h2 runat="server" id="lblFilmHeader">Create New Film</h2>
        
        <label>
            <asp:Label runat="server" Text="Title:"></asp:Label>
            <asp:TextBox ID="txtTitle" runat="server" placeholder="Enter title..." MaxLength="256"></asp:TextBox>
            <asp:Label runat="server" Text="Cover:"></asp:Label>
            <asp:TextBox ID="txtCover" runat="server" placeholder="Enter cover path..." MaxLength="256"></asp:TextBox>
            <asp:Label runat="server" Text="Image:"></asp:Label>
            <asp:TextBox ID="txtImg1" runat="server" placeholder="Enter cover path..." MaxLength="256"></asp:TextBox>
            <asp:Label runat="server" Text="Image:"></asp:Label>
            <asp:TextBox ID="txtImg2" runat="server" placeholder="Enter cover path..." MaxLength="256"></asp:TextBox>
            <asp:Label runat="server" Text="Image:"></asp:Label>
            <asp:TextBox ID="txtImg3" runat="server" placeholder="Enter cover path..." MaxLength="256"></asp:TextBox>
        </label>
        <label>
            <asp:Label runat="server" Text="Description:"></asp:Label>
            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" placeholder="Enter film description ..." Height="160"></asp:TextBox>
            </label>
        <br />

        <asp:LinkButton ID="btnSave" runat="server" CssClass="link-button" OnClick="btnSave_Click"></asp:LinkButton>
        &nbsp;<asp:LinkButton ID="btnCancel" runat="server" CssClass="link-button" OnClick="btnCancel_Click">Cancel</asp:LinkButton>
    </asp:Panel>
    
    <div class="back-link">
        <a href="/Films">Back to Films</a>
    </div>
</asp:Content>
