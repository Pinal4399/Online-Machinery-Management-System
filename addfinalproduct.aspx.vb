Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Drawing
Imports System.Net.Mail
Imports System.Net.Mail.MailMessage
Partial Class addfinalproduct
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As New SqlCommand
    Dim cmd1 As New SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim q1 As Integer
    Dim res1 As String
    Dim str As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            cmd = New SqlCommand("select * from tbl_product_info where Cat_No=@cno", con)
            cmd.Parameters.Add(New SqlParameter("@cno", Session("cat_no")))
            da = New SqlDataAdapter(cmd)
            con.Open()
            da.Fill(ds, "tbl_product_info")
            DropDownList1.DataSource = ds.Tables("tbl_product_info")
            DropDownList1.DataBind()
            DropDownList1.Items.Insert(0, "--Select--")
            con.Close()
        End If
    End Sub
    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Try
            cmd = New SqlCommand("select Tools_Name,Product_Name from tbl_mproduct_tools where Product_Name=@pnm group by Tools_Name,Product_Name", con)
            cmd.Parameters.Add(New SqlParameter("@pnm", Convert.ToString(DropDownList1.SelectedValue)))
            da = New SqlDataAdapter(cmd)
            da.Fill(ds, "mproducttool")
            con.Open()
            cmd.ExecuteScalar()
            con.Close()
            cmd = New SqlCommand("select * from tbl_tool where Employee_No=@eno", con)
            cmd.Parameters.Add(New SqlParameter("@eno", Session("User_Id")))
            da = New SqlDataAdapter(cmd)
            da.Fill(ds, "tbl_tool")
            con.Open()
            cmd.ExecuteScalar()
            con.Close()
        Catch ex As Exception
        End Try
        q1 = txtqty.Text
        Dim flag As Integer = 0
        If flag = 0 Then
            For j As Integer = 0 To ds.Tables("tbl_tool").Rows.Count - 1
                For i As Integer = 0 To ds.Tables("mproducttool").Rows.Count - 1
                    If ds.Tables("mproducttool").Rows(i).Item(0) = ds.Tables("tbl_tool").Rows(j).Item(0) Then
                        If q1 <= ds.Tables("tbl_tool").Rows(j).Item(1) Then
                            Dim res As Integer = ds.Tables("tbl_tool").Rows(j).Item(1) - q1
                            Dim str1 As String = ds.Tables("tbl_tool").Rows(j).Item(0)
                        Else
                            res1 = ds.Tables("tbl_tool").Rows(j).Item(0)
                            flag = 1
                            GoTo stoppinghere

                        End If
                    End If
                Next
            Next
            For j As Integer = 0 To ds.Tables("tbl_tool").Rows.Count - 1
                For i As Integer = 0 To ds.Tables("mproducttool").Rows.Count - 1
                    If ds.Tables("mproducttool").Rows(i).Item(0) = ds.Tables("tbl_tool").Rows(j).Item(0) Then
                        Try
                            Dim res As Integer = ds.Tables("tbl_tool").Rows(j).Item(1) - q1
                            Dim str1 As String = ds.Tables("tbl_tool").Rows(j).Item(0)
                            cmd = New SqlCommand("update tbl_tool set Qty=@qt where Tools_Name=@st", con)
                            cmd.Parameters.Add(New SqlParameter("@qt", Convert.ToInt32(res.ToString)))
                            cmd.Parameters.Add(New SqlParameter("@st", Convert.ToString(str1.ToString)))
                            con.Open()
                            cmd.ExecuteNonQuery()
                            con.Close()
                        Catch ex As Exception
                        End Try
                    End If
                Next
            Next
            Image2.ImageUrl = "~/img/" & FileUpload1.FileName

            Dim str As String = FileUpload1.FileName & ".aspx"
            Try
                cmd = New SqlCommand("insert into tbl_product values(@pnm,@cno,@qty,@pr,@des,@pimg)", con)
                'cmd.Parameters.Add(New SqlParameter("@pno", Convert.ToInt32(TextBox1.Text)))
                cmd.Parameters.Add(New SqlParameter("@pnm", Convert.ToString(DropDownList1.SelectedValue)))
                cmd.Parameters.Add(New SqlParameter("@cno", Session("cat_no")))
                cmd.Parameters.Add(New SqlParameter("@qty", Convert.ToInt32(txtqty.Text)))
                cmd.Parameters.Add(New SqlParameter("@pr", Convert.ToDecimal(txtpr.Text)))
                cmd.Parameters.Add(New SqlParameter("@des", Convert.ToString(txtdes.Text)))
                cmd.Parameters.Add(New SqlParameter("@pimg", Image2.ImageUrl))
                con.Open()
                Dim cnt As Integer = cmd.ExecuteNonQuery()
                If cnt = 1 Then
                    MsgBox("New Product is Successfully added", MsgBoxStyle.OkOnly, " Add Product")
                End If
                con.Close()
            Catch ex As Exception
            End Try
            cmd = New SqlCommand("select * from tbl_image ", con)
            'cmd.Parameters.Add(New SqlParameter("@eno", Session("User_Id")))
            da = New SqlDataAdapter(cmd)

            con.Open()
            da.Fill(ds, "tbl_image")
            cmd.ExecuteScalar()
            con.Close()
            Try
                Dim record As Integer = ds.Tables("tbl_image").Rows.Count - 1
                'MsgBox(record.ToString)
                Dim desc As String = ds.Tables("tbl_image").Rows(record).Item(4).ToString + 1
                ' MsgBox(desc.ToString)
                ' MsgBox(Image2.ImageUrl)
                cmd = New SqlCommand("insert into tbl_image values(@iu,@nu,@at,@im,@ky)", con)
                'cmd.Parameters.Add(New SqlParameter("@pno", Convert.ToInt32(TextBox1.Text)))
                cmd.Parameters.Add(New SqlParameter("@iu", Image2.ImageUrl))
                cmd.Parameters.Add(New SqlParameter("@nu", Convert.ToString(str.ToString)))
                cmd.Parameters.Add(New SqlParameter("@at", Convert.ToString(DropDownList1.SelectedValue)))
                cmd.Parameters.Add(New SqlParameter("@im", Convert.ToString(desc.ToString)))
                cmd.Parameters.Add(New SqlParameter("@ky", Convert.ToString("machine")))
                ' cmd.Parameters.Add(New SqlParameter("@pimg", Image2.ImageUrl))
                con.Open()
                cmd.ExecuteNonQuery()

                con.Close()
            Catch ex As Exception
            End Try
            Try
                cmd1 = New SqlCommand("select * from tbl_employee ", con)
                ' cmd.Parameters.Add(New SqlParameter("@eno", Session("User_Id")))
                da = New SqlDataAdapter(cmd1)
                con.Open()
                da.Fill(ds, "tbl_employee")

                cmd1.ExecuteScalar()
                con.Close()
            Catch ex As Exception
            End Try
            Dim uname As String = ds.Tables("tbl_employee").Rows(1).Item(1)
            Dim emailid As String = ds.Tables("tbl_employee").Rows(1).Item(3)
            Dim subject As String = "Add New Product"
            Dim mail As New MailMessage
            Dim smtp As New SmtpClient
            Dim msg As New System.Net.Mail.MailMessage
            msg.From = New MailAddress("komalmeruliya@gmail.com")
            msg.To.Add(emailid.ToString) 'Text Box for To Address  
            msg.Subject = subject 'Text Box for subject  
            msg.IsBodyHtml = True
            Dim mb As String = "Dear " & uname.ToString & "<br/>" & "<br/>" & "Product Name: " & DropDownList1.SelectedValue & "<br/>" & "<br/>" & "Description of Product " & txtdes.Text & "<br/>" & "<br/>" & "Price :" & txtpr.Text
            ' Dim plainView As AlternateView = AlternateView.CreateAlternateViewFromString(, Nothing, "text/plain")
            msg.Body = mb.ToString
            msg.Priority = MailPriority.High
            Dim client As New System.Net.Mail.SmtpClient("smtp.gmail.com", 587)
            client.UseDefaultCredentials = False
            client.Credentials = New System.Net.NetworkCredential("komalmeruliya@gmail.com", "bd1081992")
            client.Port = 587
            client.Host = "smtp.gmail.com"
            client.EnableSsl = True
            client.Send(msg)
            Response.Redirect("branch.aspx")
        End If
stoppinghere:
        MsgBox("tools is not avaliable..........please order tools for your requirement.........." & res1, MsgBoxStyle.OkOnly, "Tools Not Available")
        Response.Redirect("order_tools.aspx")

    End Sub
End Class
