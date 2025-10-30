Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class tools_info
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click

        Try
            cmd = New SqlCommand("insert into tbl_tool_info values(@nm)", con)
            ' cmd.Parameters.Add(New SqlParameter("@no", Convert.ToInt32(Label3.Text)))
            cmd.Parameters.Add(New SqlParameter("@nm", Convert.ToString(txtnm.Text)))
            con.Open()
            Dim cnt As Integer = cmd.ExecuteNonQuery()
            If cnt = 1 Then
                MsgBox("new tools added", MsgBoxStyle.OkOnly, " Add")
            End If
            con.Close()
            Response.Redirect("branch.aspx")

        Catch ex As Exception
        End Try
        clearcontrols()
    End Sub
    Sub clearcontrols()
        txtnm.Text = ""
       
    End Sub


   
End Class
