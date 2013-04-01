
Partial Class Admin_default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Response.Write("<span id='Label1'' style='height:30 px;width:500px;Z-INDEX: 302; LEFT: 500px; POSITION: absolute; TOP:250 px' > Welcome Back Manager ")
        Response.Write(Environ("username"))
        Response.Write("</span>")
        Response.AddHeader("Refresh", "3; URL = ./manageProduct.aspx")
    End Sub
End Class
