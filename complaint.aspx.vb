Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Imports System.Web.UI.Control
Imports System.Net.Mail
Imports System.Net.Mail.MailMessage
Partial Class complaint
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim dt As New DataList
    Dim dt1 As New SqlDataSource
    Dim str As String
    Dim add As String
    Dim uname As String
    Dim pno As Double
    Dim city As String
    Dim eid As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Panel1.Visible = False

        cmd = New SqlCommand("select c.Complaint_No,c.Product_Name,c.User_Id,c.Complaint_Date,c.Remarks from tbl_complaint1 c,tbl_product p where p.Product_Name = c.Product_Name And p.Cat_No = @cno", con)
        'cmd = New SqlCommand("select Product_Name from tbl_product where Cat_No=@cno", con)
        cmd.Parameters.Add(New SqlParameter("@cno", Convert.ToInt32(Session("cat_no"))))
        da = New SqlDataAdapter(cmd)

        con.Open()
        da.Fill(ds, "tblcomplaint")
        con.Close()
        '    End If
        'Next
        ''Next
        GridView1.DataSource = ds.Tables("tblcomplaint")
        GridView1.DataBind()
        ' DropDownList2.DataBind()
    End Sub
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Panel1.Visible = True
        Label2.Text = GridView1.SelectedRow.Cells(1).Text
        str = Convert.ToInt32(GridView1.SelectedRow.Cells(3).Text)
        'MsgBox(str.ToString)
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            cmd = New SqlCommand("insert into tbl_task values(@cno,@eno,@td,NULL,NULL)", con)
            cmd.Parameters.Add(New SqlParameter("@cno", Convert.ToInt32(Label2.Text)))
            cmd.Parameters.Add(New SqlParameter("@eno", Convert.ToInt32(RadioButtonList1.SelectedValue)))
            cmd.Parameters.Add(New SqlParameter("@td", Convert.ToDateTime(Date.Now)))
            'cmd.Parameters.Add(New SqlParameter("@tcd", Convert.ToDateTime())))
            'cmd.Parameters.Add(New SqlParameter("@st", Convert.ToInt32(Session("cat_no"))))
            con.Open()
            Dim cnt As Integer = cmd.ExecuteNonQuery()
            If cnt = 1 Then
                MsgBox("Task is allocated", MsgBoxStyle.OkOnly, "Task Assignment")
            End If
            con.Close()
        Catch ex As Exception
        End Try
        Try
            cmd = New SqlCommand("insert into tbl_task1 values(@cno,@eno,@td,NULL,NULL)", con)
            cmd.Parameters.Add(New SqlParameter("@cno", Convert.ToInt32(Label2.Text)))
            cmd.Parameters.Add(New SqlParameter("@eno", Convert.ToInt32(RadioButtonList1.SelectedValue)))
            cmd.Parameters.Add(New SqlParameter("@td", Convert.ToDateTime(Date.Now)))
            'cmd.Parameters.Add(New SqlParameter("@tcd", Convert.ToDateTime())))
            'cmd.Parameters.Add(New SqlParameter("@st", Convert.ToInt32(Session("cat_no"))))
            con.Open()
            cmd.ExecuteNonQuery()

            con.Close()
            'cmd = New SqlCommand("delete from tbl_complaint1 where Complaint_No=@cno", con)
            'cmd.Parameters.Add(New SqlParameter("@cno", Convert.ToInt32(Label2.Text)))
            'con.Open()
            'cmd.ExecuteNonQuery()
            'con.Close()


            'cmd = New SqlCommand("select * from tbl_user where User_Id=@uid", con)
            ''cmd.Parameters.Add(New SqlParameter("@uid", Convert.ToInt32(str.ToString)))
            'con.Open()
            'Dim dr As SqlDataReader
            'dr = cmd.ExecuteReader
            'If dr.Read Then
            '    uname = dr.GetString(2)
            '    pno = dr.GetInt32(6)
            '    city = dr.GetString(4)
            '    add = dr.GetString(3)
            '    eid = dr.GetString(7)

            'End If
            'dr.Close()
            'con.Close()
            'Dim subject As String = "Solving New Complaint "
            'Dim mail As New MailMessage
            'Dim smtp As New SmtpClient
            'Dim msg As New System.Net.Mail.MailMessage
            'msg.From = New MailAddress("komalmeruliya@gmail.com")
            'msg.To.Add(eid.ToString) 'Text Box for To Address  
            'msg.Subject = subject 'Text Box for subject  
            'msg.IsBodyHtml = True
            'Dim mb As String = "Dear " & RadioButtonList1.SelectedValue & "<br/>" & "<br/>" & "User Name: " & uname.ToString & "<br/>" & "<br/>" & "Address :" & add.ToString & "<br/>" & "<br/>" & "Phone No :" & pno.ToString & "<br/>" & "<br/>" & "City :" & city.ToString
            'msg.Body = mb.ToString
            'msg.Priority = MailPriority.High
            'Dim client As New System.Net.Mail.SmtpClient("smtp.gmail.com", 587)
            'client.UseDefaultCredentials = False
            'client.Credentials = New System.Net.NetworkCredential("komalmeruliya@gmail.com", "bd1081992")
            'client.Port = 587
            'client.Host = "smtp.gmail.com"
            'client.EnableSsl = True

            'client.Send(msg)
            Response.Redirect("branch.aspx")
        Catch ex As Exception
        End Try
    End Sub
End Class
