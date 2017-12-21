﻿<%--*******************************
    * Name: Eduardo Go Matsushita *
    * Student Id: 300904663       *
    *******************************--%>

<%@ Page Title="Search a Book" Language="C#" MasterPageFile="~/LibraryCollection.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">
    <div class="col-sm-offset-2 col-sm-8">
        <p>Genre</p>
        <asp:dropdownlist ID="genreDropdownList" runat="server" DataSourceID="genreDataSource" DataTextField="genre" DataValueField="genre" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="GenreDropdownList_SelectedIndexChanged" >
            <asp:ListItem>All</asp:ListItem>
        </asp:dropdownlist>
        <asp:sqldatasource ID="genreDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryCollection %>" SelectCommand="SELECT DISTINCT [genre] FROM [booksCol]"></asp:sqldatasource>

        <p>Name of A Friend</p>
        <asp:dropdownlist ID="friendDropdownList" runat="server" DataSourceID="friendDataSource" DataTextField="nameFriend" DataValueField="nameFriend" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="FriendDropdownList_SelectedIndexChanged" >
            <asp:ListItem>All</asp:ListItem>
        </asp:dropdownlist>
        <asp:sqldatasource ID="friendDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryCollection %>" SelectCommand="SELECT DISTINCT [nameFriend] FROM [booksCol]"></asp:sqldatasource>

        <asp:gridview ID="searchGrid" runat="server"  AutoGenerateColumns="False" DataSourceID="booksColDataSource">
            <Columns>
                <asp:BoundField DataField="title" HeaderText="Title" />
                <asp:BoundField DataField="genre" HeaderText="Genre" />
                <asp:BoundField DataField="nameFriend" HeaderText="Friend" />
            </Columns>
        </asp:gridview>

        <asp:SqlDataSource ID="booksColDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryCollection %>" SelectCommand="SELECT * FROM [booksCol]">
            <SelectParameters>
                <asp:ControlParameter ControlID="genreDropdownList" DefaultValue="All" Name="genre" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="friendDropdownList" DefaultValue="All" Name="nameFriend" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

<%--*******************************
    * Name: Eduardo Go Matsushita *
    * Student Id: 300904663       *
    *******************************--%>