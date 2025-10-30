Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class feed
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New Data.DataSet
    Dim s As String = "Problem"
    Dim cnt As String
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If RadioButtonList1.Items(0).Selected Then
            s = RadioButtonList1.Items(0).Text
        ElseIf RadioButtonList1.Items(1).Selected Then
            s = RadioButtonList1.Items(1).Text
        ElseIf RadioButtonList1.Items(2).Selected Then
            s = RadioButtonList1.Items(2).Text
        ElseIf RadioButtonList1.Items(3).Selected Then
            s = RadioButtonList1.Items(3).Text
        End If
        Try
            cmd = New SqlCommand("insert into tbl_feedback values(@desc,@ftype,@fdate,@ctype)", con)
            'cmd.Parameters.Add(New SqlParameter("@fno", cnt))
            cmd.Parameters.Add(New SqlParameter("@desc", TextBox1.Text))
            cmd.Parameters.Add(New SqlParameter("@ftype", Convert.ToString(s.ToString)))
            cmd.Parameters.Add(New SqlParameter("@fdate", DateAndTime.Now.ToShortDateString))
            cmd.Parameters.Add(New SqlParameter("@ctype", DropDownList1.SelectedItem.Text))
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()

            MsgBox("Thanks Friend, Your feedback is send to sender", MsgBoxStyle.OkOnly, "Hello")
            If Session("User_type") = "" Or Session("User_type") = "Guest" Then
                Response.Redirect("infra.aspx")
            Else
                Response.Redirect("welcome.aspx")
            End If
        Catch ex As Exception
        End Try
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        TextBox1.Text = ""
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("User_type") = "" Or Session("User_type") = "Guest" Then
            Label2.Text = "Guest"
            Session("User_type") = "Guest"
        Else
            Label2.Text = Session("uname")
            Panel1.Visible = True
            ' cmd = New SqlCommand("select * from tbl_user where User_Id=@id and User_Type=@type", con)
            ' cmd.Parameters.Add(New SqlParameter("@id", Session("User_Id")))
            ' cmd.Parameters.Add(New SqlParameter("@type", Session("User_type")))
            ' da = New SqlDataAdapter(cmd)
            ' da.Fill(ds, "tbl_user")
            ' con.Open()
            '  cmd.ExecuteScalar()
            '  Label3.Text = ds.Tables("tbl_user").Rows(0).Item(0)
            '  Label1.Text = ds.Tables("tbl_user").Rows(0).Item(1)
            ' Session.Add("tbl_user", Me)
            ' Dim uid As String = Request.QueryString("uid")
            Label3.Text = Session("Email_Id")
            ' Dim pno As Decimal = Request.QueryString("pno")
            ' Label1.Text = Session("pno")
            ' con.Close()
            ' Dim uname As String = Request.QueryString("uname")
        End If
    End Sub
End Class
