Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Net.Mail
Imports System.Net.Mail.MailMessage
Partial Class addemployee
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim loRandom As New Random()
    Dim val As Integer = loRandom.[Next](100000)
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
            cmd = New SqlCommand("insert into tbl_technician values(@enm,@eid,@add,@city,@qua,@exp,@pno,@jt,@bd,@sal,@pwd,@eno)", con)
            ' cmd.Parameters.Add(New SqlParameter("@eno", Convert.ToInt32(txteno.Text)))
            cmd.Parameters.Add(New SqlParameter("@enm", Convert.ToString(txtenm.Text)))
            cmd.Parameters.Add(New SqlParameter("@eno", Convert.ToInt32(Session("User_Id"))))
            cmd.Parameters.Add(New SqlParameter("@eid", Convert.ToString(txteid.Text)))
            cmd.Parameters.Add(New SqlParameter("@add", Convert.ToString(txtadd.Text)))
            cmd.Parameters.Add(New SqlParameter("@qua", Convert.ToString(txtqua.Text)))
            cmd.Parameters.Add(New SqlParameter("@city", Convert.ToString(txtcity.Text)))
            cmd.Parameters.Add(New SqlParameter("@jt", Convert.ToDateTime(txtjdate.Text)))
            cmd.Parameters.Add(New SqlParameter("@pno", Convert.ToDouble(txtpno.Text)))
            cmd.Parameters.Add(New SqlParameter("@bd", Convert.ToDateTime(txtbt.Text)))
            cmd.Parameters.Add(New SqlParameter("@sal", Convert.ToInt32(txtsal.Text)))
            cmd.Parameters.Add(New SqlParameter("@pwd", Convert.ToString(val.ToString)))
            ' cmd.Parameters.Add(New SqlParameter("@cpwd", Convert.ToString(val.ToString)))
            cmd.Parameters.Add(New SqlParameter("@exp", Convert.ToString(txtexp.Text)))
            Dim subject As String = " password"
            Dim mail As New MailMessage
            Dim smtp As New SmtpClient
            Dim msg As New System.Net.Mail.MailMessage
            msg.From = New MailAddress("komalmeruliya@gmail.com")
            msg.To.Add(txteid.Text) 'Text Box for To Address  
            msg.Subject = subject 'Text Box for subject  
            msg.IsBodyHtml = True
            msg.Body = "Dear " & txtenm.Text & "<br/>" & "<br/>" & "As per your request, we are emailing your password " & "<br/>" & "<br/>" & "Login Id:" & txteid.Text & "<br/>" & "Password:" & val.ToString
            msg.Priority = MailPriority.High
            Dim client As New System.Net.Mail.SmtpClient("smtp.gmail.com", 587)
            client.UseDefaultCredentials = False
            client.Credentials = New System.Net.NetworkCredential("komalmeruliya@gmail.com", "bd1081992")
            client.Port = 587
            client.Host = "smtp.gmail.com"
            client.EnableSsl = True
            client.Send(msg)
            con.Open()
            Dim cnt As Integer = cmd.ExecuteNonQuery()
            If cnt = 1 Then
                MsgBox("New Technician is Successfully added and  Password has been mailed to Technician email id.", MsgBoxStyle.OkOnly, " Add Technician ")
            End If
            con.Close()
            Response.Redirect("branch.aspx")
        Catch ex As Exception
        End Try
        clearcontrols()
    End Sub
    Sub clearcontrols()

        txtenm.Text = ""
        txtjdate.Text = ""
        txtpno.Text = ""
        txtbt.Text = ""
        txtqua.Text = ""
        txtcity.Text = ""
        txtsal.Text = ""
        txtexp.Text = ""
        txtadd.Text = ""
    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        clearcontrols()
    End Sub
End Class
