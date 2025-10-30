Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class supplier
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
            cmd = New SqlCommand("insert into tbl_Supplier values(@snm,@add,@cno,@eid,@city,@st,@eno)", con)
            ' cmd.Parameters.Add(New SqlParameter("@sno", Convert.ToInt32(txtsno.Text)))
            cmd.Parameters.Add(New SqlParameter("@snm", Convert.ToString(txtsnm.Text)))
            cmd.Parameters.Add(New SqlParameter("@add", Convert.ToString(txtadd.Text)))
            cmd.Parameters.Add(New SqlParameter("@cno", Convert.ToString(txtcno.Text)))
            cmd.Parameters.Add(New SqlParameter("@eid", Convert.ToString(txteid.Text)))
            cmd.Parameters.Add(New SqlParameter("@city", Convert.ToString(txtcity.Text)))
            cmd.Parameters.Add(New SqlParameter("@st", Convert.ToString(txtstate.Text)))
            cmd.Parameters.Add(New SqlParameter("@eno", Convert.ToInt32(Session("User_Id"))))
            con.Open()
            Dim cnt As Integer = cmd.ExecuteNonQuery()
            If cnt = 1 Then
                MsgBox("New Supplier is Successfully added", MsgBoxStyle.OkOnly, " Add Supplier")
            End If
            con.Close()
            Response.Redirect("branch.aspx")
        Catch ex As Exception
        End Try
        clearcontrols()
    End Sub
    Sub clearcontrols()
        txtsnm.Text = ""

        txtcity.Text = ""
        txtadd.Text = ""
        txteid.Text = ""
        txtcno.Text = ""
        txtstate.Text = ""
    End Sub


  

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        clearcontrols()
    End Sub
End Class
