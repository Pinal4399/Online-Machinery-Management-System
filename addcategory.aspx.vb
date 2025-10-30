Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class addcategory
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim n As Integer
    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Try
            cmd = New SqlCommand("insert into tbl_cat values(@cno,@cnm,@desc)", con)
            cmd.Parameters.Add(New SqlParameter("@cno", Convert.ToDecimal(Label4.Text)))
            cmd.Parameters.Add(New SqlParameter("@cnm", Convert.ToString(txtcnm.Text)))
            cmd.Parameters.Add(New SqlParameter("@desc", Convert.ToString(txtdesc.Text)))
            
            con.Open()
            Dim cnt As Integer = cmd.ExecuteNonQuery()
            If cnt = 1 Then
                MsgBox("New category is Successfully added", MsgBoxStyle.OkOnly, " Add category")
            End If
            con.Close()
            Response.Redirect("welcomeadmin.aspx")
        Catch ex As Exception
        End Try
        clearcontrols()
    End Sub
    Sub clearcontrols()
        txtcnm.Text = ""

        txtdesc.Text = ""
     
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cmd = New SqlCommand
        cmd.CommandText = "select isnull(max(Cat_No),0)as Cat_No from tbl_cat"
        cmd.Connection = con
        Dim dr As SqlDataReader
        con.Open()
        dr = cmd.ExecuteReader
        If dr.Read Then
            Label4.Text = dr("Cat_No") + 1
        End If
        dr.Close()
        con.Close()
    End Sub

  

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        clearcontrols()
    End Sub
End Class
