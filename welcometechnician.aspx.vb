
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal1.Text = Session("T_Email_Id")
        Literal2.Text = Session("User_Id")
    End Sub
End Class
