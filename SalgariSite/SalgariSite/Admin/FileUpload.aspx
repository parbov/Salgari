<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="SalgariSite.Admin.FileUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <asp:FileUpload ID="FileUploadControl" runat="server" />
        <asp:Button runat="server" ID="UploadButton" Text="Upload" OnClick="UploadButton_Click" />
        <br />
        <br />
        <asp:Label runat="server" ID="StatusLabel" Text="Upload status: " />
    
</asp:Content>
