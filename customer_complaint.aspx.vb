Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Net.Mail
Imports System.Net.Mail.MailMessage
Partial Class customer_complaint
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim no As Integer
    Dim no1 As Integer
    Dim eid As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            cmd = New SqlCommand("insert into tbl_complaint values(@uid,@cdate,@rem,@pnm)", con)
            cmd.Parameters.Add(New SqlParameter("@uid", Session("User_Id")))
            cmd.Parameters.Add(New SqlParameter("@cdate", Convert.ToDateTime(Date.Now)))
            cmd.Parameters.Add(New SqlParameter("@rem", Convert.ToString(TextBox2.Text)))
            cmd.Parameters.Add(New SqlParameter("@pnm", DropDownList1.SelectedValue))
            con.Open()
            Dim cnt As Integer = cmd.ExecuteNonQuery()
            If cnt = 1 Then
                MsgBox("Your complaint is successfully send", MsgBoxStyle.OkOnly, " Complaint ")
            End If
            con.Close()
            cmd = New SqlCommand("insert into tbl_complaint1 values(@uid,@cdate,@rem,@pnm)", con)
            cmd.Parameters.Add(New SqlParameter("@uid", Session("User_Id")))
            cmd.Parameters.Add(New SqlParameter("@cdate", Convert.ToDateTime(Date.Now)))
            cmd.Parameters.Add(New SqlParameter("@rem", Convert.ToString(TextBox2.Text)))
            cmd.Parameters.Add(New SqlParameter("@pnm", DropDownList1.SelectedValue))
            con.Open()
            cmd.ExecuteNonQuery()

            con.Close()
            Dim subject As String = "Complaint"
            Dim mail As New MailMessage
            Dim smtp As New SmtpClient
            Dim msg As New System.Net.Mail.MailMessage
            msg.From = New MailAddress("komalmeruliya@gmail.com")
            ' MsgBox(DropDownList1.SelectedValue)
            cmd = New SqlCommand("select Cat_No from tbl_product where Product_Name=@pnm", con)
            cmd.Parameters.Add(New SqlParameter("@pnm", Convert.ToString(DropDownList1.SelectedValue)))

            da = New SqlDataAdapter(cmd)
            da.Fill(ds, "product")
            con.Open()
            cmd.ExecuteScalar()
            con.Close()
            no = ds.Tables("product").Rows(0).Item(0)
            ' MsgBox(no.ToString)
            cmd = New SqlCommand("select Employee_No from tbl_branch where Cat_No=@cn", con)
            cmd.Parameters.Add(New SqlParameter("@cn", no.ToString))
            da = New SqlDataAdapter(cmd)
            da.Fill(ds, "branch")
            con.Open()
            cmd.ExecuteScalar()
            con.Close()
            no1 = ds.Tables("branch").Rows(0).Item(0)
            'MsgBox(no1.ToString)
            cmd = New SqlCommand("select E_Email_Id from tbl_employee where Employee_No=@eno", con)
            cmd.Parameters.Add(New SqlParameter("@eno", no1.ToString))
            da = New SqlDataAdapter(cmd)
            da.Fill(ds, "emp")
            con.Open()
            cmd.ExecuteScalar()
            con.Close()
            eid = ds.Tables("emp").Rows(0).Item(0)

            ' MsgBox(eid.ToString)
            msg.To.Add(eid.ToString) 'Text Box for To Address  
            msg.Subject = subject 'Text Box fo
            msg.IsBodyHtml = True
            msg.Body = "Dear " & "<br/>" & "plz solve my complaint " & "<br/>" & "<br/>" & "User No :" & Session("User_Id") & "<br/>" & "Product Name :" & DropDownList1.SelectedValue & "<br/>" & "Remarks :" & TextBox2.Text
            msg.Priority = MailPriority.High
            Dim client As New System.Net.Mail.SmtpClient("smtp.gmail.com", 587)
            client.UseDefaultCredentials = False
            client.Credentials = New System.Net.NetworkCredential("komalmeruliya@gmail.com", "bd1081992")
            client.Port = 587
            client.Host = "smtp.gmail.com"
            client.EnableSsl = True
            client.Send(msg)

            'cmd = New SqlCommand("select * from tbl_product where Product_Name=@pnm", con)
            'cmd.Parameters.Add(New SqlParameter("@pnm ", DropDownList1.SelectedValue))
            ''cmd.Parameters.Add(New SqlParameter("@pwd", txtpwd.Text))
            ''  cmd.Parameters.Add(New SqlParameter("@pwd", Session("Password")))
            'con.Open()
            'Dim dr As SqlDataReader
            'dr = cmd.ExecuteReader
            'If dr.Read Then
            '    Session("pname") = dr.GetString(1)
            '    Session("cno") = dr.GetInt32(2)
            '    Response.Redirect("branch.aspx?nm=" & Session("User_Id") & " & cno=" & Session("cno") & " & pnm=" & Session("pname"))
            '    'uname = " & dr.GetString(1) & " & eno = " & dr.GetInt32(0) & " & uid = " & TextBox1.Text & " & utype = " & DropDownList1.SelectedValue)"

            'End If
            'dr.Close()
            'con.Close()
            Response.Redirect("welcome.aspx")
        Catch ex As Exception
        End Try
    End Sub
End Class
