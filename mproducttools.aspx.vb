Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click

        Dim lstitem As ListItem
        Try
            For Each lstitem In CheckBoxList1.Items
                If lstitem.Selected Then
                    cmd = New SqlCommand("insert into tbl_mproduct_tools values(@tnm,@pnm)", con)
                    cmd.Parameters.Add(New SqlParameter("@pnm", DropDownList1.SelectedItem.Text))
                    cmd.Parameters.Add(New SqlParameter("@tnm", lstitem.Text))
                    con.Open()
                    cmd.ExecuteNonQuery()
                    con.Close()
                End If
            Next
            'con.Open()
            'Dim cnt As Integer = cmd.ExecuteNonQuery
            ' If cnt = 1 Then
            'MsgBox("New  is Successfully added", MsgBoxStyle.OkOnly, " Add")
            ' End If
            ' con.Close()
            Response.Redirect("branch.aspx")
        Catch ex As Exception
        End Try
    End Sub
End Class
