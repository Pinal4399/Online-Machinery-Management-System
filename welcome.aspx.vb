
Partial Class welcome
    Inherits System.Web.UI.Page
    Dim uid As String
    Dim unm As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Session.Add("tbl_user", Me)
        ' Dim uid As String = Request.QueryString("uid")
        'Dim name As String = Request.QueryString("uname")
        'Dim pno As Decimal = Request.QueryString("pno")
        'Dim userid As String = Request.QueryString("userid")
        'Session("uid") = uid
        'Session("nm") = name
        ' Session("pno") = pno
        'Session("userid") = userid
        'Session("User_Type") = "Customer"
        Literal2.Text = Session("Email_Id")
        Literal1.Text = Session("uname")
    End Sub

  
End Class
