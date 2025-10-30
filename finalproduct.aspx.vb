Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Imports System.Web.UI.Control
Partial Class finalproduct
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim q1, q2, q3 As Integer
    Dim res As String
    Dim res1 As String
    Dim final As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        res = Convert.ToString(GridView1.Rows(e.RowIndex).Cells(2).Text)
        cmd = New SqlCommand("select Qty from tbl_product where Product_Name=@pno", con)
        cmd.Parameters.Add(New SqlParameter("@pno", Convert.ToString(res.ToString)))
        con.Open()
        final = Convert.ToInt32(cmd.ExecuteScalar)
        con.Close()
        Dim t1 As TextBox = (GridView1.Rows(e.RowIndex).Cells(4).FindControl("t1"))
        'MsgBox(t1.Text)
        cmd = New SqlCommand("select Tools_Name,Product_Name from tbl_mproduct_tools where Product_Name=@pnm group by Tools_Name,Product_Name", con)
        cmd.Parameters.Add(New SqlParameter("@pnm", Convert.ToString(res.ToString)))
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
        q1 = t1.Text - final.ToString
        ' MsgBox(q1)
        Dim flag As Integer = 0
        If flag = 0 Then
            For j As Integer = 0 To ds.Tables("tbl_tool").Rows.Count - 1
                For i As Integer = 0 To ds.Tables("mproducttool").Rows.Count - 1
                    If ds.Tables("mproducttool").Rows(i).Item(0) = ds.Tables("tbl_tool").Rows(j).Item(0) Then
                        If q1 <= ds.Tables("tbl_tool").Rows(j).Item(1) Then
                            Dim res As Integer = ds.Tables("tbl_tool").Rows(j).Item(1) - q1
                            Dim str As String = ds.Tables("tbl_tool").Rows(j).Item(0)
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
                            Dim str As String = ds.Tables("tbl_tool").Rows(j).Item(0)
                            cmd = New SqlCommand("update tbl_tool set Qty=@qt where Tools_Name=@st", con)
                            cmd.Parameters.Add(New SqlParameter("@qt", Convert.ToInt32(res.ToString)))
                            cmd.Parameters.Add(New SqlParameter("@st", Convert.ToString(str.ToString)))
                            con.Open()
                            cmd.ExecuteNonQuery()
                            con.Close()
                        Catch ex As Exception
                        End Try
                    End If
                Next
            Next
            ' q2 = Convert.ToInt32(t1.Text)
            'q2 = GridView1.Rows(e.RowIndex).Cells(6).Text
            Try
                Dim cmd1 As New SqlCommand("update tbl_product set Qty=@qty1 where Product_Name=@pid", con)
                cmd1.Parameters.Add(New SqlParameter("@qty1", Convert.ToInt32(t1.Text)))
                cmd1.Parameters.Add(New SqlParameter("@pid", Convert.ToString(res.ToString)))
                'cmd1.Parameters.Add(New SqlParameter("@st", Convert.ToDouble(q2 * price)))
                con.Open()
                Dim cnt As Integer = cmd1.ExecuteNonQuery()
                If cnt = 1 Then
                    MsgBox("Quantity is successfully updated", MsgBoxStyle.OkOnly, " Update Quantity")
                End If
                con.Close()

                Response.Redirect("branch.aspx")
            Catch ex As Exception
            End Try
        End If
stoppinghere:
        MsgBox("Tools is not avaliable..........please order tools for your requirement.........." & res1, MsgBoxStyle.OkOnly, " Tools Not Available")
        Response.Redirect("order_tools.aspx")
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class
