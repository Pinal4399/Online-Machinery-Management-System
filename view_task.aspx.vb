Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Imports System.Web.UI.Control
Partial Class view_task
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con1").ConnectionString)
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If RadioButton2.Checked Then
            Try
                Dim cmd = New SqlCommand("update tbl_task set Task_Completion_Date=@td,Status=@st  where Complaint_No=@cno", con)
                cmd.Parameters.Add(New SqlParameter("@cno", Convert.ToInt32(Label2.Text)))
                cmd.Parameters.Add(New SqlParameter("@td", Convert.ToDateTime(Date.Now)))
                cmd.Parameters.Add(New SqlParameter("@st", Convert.ToString(RadioButton2.Text)))
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                cmd = New SqlCommand("delete from tbl_task1 where Complaint_No=@cno", con)
                cmd.Parameters.Add(New SqlParameter("@cno", Convert.ToInt32(Label2.Text)))
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            Catch ex As Exception
            End Try
        Else
            Try
                Dim cmd = New SqlCommand("update tbl_task set Status=@st  where Complaint_No=@cno", con)
                cmd.Parameters.Add(New SqlParameter("@cno", Convert.ToInt32(Label2.Text)))
                'cmd.Parameters.Add(New SqlParameter("@td", Convert.ToDateTime(Date.Now)))
                cmd.Parameters.Add(New SqlParameter("@st", Convert.ToString(RadioButton1.Text)))
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            Catch ex As Exception
            End Try
        End If
       
        Response.Redirect("welcometechnician.aspx")
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Panel1.Visible = True
        Label2.Text = GridView1.SelectedRow.Cells(1).Text
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Panel1.Visible = False
    End Sub
End Class
