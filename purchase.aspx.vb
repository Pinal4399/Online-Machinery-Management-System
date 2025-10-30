Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Partial Class purchase
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim dt As New DataTable
    Dim pn As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'pn=6
        'Session("product") = 6
        'Label4.Text = Session("product")
        'If IsPostBack = False Then
        '    cmd = New SqlCommand("select * from tbl_product", con)
        '    'cmd.Parameters.Add(New SqlParameter("@eno", Session("User_Id")))
        '    da = New SqlDataAdapter(cmd)
        '    con.Open()
        '    da.Fill(ds, "tbl_product")
        '    DropDownList1.DataSource = ds.Tables("tbl_product")
        '    DropDownList1.DataBind()
        '    DropDownList1.Items.Insert(0, "--Select--")
        '    con.Close()
        'End If
        'cmd = New SqlCommand("select * from tbl_product", con)
        'da = New SqlDataAdapter(cmd)
        'con.Open()
        'da.Fill(dt)
        'DropDownList1.DataSource = dt
        'DropDownList1.DataValueField = dt.Columns("Product_No").ToString()
        'DropDownList1.DataTextField = Convert.ToString(dt.Columns("Product_Name"))
        'DropDownList1.DataBind()
        'DropDownList1.Items.Insert(0, "--Select--")
        'con.Close()

    End Sub
    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Session("product") = DropDownList1.SelectedValue
        Label4.Text = Session("product")
    End Sub
 
    Protected Sub btnclick_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnclick.Click
        Dim qty, price As Integer
        Dim name, Image1 As String
        Try
            cmd = New SqlCommand("select * from tbl_product where Product_No=@pno", con)
            cmd.Parameters.Add(New SqlParameter("@pno", Session("product")))
            con.Open()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                qty = dr.GetInt32(3)
                price = dr.GetDecimal(4)
                name = dr.GetString(1).ToString
                Image1 = dr.GetString(6).ToString
            End If
            dr.Close()
            con.Close()
        Catch ex As Exception
        End Try
        Try
            cmd = New SqlCommand("insert into tbl_cart values(@pno,@pnm,@pr,@qty1,@tot,@img)", con)
            cmd.Parameters.Add(New SqlParameter("@pno", Session("product")))
            cmd.Parameters.Add(New SqlParameter("@pnm", Convert.ToString(name.ToString)))
            cmd.Parameters.Add(New SqlParameter("@pr", Convert.ToDecimal(price)))
            cmd.Parameters.Add(New SqlParameter("@qty1", Convert.ToInt32("1")))
            cmd.Parameters.Add(New SqlParameter("@tot", Convert.ToDecimal(price)))
            cmd.Parameters.Add(New SqlParameter("@img", Convert.ToString(Image1)))
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Response.Redirect("place_order.aspx")
        Catch ex As Exception
        End Try
    End Sub

   
  
End Class
