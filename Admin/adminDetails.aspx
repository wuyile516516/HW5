<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="adminDetails.aspx.vb" Inherits="Admin_adminDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
    DataKeyNames="productID" DataSourceID="SqlDataSource1" Height="50px" 
    Width="381px" >
    <Fields>
        <asp:BoundField DataField="productID" HeaderText="ProductID" ReadOnly="True" 
            SortExpression="productID" />
        <asp:BoundField DataField="name" HeaderText="Product Name" 
            SortExpression="name" />
        <asp:BoundField DataField="size" HeaderText="Product Size" 
            SortExpression="size" />
        <asp:BoundField DataField="brand" HeaderText="Product Brand" 
            SortExpression="brand" />
        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
        <asp:BoundField DataField="category" HeaderText="Category" 
            SortExpression="category" />
        <asp:BoundField DataField="gender" HeaderText="Gender" 
            SortExpression="gender" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
            ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [shoes] WHERE [productID] = @productID" 
    InsertCommand="INSERT INTO [shoes] ([productID], [name], [size], [brand], [price], [category], [gender]) VALUES (@productID, @name, @size, @brand, @price, @category, @gender)" 
    SelectCommand="SELECT [productID], [name], [size], [brand], [price], [category], [gender] FROM [shoes] WHERE ([productID] = @productID)" 
    UpdateCommand="UPDATE [shoes] SET [name] = @name, [size] = @size, [brand] = @brand, [price] = @price, [category] = @category, [gender] = @gender WHERE [productID] = @productID">
    <DeleteParameters>
        <asp:Parameter Name="productID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="productID" Type="Int32" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="size" Type="String" />
        <asp:Parameter Name="brand" Type="String" />
        <asp:Parameter Name="price" Type="Decimal" />
        <asp:Parameter Name="category" Type="String" />
        <asp:Parameter Name="gender" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:QueryStringParameter Name="productID" QueryStringField="productID" 
            Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="size" Type="String" />
        <asp:Parameter Name="brand" Type="String" />
        <asp:Parameter Name="price" Type="Decimal" />
        <asp:Parameter Name="category" Type="String" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="productID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

