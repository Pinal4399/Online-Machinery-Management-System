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

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        clearcontrols()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        cmd = New SqlCommand("select * from tbl_user ", con)
        'cmd.Parameters.Add(New SqlParameter("@eno", Session("User_Id")))
        da = New SqlDataAdapter(cmd)
        da.Fill(ds, "tbl_user")
        con.Open()
        cmd.ExecuteScalar()
        con.Close()
        For i As Integer = 0 To ds.Tables("tbl_user").Rows.Count - 1

            '  MsgBox(ds.Tables("tbl_user").Rows(i).Item(8).ToString)

            If ds.Tables("tbl_user").Rows(i).Item(7).ToString = txtueid.Text Then
                MsgBox("User is already registered")
                'Response.Redirect("infra.aspx")
                GoTo stopping1

            End If
        Next

        ' Dim res As String to ds.Tables("tbl_user").row().cell()
        Dim dt As String = DropDownList1.SelectedItem.ToString & "/" & DropDownList2.SelectedItem.ToString & "/" & DropDownList3.SelectedItem.ToString
        Try
            cmd = New SqlCommand("insert into tbl_user values(@pwd,@nm,@add,@city,@bd,@pno,@eid)", con)
            'cmd.Parameters.Add(New SqlParameter("@id", Convert.ToInt32(txtid.Text)))
            cmd.Parameters.Add(New SqlParameter("@pwd", Convert.ToString(txtpwd.Text)))
            ' cmd.Parameters.Add(New SqlParameter("@cpwd", Convert.ToString(txtcpwd.Text)))
            cmd.Parameters.Add(New SqlParameter("@nm", Convert.ToString(txtunm.Text)))
            cmd.Parameters.Add(New SqlParameter("@add", Convert.ToString(txtadd.Text)))
            cmd.Parameters.Add(New SqlParameter("@city", Convert.ToString(txtcity.Text)))
            cmd.Parameters.Add(New SqlParameter("@bd", Convert.ToDateTime(dt)))
            cmd.Parameters.Add(New SqlParameter("@pno", Convert.ToDouble(txtpno.Text)))
            cmd.Parameters.Add(New SqlParameter("@eid", Convert.ToString(txtueid.Text)))
            'cmd.Parameters.Add(New SqlParameter("@que", ddlque.SelectedItem.Text))
            'cmd.Parameters.Add(New SqlParameter("@ans", Convert.ToString(txtans.Text)))
            'cmd.Parameters.Add(New SqlParameter("@org", Convert.ToString(txtorg.Text)))
            'cmd.Parameters.Add(New SqlParameter("@type", Convert.ToString("customer")))
            con.Open()
            Dim cnt As Integer = cmd.ExecuteNonQuery()
            If cnt = 1 Then
                MsgBox("Congratulations...............You are registered successfully..............", MsgBoxStyle.OkOnly, " Registration")
            End If
            con.Close()
            Response.Redirect("welcome.aspx")

        Catch ex As Exception
        End Try
        clearcontrols()
stopping1:

        Response.Redirect("index.aspx")
    End Sub

    Sub clearcontrols()
        txtunm.Text = ""
        txtpwd.Text = ""
        txtpno.Text = ""
        txtcity.Text = ""
        txtadd.Text = ""
        txtueid.Text = ""
        txtcpwd.Text = ""
     
    End Sub


  
End Class
