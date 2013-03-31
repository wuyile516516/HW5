<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [shoes]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="productId" HeaderText="productId" 
                SortExpression="productId" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="brancd" HeaderText="brancd" 
                SortExpression="brancd" />
            <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="category" HeaderText="category" 
                SortExpression="category" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
    </asp:GridView>
</asp:Content>

