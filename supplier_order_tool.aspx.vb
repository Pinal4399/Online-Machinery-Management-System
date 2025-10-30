Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class supplier_order_tool
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' res = Session("User_Id")
        ' cmd = New SqlCommand("select Supplier_No from tbl_Supplier where Employee_No=@res", con)
        ' cmd.Parameters.Add(New SqlParameter("@res", Session("User_Id")))
        ' con.Open()
        ' Dim dr As SqlDataReader
        'dr = cmd.ExecuteReader()
        ' If dr.Read Then
        'GridView1.SelectedValue.ToString()
        ' End If
    End Sub
End Class




