<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SalgariSite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
        <asp:Image runat="server" ID="banner" ImageUrl="~/images/emilio_salgari_documentary.gif" />
        <p class="lead">This website is dedicated to my favourite childhood author Emilio Salgari</p>
        
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Explore Bibliography</h2>
            <p>
                Find your favourite story
            </p>
            <p>
                <a class="btn btn-default" href="Bibliography">Go &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Filmography</h2>
            <p>
                See which of your favourite stories were filmed
            </p>
            <p>
                <a class="btn btn-default" href="Films">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2> Mr. Salgari</h2>
            <p>
                Learn about the life of your favourite author
            </p>
            <p>
                <a class="btn btn-default" href="Bio">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
