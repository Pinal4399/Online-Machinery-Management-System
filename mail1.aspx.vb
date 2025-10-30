Imports System.Net.Mail
Imports System.Net.Mail.MailMessage
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Drawing
Partial Class mail1
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim desc As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Try
        cmd = New SqlCommand("select * from tbl_product ", con)
        'cmd.Parameters.Add(New SqlParameter("@eno", Session("User_Id")))
        da = New SqlDataAdapter(cmd)
        da.Fill(ds, "tbl_product")
        con.Open()
        cmd.ExecuteScalar()
        con.Close()
        Dim record As Integer = ds.Tables("tbl_product").Rows.Count - 1
        desc = ds.Tables("tbl_product").Rows(record).Item(5).ToString
        Dim pname As String = ds.Tables("tbl_product").Rows(record).Item(1).ToString
        Dim pr As Integer = ds.Tables("tbl_product").Rows(record).Item(4).ToString
        'Dim img1 As String = ds.Tables("tbl_product").Rows(record).Item(6).ToString
        cmd = New SqlCommand("select * from tbl_user ", con)
        'cmd.Parameters.Add(New SqlParameter("@eno", Session("User_Id")))
        da = New SqlDataAdapter(cmd)
        da.Fill(ds, "tbl_user")
        con.Open()
        cmd.ExecuteScalar()
        con.Close()
        cmd = New SqlCommand("select * from tbl_mail ", con)
        'cmd.Parameters.Add(New SqlParameter("@eno", Session("User_Id")))
        da = New SqlDataAdapter(cmd)
        da.Fill(ds, "tbl_mail")
        con.Open()
        cmd.ExecuteScalar()
        con.Close()
        'Catch ex As Exception
        'End Try
        For i As Integer = 0 To ds.Tables("tbl_mail").Rows.Count - 1
            If ds.Tables("tbl_product").Rows(record).Item(1).ToString = ds.Tables("tbl_mail").Rows(i).Item(2).ToString Then
                MsgBox("New product is not produce", MsgBoxStyle.OkOnly, "Advertisement")
                Response.Redirect("welcomeadmin.aspx")
            Else
                For j As Integer = 0 To ds.Tables("tbl_user").Rows.Count - 1
                    Dim uname As String = ds.Tables("tbl_user").Rows(j).Item(3)
                    Dim emailid As String = ds.Tables("tbl_user").Rows(j).Item(7)
                    Dim subject As String = "Adverisement for New Product"
                    Dim mail As New MailMessage
                    Dim smtp As New SmtpClient
                    Dim msg As New System.Net.Mail.MailMessage
                    msg.From = New MailAddress("komalmeruliya@gmail.com")
                    msg.To.Add(emailid.ToString) 'Text Box for To Address  
                    msg.Subject = subject 'Text Box for subject  
                    msg.IsBodyHtml = True
                    Dim mb As String = "Dear " & uname.ToString & "<br/>" & "<br/>" & "Product Name: " & pname.ToString & "<br/>" & "<br/>" & "Description of Product " & desc.ToString & "<br/>" & "<br/>" & "Price :" & pr.ToString

                    msg.Body = mb.ToString
                    msg.Priority = MailPriority.High
                    Dim client As New System.Net.Mail.SmtpClient("smtp.gmail.com", 587)
                    client.UseDefaultCredentials = False
                    client.Credentials = New System.Net.NetworkCredential("komalmeruliya@gmail.com", "bd1081992")
                    client.Port = 587
                    client.Host = "smtp.gmail.com"
                    client.EnableSsl = True

                    client.Send(msg)
                    Try
                        Dim res As String = ds.Tables("tbl_user").Rows(j).Item(7)
                        cmd = New SqlCommand("insert into tbl_mail values(@eid,@de)", con)
                        cmd.Parameters.Add(New SqlParameter("@eid", Convert.ToString(res.ToString)))
                        cmd.Parameters.Add(New SqlParameter("@de", Convert.ToString(pname.ToString)))
                        con.Open()
                        cmd.ExecuteNonQuery()
                        con.Close()
                    Catch ex As Exception
                    End Try
                Next

            End If
        Next
        Response.Redirect("welcomeadmin.aspx")
    End Sub
End Class
