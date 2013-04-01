<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [shoes]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource3" 
    AllowSorting="True" style="margin-right: 0px" CssClass = "cssgridview">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Product Name" 
                SortExpression="name" />
            <asp:BoundField DataField="brand" HeaderText="Product Brand" 
                SortExpression="brand" />
            <asp:BoundField DataField="gender" HeaderText="Gender" 
                SortExpression="gender" />
            <asp:HyperLinkField DataNavigateUrlFields="productID" 
                DataNavigateUrlFormatString="productDetails.aspx?productID={0}" 
                Text="View Details" />
        </Columns>
    </asp:GridView>
</asp:Content>

