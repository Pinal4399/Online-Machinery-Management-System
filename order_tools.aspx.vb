Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class order__tools
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        clearcontrols()
    End Sub
    Sub clearcontrols()

        txtprice.Text = ""
        txtqty.Text = ""
    End Sub
   

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Try
            cmd = New SqlCommand("insert into tbl_supplier_order values(@dt,@sno,@qty,@price,@tnm,@eno)", con)
            'cmd.Parameters.Add(New SqlParameter("@sono", Convert.ToInt32(txtsono.Text)))
            cmd.Parameters.Add(New SqlParameter("@dt", Convert.ToDateTime(Date.Now)))
            cmd.Parameters.Add(New SqlParameter("@sno", Convert.ToString(ddlsno.SelectedValue)))
            cmd.Parameters.Add(New SqlParameter("@qty", Convert.ToString(txtqty.Text)))
            cmd.Parameters.Add(New SqlParameter("@price", Convert.ToString(txtprice.Text)))
            cmd.Parameters.Add(New SqlParameter("@tnm", Convert.ToString(DropDownList1.SelectedValue)))
            cmd.Parameters.Add(New SqlParameter("@eno", Session("User_Id")))
            con.Open()
            Dim cnt As Integer = cmd.ExecuteNonQuery()
            If cnt = 1 Then
                MsgBox("Order Tools to Supplier", MsgBoxStyle.OkOnly, " Add  order")
            End If
            con.Close()
            cmd = New SqlCommand("insert into tbl_supplier_order1 values(@dt,@sno,@qty,@price,@tnm,@eno)", con)
            'cmd.Parameters.Add(New SqlParameter("@sono", Convert.ToInt32(txtsono.Text)))
            cmd.Parameters.Add(New SqlParameter("@dt", Convert.ToDateTime(Date.Now)))
            cmd.Parameters.Add(New SqlParameter("@sno", Convert.ToString(ddlsno.SelectedValue)))
            cmd.Parameters.Add(New SqlParameter("@qty", Convert.ToString(txtqty.Text)))
            cmd.Parameters.Add(New SqlParameter("@price", Convert.ToString(txtprice.Text)))
            cmd.Parameters.Add(New SqlParameter("@tnm", Convert.ToString(DropDownList1.SelectedValue)))
            cmd.Parameters.Add(New SqlParameter("@eno", Session("User_Id")))
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Response.Redirect("branch.aspx")
        Catch ex As Exception
        End Try
        clearcontrols()
    End Sub
End Class
