Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports CrystalDecisions.CrystalReports
Imports CrystalDecisions.CrystalReports.Engine
Imports CrystalDecisions.Shared
Partial Class feedbacko
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim rptDoc As New ReportDocument
    Dim ds As New DataSet1
    Dim dt As New DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            cmd = New SqlCommand("select * from tbl_feedback ", con)
            'cmd.Parameters.Add(New SqlParameter("@o1", Convert.ToInt32(Session("ono"))))
            da = New SqlDataAdapter(cmd)
            con.Open()
            da.Fill(dt)
            con.Close()
            ds.Tables(4).Merge(dt)
            rptDoc.Load(Server.MapPath("feedback.rpt"))
            rptDoc.SetDataSource(ds)
            CrystalReportViewer1.ReportSource = rptDoc
        Catch ex As Exception
        End Try
    End Sub
End Class
