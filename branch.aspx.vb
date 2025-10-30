Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class branch
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ''Session.Add("tbl_employee", Me)
        'Dim cno1 As Integer = Request.QueryString("cno")
        'Dim pnm1 As String = Request.QueryString("pnm")
        'Dim nm1 As String = Request.QueryString("nm")
        'Session("c1") = cno1
        'MsgBox(cno1)
        'MsgBox(pnm1)
        'MsgBox(nm1)
        'cmd = New SqlCommand("select * from tbl_branch where Cat_No=@no", con)
        'cmd.Parameters.Add(New SqlParameter("@no", Session("c1")))
        'con.Open()
        Dim dr As SqlDataReader
        'dr = cmd.ExecuteReader
        'If dr.Read Then
        '    Literal2.Text = pnm1.ToString & nm1.ToString
        'End If
        'dr.Close()
        'con.Close()
        'Session("User_Id") = eno
        'Literal1.Text = Session("User_Id")
        ' Session("User_Type") = utype
        Label1.Text = Session("User_Type")
        Try
            cmd = New SqlCommand("select * from tbl_branch where Employee_No=@eno", con)
            cmd.Parameters.Add(New SqlParameter("@eno", Session("User_Id")))
            con.Open()
            dr = cmd.ExecuteReader
            If dr.Read Then
                Session("cat_no") = dr.GetInt32(5)
            End If
            dr.Close()
            con.Close()
        Catch ex As Exception
        End Try
    End Sub
End Class
