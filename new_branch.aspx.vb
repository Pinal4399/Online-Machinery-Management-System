Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class new_branch
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
        'Try
        cmd = New SqlCommand("insert into tbl_branch values(@bnm,@add,@city,@st,@cno,@cont,@eno)", con)
        ' cmd.Parameters.Add(New SqlParameter("@bno", Convert.ToInt32(txtbno.Text)))
        cmd.Parameters.Add(New SqlParameter("@bnm", Convert.ToString(txtbnm.Text)))
        cmd.Parameters.Add(New SqlParameter("@add", Convert.ToString(txtadd.Text)))
        ' cmd.Parameters.Add(New SqlParameter("@eid", Convert.ToString(txteid.Text)))
        cmd.Parameters.Add(New SqlParameter("@city", Convert.ToString(txtcity.Text)))
        cmd.Parameters.Add(New SqlParameter("@st", Convert.ToString(txtst.Text)))
        cmd.Parameters.Add(New SqlParameter("@cno", ddlcnm.SelectedValue.ToString))
        cmd.Parameters.Add(New SqlParameter("@cont", Convert.ToDouble(txtcont.Text)))
        cmd.Parameters.Add(New SqlParameter("@eno", ddleno.SelectedValue.ToString))
        con.Open()
        Dim cnt As Integer = cmd.ExecuteNonQuery()
        If cnt = 1 Then
            MsgBox("new Branch successfully added", MsgBoxStyle.OkOnly, " Add  Branch")
        End If
        con.Close()
        Response.Redirect("welcomeadmin.aspx")
        'Catch ex As Exception
        'End Try
        clearcontrols()
    End Sub
    Sub clearcontrols()
        txtbnm.Text = ""

        txtcity.Text = ""
        txtadd.Text = ""
        ' txteid.Text = ""
        txtst.Text = ""
        txtcont.Text = ""
    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        clearcontrols()
    End Sub
End Class
