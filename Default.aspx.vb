Public Class _Default
    Inherits System.Web.UI.Page
    Private Sub btnSearch_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSearch.ServerClick
        ' Add code to open the registration formnn
        ClientScript.RegisterStartupScript(Me.GetType(), "Searching", "alert('Seacrh not enabled yet');", True)
    End Sub
    Private Sub btnRegister_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnRegister.ServerClick
        ' Add code to open the registration formnn
        ClientScript.RegisterStartupScript(Me.GetType(), "NewCustomer", "alert('User Info saved successfully');", True)
    End Sub

    Private Sub btnNewProduct_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnNewProduct.ServerClick
        ' Add code to open the new product form
        ClientScript.RegisterStartupScript(Me.GetType(), "NewProduct", "alert('New Product Added');", True)
    End Sub

    Private Sub btnPlaceOrder_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnPlaceOrder.ServerClick
        ' Add code to open the order placement form
        ClientScript.RegisterStartupScript(Me.GetType(), "OpenOrderPlacementForm", "alert('Order Placed Successfully');", True)
    End Sub
End Class
