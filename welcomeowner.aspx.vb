
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Session.Add("tbl_employee", Me)
        'Dim eno As String = Request.QueryString("eno")

        Literal1.Text = Session("User_Id")
        'Dim utype As String = Request.QueryString("utype")
        ' Session("User_Type") = utype
        Label1.Text = Session("User_Type")
    End Sub
End Class
