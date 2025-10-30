Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class pro
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New Data.DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
    End Sub

    Protected Sub SqlDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub

    Protected Sub DataList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DataList1.SelectedIndexChanged

    End Sub
End Class
