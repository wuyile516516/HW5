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
   <div class = "detailcontrol">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataSourceID="SqlDataSource1" Height="50px" Width="331px" 
        AllowPaging="True" DataKeyNames="productID" CssClass = "cssdetailsview">
        <Fields>
            <asp:BoundField DataField="name" HeaderText="Product Name" 
                SortExpression="name" />
            <asp:BoundField DataField="brand" HeaderText="Product Brand" 
                SortExpression="brand" />
            <asp:BoundField DataField="size" HeaderText="Product Size" 
                SortExpression="size" />
            <asp:BoundField DataField="gender" HeaderText="Gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="category" HeaderText="Category" 
                SortExpression="category" />
            <asp:BoundField DataField="price" HeaderText="Price" 
                SortExpression="price" />
        </Fields>
    </asp:DetailsView>
    </div>  

</asp:Content>

