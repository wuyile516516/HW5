<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="productDetails.aspx.vb" Inherits="productDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [shoes] WHERE ([productID] = @productID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="productID" QueryStringField="productID" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataSourceID="SqlDataSource1" Height="50px" Width="331px" 
        AllowPaging="True" DataKeyNames="productID" CssClass = "cssgridview">
        <Fields>
            <asp:BoundField DataField="productID" HeaderText="productID" 
                SortExpression="productID" ReadOnly="True" />
            <asp:BoundField DataField="name" HeaderText="name" 
                SortExpression="name" />
            <asp:BoundField DataField="brand" HeaderText="brand" 
                SortExpression="brand" />
            <asp:BoundField DataField="size" HeaderText="size" 
                SortExpression="size" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="category" HeaderText="category" 
                SortExpression="category" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

