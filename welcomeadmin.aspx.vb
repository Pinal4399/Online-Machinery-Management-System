Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Partial Class welcomeadmin
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim str As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
      
        ' Session.Add("tbl_employee", Me)
        'Dim eno As String = Request.QueryString("eno")
        ' Session("User_Id") = eno
        Label1.Text = Session("User_Id")
        'Dim email As String = Request.QueryString("uid")
        'Session("E_Email_Id") = email
        Literal1.Text = Session("E_Email_Id")
        'Dim utype As String = Request.QueryString("utype")
        ' Session("User_Type") = utype
        Label2.Text = Session("User_Type")
        Label3.Text = Session("uname")

        'Dim link As HyperLink
        'link = Page.Master.FindControl("HyperLink6")
        ' link.Text = "Log Out"
    End Sub
End Class
