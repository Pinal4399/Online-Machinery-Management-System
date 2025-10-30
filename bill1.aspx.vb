Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports CrystalDecisions.CrystalReports
Imports CrystalDecisions.CrystalReports.Engine
Imports CrystalDecisions.Shared
Partial Class bill1
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim rptDoc As New ReportDocument
    Dim ds As New DataSet1
    Dim dt As New DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cmd = New SqlCommand("select * from tbl_bill where Order_No=@o1", con)
        cmd.Parameters.Add(New SqlParameter("@o1", Convert.ToInt32(Session("ono"))))
        da = New SqlDataAdapter(cmd)
        con.Open()
        da.Fill(dt)
        con.Close()
        ds.Tables(0).Merge(dt)
        rptDoc.Load(Server.MapPath("bill1.rpt"))
        rptDoc.SetDataSource(ds)
        CrystalReportViewer1.ReportSource = rptDoc
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            cmd = New SqlCommand("select * from tbl_bill where Order_No=@ono ", con)
            cmd.Parameters.Add(New SqlParameter("@ono", Convert.ToInt32(Session("ono"))))
            da = New SqlDataAdapter(cmd)
            da.Fill(ds, "tbl_bill")
            con.Open()
            cmd.ExecuteScalar()
            con.Close()
        Catch ex As Exception
        End Try
        For j As Integer = 0 To ds.Tables("tbl_bill").Rows.Count - 1
            cmd = New SqlCommand("insert into tbl_account_sales values(@pnm,@uid,@bno,@tot)", con)
            cmd.Parameters.Add(New SqlParameter("@pnm", Convert.ToString(ds.Tables("tbl_bill").Rows(j).Item(2))))
            cmd.Parameters.Add(New SqlParameter("@uid", Convert.ToInt32(ds.Tables("tbl_bill").Rows(j).Item(5))))
            cmd.Parameters.Add(New SqlParameter("@bno", Convert.ToInt32(ds.Tables("tbl_bill").Rows(j).Item(1))))
            cmd.Parameters.Add(New SqlParameter("@tot", Convert.ToDecimal(ds.Tables("tbl_bill").Rows(j).Item(8))))
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
        Next
        Try
            cmd = New SqlCommand("select * from tbl_bill where Order_No=@ono ", con)
            cmd.Parameters.Add(New SqlParameter("@ono", Convert.ToInt32(Session("ono"))))
            da = New SqlDataAdapter(cmd)
            da.Fill(ds, "bill_tb")
            con.Open()
            cmd.ExecuteScalar()
            con.Close()
        Catch ex As Exception
        End Try
        For j As Integer = 0 To ds.Tables("bill_tb").Rows.Count - 1
            cmd = New SqlCommand("insert into tbl_sales values(@ono,@uid,@pno,@sdt,@qty,@price)", con)
            cmd.Parameters.Add(New SqlParameter("@ono", Convert.ToInt32(Session("ono"))))
            cmd.Parameters.Add(New SqlParameter("@uid", Convert.ToInt32(ds.Tables("bill_tb").Rows(j).Item(5))))
            cmd.Parameters.Add(New SqlParameter("@pno", Convert.ToString(ds.Tables("bill_tb").Rows(j).Item(2))))
            cmd.Parameters.Add(New SqlParameter("@sdt", Convert.ToDateTime(Date.Now)))
            cmd.Parameters.Add(New SqlParameter("@qty", Convert.ToInt32(ds.Tables("bill_tb").Rows(j).Item(6))))
            cmd.Parameters.Add(New SqlParameter("@price", Convert.ToDecimal(ds.Tables("bill_tb").Rows(j).Item(7))))
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
        Next
        Try
            cmd = New SqlCommand("delete from tbl_cart", con)
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Response.Redirect("welcome.aspx")
        Catch ex As Exception
        End Try
    End Sub
End Class
