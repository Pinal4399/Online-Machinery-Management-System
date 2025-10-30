Imports System.Web.Configuration
Imports System.Data.SqlClient
Imports System.Data
Partial Class changepwd
    Inherits System.Web.UI.Page

    Protected Sub btncpwd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncpwd.Click
        Try
            'If Session("User_Type") = "Admin" Then
            Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
            Dim cmd As New SqlCommand("update tbl_employee set Password=@pwd where Employee_No=@id and Password=@curpwd", con)
            'cmd.Parameters.Add(New SqlParameter("@id", Employee_No))
            cmd.Parameters.Add(New SqlParameter("@id", Convert.ToString(Session("User_Id"))))
            ' cmd.Parameters.Add(New SqlParameter("@conpwd", txtcpwd.Text))
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
        'End If
    End Sub

    Protected Sub btncon_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncon.Click
        If Session("User_Type") = "Admin" Then
            Response.Redirect("welcomeadmin.aspx")
        End If
        If Session("User_Type") = "Branch Manager" Then
            Response.Redirect("branch.aspx")
        End If
        If Session("User_Type") = "Owner" Then
            Response.Redirect("welcomeowner.aspx")
        End If
        If Session("User_Type") = "Technician" Then
            Response.Redirect("welcometechnician.aspx")
        End If
     
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label9.Text = Session("User_Id")
    End Sub


End Class
