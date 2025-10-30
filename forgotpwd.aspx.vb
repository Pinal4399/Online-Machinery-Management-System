Imports System.Net.Mail
Imports System.Net.Mail.MailMessage
Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class forgotpwd
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim res As MsgBoxResult

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If DropDownList1.SelectedItem.Text = "Customer" Then
            Try
                cmd = New SqlCommand("select * from tbl_user where Email_Id=@uid", con)
                cmd.Parameters.Add(New SqlParameter("@uid", Convert.ToString(TextBox1.Text)))
                con.Open()
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Session("uname") = dr.GetString(3)
                    Session("User_Id") = dr.GetInt32(0)
                    Session("Email_Id") = TextBox1.Text
                    Session("pwd") = dr.GetString(1)
                Else
                    MsgBox("Invalid user")
                End If
                dr.Close()
                con.Close()
            Catch ex As Exception
            End Try
            Dim subject As String = "forgot password"
            Dim mail As New MailMessage
            Dim smtp As New SmtpClient
            Dim msg As New System.Net.Mail.MailMessage
            msg.From = New MailAddress("komalmeruliya@gmail.com")
            msg.To.Add(TextBox1.Text) 'Text Box for To Address  
            msg.Subject = subject 'Text Box for subject  
            msg.IsBodyHtml = True
            msg.Body = "Dear " & Session("uname") & "<br/>" & "<br/>" & "As per your request, we are emailing your password " & "<br/>" & "<br/>" & "Login Id:" & TextBox1.Text & "<br/>" & "Password:" & Session("pwd")
            msg.Priority = MailPriority.High
            Dim client As New System.Net.Mail.SmtpClient("smtp.gmail.com", 587)
            client.UseDefaultCredentials = False
            client.Credentials = New System.Net.NetworkCredential("komalmeruliya@gmail.com", "bd1081992")
            client.Port = 587
            client.Host = "smtp.gmail.com"
            client.EnableSsl = True
            client.Send(msg)
            MsgBox("Your Password has been mailed to your email.", MsgBoxStyle.OkOnly, "Forgot Password")
            Response.Redirect("login.aspx")
        ElseIf DropDownList1.SelectedItem.Text = "Others" Then
            Try
                cmd = New SqlCommand("select * from tbl_employee where E_Email_Id=@uid", con)
                cmd.Parameters.Add(New SqlParameter("@uid", TextBox1.Text))
                con.Open()
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Session("uname") = dr.GetString(1)
                    Session("User_Id") = dr.GetInt32(0)
                    Session("Email_Id") = TextBox1.Text
                    Session("pwd") = dr.GetString(14)
                Else
                    Literal1.Text = "Invalid user"
                End If
                dr.Close()
                con.Close()
            Catch ex As Exception
            End Try
            Dim subject As String = "forgot password"
            Dim mail As New MailMessage
            Dim smtp As New SmtpClient
            Dim msg As New System.Net.Mail.MailMessage
            msg.From = New MailAddress("komalmeruliya@gmail.com")
            msg.To.Add(TextBox1.Text) 'Text Box for To Address  
            msg.Subject = subject 'Text Box for subject  
            msg.IsBodyHtml = True
            msg.Body = "Dear " & Session("uname") & "<br/>" & "<br/>" & "As per your request, we are emailing your password " & "<br/>" & "<br/>" & "Login Id:" & TextBox1.Text & "<br/>" & "Password:" & Session("pwd")
            msg.Priority = MailPriority.High
            Dim client As New System.Net.Mail.SmtpClient("smtp.gmail.com", 587)
            client.UseDefaultCredentials = False
            client.Credentials = New System.Net.NetworkCredential("komalmeruliya@gmail.com", "bd1081992")
            client.Port = 587
            client.Host = "smtp.gmail.com"
            client.EnableSsl = True
            client.Send(msg)
            MsgBox("Your Password has been mailed to your email.")
            Response.Redirect("login.aspx")
        End If
    End Sub
End Class
