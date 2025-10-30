Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class tool
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim cmd1 As SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Try
                cmd = New SqlCommand("select * from tbl_supplier_order1 where Employee_No=@eno", con)
                cmd.Parameters.Add(New SqlParameter("@eno", Session("User_Id")))
                da = New SqlDataAdapter(cmd)
                con.Open()
                da.Fill(ds, "sup")
                DropDownList1.DataSource = ds.Tables("sup")
                DropDownList1.DataBind()
                DropDownList1.Items.Insert(0, "--Select--")
                con.Close()
            Catch ex As Exception
            End Try
        End If
    End Sub

    Protected Sub DropDownList1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.DataBound
        'DropDownList1.SelectedIndex = DropDownList1.Items.IndexOf(DropDownList1.Items.FindByValue(Context.User.Identity.Name))

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        ' Response.Write(DropDownList1.SelectedIndex)
        ' Dim item As ListItem = DropDownList1.Items.FindByValue("")
        ' If item IsNot Nothing Then
        'DropDownList1.SelectedItem.Selected = False
        ' item.Selected = True
        ' End If
        Try
            cmd = New SqlCommand("select * from tbl_supplier_order1 where Tools_Name=@tnm", con)
            cmd.Parameters.Add(New SqlParameter("@tnm", DropDownList1.SelectedValue))
            con.Open()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                Label6.Text = dr.GetDecimal(3)
                Label7.Text = dr.GetDecimal(4)

            End If
            dr.Close()
            con.Close()
        Catch ex As Exception
        End Try
    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click

        ' Dim dt As String = DropDownList2.SelectedItem.ToString & "/" & DropDownList3.SelectedItem.ToString & "/" & DropDownList4.SelectedItem.ToString
        ' Dim i As Integer = DropDownList1.SelectedIndex.ToString
        Try
            If DropDownList1.Items.Count > 1 Then
                cmd = New SqlCommand("insert into tbl_tool values(@nm,@qty,@price,@eno,@dt)", con)
                cmd.Parameters.Add(New SqlParameter("@nm", DropDownList1.SelectedValue))
                cmd.Parameters.Add(New SqlParameter("@qty", Convert.ToInt32(Label6.Text)))
                cmd.Parameters.Add(New SqlParameter("@price", Convert.ToDecimal(Label7.Text)))
                cmd.Parameters.Add(New SqlParameter("@eno", Session("User_Id")))
                cmd.Parameters.Add(New SqlParameter("@dt", Convert.ToDateTime(Date.Now)))
                con.Open()
                'cmd.ExecuteNonQuery()
                Dim cnt As Integer = cmd.ExecuteNonQuery()
                If cnt = 1 Then
                    MsgBox("tools received", MsgBoxStyle.OkOnly, " Add  tools")
                End If
                con.Close()
                cmd = New SqlCommand("delete from tbl_supplier_order1 where Tools_Name=@tnm", con)
                cmd.Parameters.Add(New SqlParameter("@tnm", DropDownList1.SelectedValue))
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                cmd = New SqlCommand("insert into tbl_account values(@eno,@tnm,@price)", con)
                cmd.Parameters.Add(New SqlParameter("@tnm", DropDownList1.SelectedValue))
                'cmd.Parameters.Add(New SqlParameter("@qty", Convert.ToDecimal(Label6.Text)))
                cmd.Parameters.Add(New SqlParameter("@price", Convert.ToDecimal(Label7.Text * Label6.Text)))
                cmd.Parameters.Add(New SqlParameter("@eno", Session("User_Id")))
                ' cmd.Parameters.Add(New SqlParameter("@dt", Convert.ToDateTime(Date.Now)))
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                Response.Redirect("branch.aspx")
            Else
                MsgBox("Not any order to supplier for tools......plz new order", MsgBoxStyle.OkOnly, "Tools Order")
                Response.Redirect("order_tools.aspx")
            End If

        Catch ex As Exception
        End Try
    End Sub
End Class
