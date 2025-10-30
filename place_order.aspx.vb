Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Imports System.Web.UI.Control
Partial Class place_order
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim q1, q2, q3 As Integer
    Dim res As String
    Dim cnt As Integer
    Dim c1 As Integer = 1
    Dim cnt1 As Integer = "100"
    Dim loRandom As New Random()
    Dim val As Integer = loRandom.[Next](100000)
    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        res = Convert.ToString(GridView1.Rows(e.RowIndex).Cells(2).Text)
        'MsgBox(res.ToString)
        Try
            cmd = New SqlCommand("select Qty from tbl_product where Product_Name=@pno", con)
            cmd.Parameters.Add(New SqlParameter("@pno", Convert.ToString(res.ToString)))
            con.Open()
            q1 = Convert.ToInt32(cmd.ExecuteScalar)
            con.Close()

            ' MsgBox(q1.ToString)
            Dim t1 As TextBox = (GridView1.Rows(e.RowIndex).Cells(5).FindControl("t1"))
            ' MsgBox(t1.Text)
            Dim price As Integer = Convert.ToDouble(GridView1.Rows(e.RowIndex).Cells(3).Text)
            'MsgBox(price)
            q2 = Convert.ToInt32(t1.Text)
            'q2 = GridView1.Rows(e.RowIndex).Cells(6).Text
            If q2 <= q1 Then
                Dim cmd1 As New SqlCommand("update tbl_cart set Qty=@q1,SubTotal=@st where Product_Name=@pid", con)
                cmd1.Parameters.Add(New SqlParameter("@q1", Convert.ToInt32(q2)))
                cmd1.Parameters.Add(New SqlParameter("@pid", Convert.ToString(res.ToString)))
                cmd1.Parameters.Add(New SqlParameter("@st", Convert.ToDouble(q2 * price)))
                con.Open()
                cmd1.ExecuteNonQuery()
                con.Close()
            Else
                MsgBox("Not that much qty available", MsgBoxStyle.OkOnly, "Place Order")
                GridView1.Rows(e.RowIndex).Cells(5).Text = 1
                Dim cmd1 As New SqlCommand("update tbl_cart set Qty=@q1 where Product_Name=@pid", con)
                cmd1.Parameters.Add(New SqlParameter("@q1", ("1")))
                cmd1.Parameters.Add(New SqlParameter("@pid", Convert.ToString(res.ToString)))
                con.Open()
                cmd1.ExecuteNonQuery()
                con.Close()
            End If
        Catch ex As Exception
        End Try
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("purchase.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'MsgBox(Session("product"))     
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Try
            cmd = New SqlCommand("select * from tbl_cart", con)
            da = New SqlDataAdapter(cmd)
            da.Fill(ds, "tbl_cart")
            con.Open()
            cmd.ExecuteScalar()
            con.Close()
            cmd = New SqlCommand("select * from tbl_product ", con)
            da = New SqlDataAdapter(cmd)
            da.Fill(ds, "tbl_product")
            con.Open()
            cmd.ExecuteScalar()
            con.Close()
            For j As Integer = 0 To ds.Tables("tbl_cart").Rows.Count - 1
                For i As Integer = 0 To ds.Tables("tbl_product").Rows.Count - 1
                    If ds.Tables("tbl_product").Rows(i).Item(0) = ds.Tables("tbl_cart").Rows(j).Item(1) Then
                        Dim res As Integer = ds.Tables("tbl_product").Rows(j).Item(3) - ds.Tables("tbl_cart").Rows(j).Item(4)
                        ' Dim str As String = ds.Tables("tbl_product").Rows(j).Item(3)
                        cmd = New SqlCommand("update tbl_product set Qty=@qt where Product_No=@st", con)
                        cmd.Parameters.Add(New SqlParameter("@qt", Convert.ToInt32(res.ToString)))
                        cmd.Parameters.Add(New SqlParameter("@st", Convert.ToInt32(ds.Tables("tbl_product").Rows(i).Item(0))))
                        con.Open()
                        cmd.ExecuteNonQuery()
                        con.Close()
                    End If
                Next
            Next
            cnt1 = cnt1 * cnt
            cnt += 1
            Session("ono") = val
            ' MsgBox(Session("ono"))
            For j As Integer = 0 To ds.Tables("tbl_cart").Rows.Count - 1
                Dim res As String = ds.Tables("tbl_cart").Rows(j).Item(2)
                Dim res1 As Integer = ds.Tables("tbl_cart").Rows(j).Item(4)
                cmd = New SqlCommand("insert into tbl_order values(@ono,@odt,@uid,@pno,@qty)", con)
                cmd.Parameters.Add(New SqlParameter("@ono", Convert.ToInt32(val.ToString)))
                cmd.Parameters.Add(New SqlParameter("@odt", Convert.ToDateTime(Date.Now)))
                cmd.Parameters.Add(New SqlParameter("@uid", Convert.ToInt32(Session("User_Id"))))
                cmd.Parameters.Add(New SqlParameter("@pno", Convert.ToString(res.ToString)))
                cmd.Parameters.Add(New SqlParameter("@qty", Convert.ToInt32(res1.ToString)))
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            Next

            For j As Integer = 0 To ds.Tables("tbl_cart").Rows.Count - 1
                Dim res As String = ds.Tables("tbl_cart").Rows(j).Item(2)
                Dim res1 As Integer = ds.Tables("tbl_cart").Rows(j).Item(4)
                Dim pr1 As Integer = ds.Tables("tbl_cart").Rows(j).Item(3)
                cmd = New SqlCommand("insert into tbl_bill values(@bno,@pnm,@bdt,@ono,@uid,@qty,@pr,@tot)", con)
                cmd.Parameters.Add(New SqlParameter("@bdt", Convert.ToDateTime(Date.Now)))
                cmd.Parameters.Add(New SqlParameter("@uid", Convert.ToInt32(Session("User_Id"))))
                cmd.Parameters.Add(New SqlParameter("@bno", Convert.ToInt32("10" + val.ToString)))
                cmd.Parameters.Add(New SqlParameter("@pnm", Convert.ToString(res.ToString)))
                cmd.Parameters.Add(New SqlParameter("@ono", Convert.ToInt32(val.ToString)))
                cmd.Parameters.Add(New SqlParameter("@qty", Convert.ToInt32(res1.ToString)))
                cmd.Parameters.Add(New SqlParameter("@pr", Convert.ToInt32(pr1.ToString)))
                cmd.Parameters.Add(New SqlParameter("@tot", Convert.ToInt32(res1 * pr1)))
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            Next
            Response.Redirect("bill1.aspx")
        Catch ex As Exception
        End Try
    End Sub
End Class
