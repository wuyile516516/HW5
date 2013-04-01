
Partial Class Admin_adminDetails
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim delpro As String = e.Values("name").ToString()

        Response.Write("<span id='Label1'' style='height:30 px;width:500px;Z-INDEX: 302; LEFT: 500px; POSITION: absolute; TOP:200 px' > The Record ")
        Response.Write("<SPAN class = deletedPro>")
        Response.Write(delpro)
        Response.Write("</SPAN>")
        Response.Write(" has been deleted from database </span>")

        Response.AddHeader("Refresh", "5; URL = ./manageProduct.aspx")
  
    End Sub

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Dim inspro As String = e.Values("name").ToString()

        Response.Write("<span id='Label1'' style='height:20 px;width:500px;Z-INDEX: 302; LEFT: 500px; POSITION: absolute; TOP:200 px' > The Record ")
        Response.Write("<SPAN class = deletedPro>")
        Response.Write(inspro)
        Response.Write("</SPAN>")
        Response.Write(" has been added to database </span>")


        Response.AddHeader("Refresh", "5; URL = ./manageProduct.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./manageProduct.aspx")
    End Sub
End Class
