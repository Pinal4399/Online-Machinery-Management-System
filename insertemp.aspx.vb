Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Sub phonelengthcheck(ByVal sender As Object, ByVal args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        Dim num As Integer = args.value.length
        If num = 10 Then
            args.isvalid = True
        Else
            args.isvalid = False
        End If
    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Try
            cmd = New SqlCommand("insert into tbl_worker values(@enm,@eid,@add,@city,@qua,@exp,@pno,@jt,@bd,@sal,@eno)", con)
            'cmd.Parameters.Add(New SqlParameter("@wno", Convert.ToInt32(txteno.Text)))
            cmd.Parameters.Add(New SqlParameter("@enm", Convert.ToString(txtenm.Text)))
            cmd.Parameters.Add(New SqlParameter("@eid", Convert.ToString(txteid.Text)))
            cmd.Parameters.Add(New SqlParameter("@add", Convert.ToString(txtadd.Text)))
            cmd.Parameters.Add(New SqlParameter("@qua", Convert.ToString(txtqua.Text)))
            cmd.Parameters.Add(New SqlParameter("@city", Convert.ToString(txtcity.Text)))
            cmd.Parameters.Add(New SqlParameter("@jt", Convert.ToDateTime(txtjdt.Text)))
            cmd.Parameters.Add(New SqlParameter("@pno", Convert.ToDecimal(txtpno.Text)))
            cmd.Parameters.Add(New SqlParameter("@bd", Convert.ToDateTime(txtbd.Text)))
            cmd.Parameters.Add(New SqlParameter("@sal", Convert.ToString(txtsal.Text)))
            cmd.Parameters.Add(New SqlParameter("@exp", Convert.ToString(txtexp.Text)))
            cmd.Parameters.Add(New SqlParameter("@eno", Convert.ToInt32(Session("User_Id"))))
            con.Open()
            Dim cnt As Integer = cmd.ExecuteNonQuery()
            If cnt = 1 Then
                MsgBox("New Employee is Successfully added", MsgBoxStyle.OkOnly, " Add Employee ")
            End If
            con.Close()
            Response.Redirect("branch.aspx")
        Catch ex As Exception
        End Try
        clearcontrols()
    End Sub

    Sub clearcontrols()

        txtenm.Text = ""
        txtjdt.Text = ""
        txtpno.Text = ""
        txtbd.Text = ""
        txtqua.Text = ""
        txtcity.Text = ""
        txtsal.Text = ""   
        txtexp.Text = ""
        txtadd.Text = ""
        txteid.Text = ""

    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        clearcontrols()
    End Sub
End Class
