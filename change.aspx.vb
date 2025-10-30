Imports System.Web.Configuration
Imports System.Data.SqlClient
Imports System.Data
Partial Class change
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label9.Text = Session("T_Email_Id")
    End Sub

    Protected Sub btncpwd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncpwd.Click
        Try
            Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
            Dim cmd As New SqlCommand("update tbl_technician set Password=@pwd where T_Email_Id=@eid and Password=@curpwd", con)
            'cmd.Parameters.Add(New SqlParameter("@id", Employee_No))
            cmd.Parameters.Add(New SqlParameter("@eid", Session("T_Email_Id")))
            'cmd.Parameters.Add(New SqlParameter("@conpwd", txtcpwd.Text))
            cmd.Parameters.Add(New SqlParameter("@pwd", txtnpwd.Text))
            cmd.Parameters.Add(New SqlParameter("@curpwd", txtcurpwd.Text))

            con.Open()
            Dim cnt As Integer
            cnt = cmd.ExecuteNonQuery
            con.Close()
            If cnt >= 1 Then
                MultiView1.ActiveViewIndex = 1
                Label5.Text = "Successfully change password"
            Else
                Label5.Text = "invalid user"
            End If
        Catch ex As Exception
        End Try
    End Sub

    Protected Sub btncon_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncon.Click
        Response.Redirect("welcometechnician.aspx")
    End Sub
End Class
