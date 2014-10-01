<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Films.aspx.cs" Inherits="SalgariSite.Films" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="span1">
            <h1>Films</h1>
            <p>
                The IMDB lists over three-dozen adaptations of Mr. Salgari's works, films as well as several TV miniseries. There have also been several documentaries and animated series. Here are some of the more famous adaptations.
            </p>
        </div>
    </div>

    <asp:Repeater ID="FilmsRepeater" runat="server"  ItemType="SalgariSite.Models.Film">
                    <ItemTemplate> 
                        <li><%#: Item.Title %></li>
                       <div> <asp:Image runat="server" ImageUrl="<%# Item.Cover %>" /></div>
                        <div><%#: Item.Description %></div>
                        <p><asp:Image runat="server" ImageUrl="<%# Item.Img1 %>" /><asp:Image runat="server" ImageUrl="<%# Item.Img2 %>" /><asp:Image runat="server" ImageUrl="<%# Item.Img3 %>" /></p>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:Label runat="server" ID="lblNoRecords" Visible="False"><i>No books in this category.</i></asp:Label>

</asp:Content>
