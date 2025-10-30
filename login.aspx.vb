Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class login
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim res As MsgBoxResult
    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click  
        If DropDownList1.SelectedItem.Text = "Admin" Then
            Try
                Dim cmd As New SqlCommand("select * from tbl_employee where E_Email_Id=@uid and Password=@pwd", con)
                cmd.Parameters.Add(New SqlParameter("@uid ", TextBox1.Text))
                cmd.Parameters.Add(New SqlParameter("@pwd", txtpwd.Text))
                '  cmd.Parameters.Add(New SqlParameter("@pwd", Session("Password")))
                con.Open()
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Session("uname") = dr.GetString(1)
                    Session("User_Id") = dr.GetInt32(0)
                    Session("E_Email_Id") = TextBox1.Text
                    Session("User_Type") = DropDownList1.SelectedValue
                    Response.Redirect("welcomeadmin.aspx")
                    'uname = " & dr.GetString(1) & " & eno = " & dr.GetInt32(0) & " & uid = " & TextBox1.Text & " & utype = " & DropDownList1.SelectedValue)"

                End If
                dr.Close()
                con.Close()
            Catch ex As Exception
            End Try
            'Session("E_Email_Id") = TextBox1.Text
        ElseIf DropDownList1.SelectedItem.Text = "Owner" Then
            Try
                Dim cmd As New SqlCommand("select * from tbl_employee where E_Email_Id=@uid and Password=@pwd", con)
                cmd.Parameters.Add(New SqlParameter("@uid ", TextBox1.Text))
                cmd.Parameters.Add(New SqlParameter("@pwd", txtpwd.Text))
                con.Open()
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Session("uname") = dr.GetString(1)
                    Session("uid") = dr.GetInt32(0)
                    Session("User_Id") = TextBox1.Text
                    Session("User_Type") = DropDownList1.SelectedValue
                    Response.Redirect("welcomeowner.aspx")
                    '?uname=" & dr.GetString(1) & "&eno=" & dr.GetInt32(0) & "&utype=" & DropDownList1.SelectedValue)

                End If
                dr.Close()
                con.Close()
            Catch ex As Exception
            End Try
            Session("User_Id") = TextBox1.Text
        ElseIf DropDownList1.SelectedItem.Text = "Branch Manager" Then
            Try
                Dim cmd As New SqlCommand("select * from tbl_employee where E_Email_Id=@uid and Password=@pwd", con)
                cmd.Parameters.Add(New SqlParameter("@uid ", TextBox1.Text))
                cmd.Parameters.Add(New SqlParameter("@pwd", txtpwd.Text))
                con.Open()
                ' Dim eno As String = Request.QueryString("Employee_No")
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Session("uname") = dr.GetString(1)
                    Session("User_Id") = dr.GetInt32(0)
                    Session("E_Email_Id") = TextBox1.Text
                    Session("User_Type") = DropDownList1.SelectedValue
                    Response.Redirect("branch.aspx")
                    '?uname=" & dr.GetString(1) & "&eno=" & dr.GetInt32(0) & "&utype=" & DropDownList1.SelectedValue)

                End If
                dr.Close()
                con.Close()
                Session("User_Id") = TextBox1.Text
            Catch ex As Exception
            End Try
        ElseIf DropDownList1.SelectedItem.Text = "Technician" Then
            Try
                Dim cmd As New SqlCommand("select * from tbl_technician where T_Email_Id=@uid and Password=@pwd", con)
                cmd.Parameters.Add(New SqlParameter("@uid ", TextBox1.Text))
                cmd.Parameters.Add(New SqlParameter("@pwd", txtpwd.Text))
                con.Open()
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Session("uname") = dr.GetString(1)
                    Session("User_Id") = dr.GetInt32(0)
                    Session("T_Email_Id") = TextBox1.Text
                    Session("User_Type") = DropDownList1.SelectedValue
                    Response.Redirect("welcometechnician.aspx")
                    '?uname=" & dr.GetString(1) & "&utype=" & DropDownList1.SelectedValue)

                End If
                dr.Close()
                con.Close()
                Session("User_Id") = TextBox1.Text
            Catch ex As Exception
            End Try
        Else
            Try
                cmd = New SqlCommand("select * from tbl_user where Email_Id=@uid  and Password=@pwd ", con)
                cmd.Parameters.Add(New SqlParameter("@uid", TextBox1.Text))
                cmd.Parameters.Add(New SqlParameter("@pwd", txtpwd.Text))
                con.Open()
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Session("uname") = dr.GetString(3)
                    Session("User_Id") = dr.GetInt32(0)
                    Session("Email_Id") = TextBox1.Text
                    Session("User_Type") = DropDownList1.SelectedValue
                    Session("pno") = dr.GetDecimal(7)
                    Response.Redirect("welcome.aspx")
                    '?uid=" & TextBox1.Text & "&uname=" & dr.GetString(3) & "&pno=" & dr.GetDecimal(7) & "&utype=" & DropDownList1.SelectedValue & "&userid=" & dr.GetInt32(0))

                End If
                dr.Close()
                con.Close()
            Catch ex As Exception
            End Try
            'Session("User_Id") = TextBox1.Text
            'Session("User_Type") = "Customer"
        End If
        ' con.Close()
        'Session("User_Type") = DropDownList1.SelectedItem.Text
    End Sub
End Class
