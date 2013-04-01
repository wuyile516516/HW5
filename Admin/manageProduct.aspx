<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="manageProduct.aspx.vb" Inherits="Admin_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="productID" 
            DataSourceID="SqlDataSource1" CssClass = "cssgridview">
            <Columns>
                <asp:BoundField DataField="productID" HeaderText="ProductID" ReadOnly="True" 
                    SortExpression="productID" />
                <asp:BoundField DataField="name" HeaderText="Product Name" 
                    SortExpression="name" />
                <asp:BoundField DataField="brand" HeaderText="Product Brand" 
                    SortExpression="brand" />
                <asp:HyperLinkField DataNavigateUrlFields="productID" 
                    DataNavigateUrlFormatString="adminDetails.aspx?productID={0}" 
                    Text="Change/Delete/Add New" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [shoes] WHERE [productID] = @productID" 
            InsertCommand="INSERT INTO [shoes] ([productID], [name], [brand], [size], [gender], [category], [price]) VALUES (@productID, @name, @brand, @size, @gender, @category, @price)" 
            SelectCommand="SELECT * FROM [shoes]" 
            UpdateCommand="UPDATE [shoes] SET [name] = @name, [brand] = @brand, [size] = @size, [gender] = @gender, [category] = @category, [price] = @price WHERE [productID] = @productID">
            <DeleteParameters>
                <asp:Parameter Name="productID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="productID" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="size" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="size" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="productID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </p>
</asp:Content>

