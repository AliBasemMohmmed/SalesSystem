Imports System.Data.SqlClient
Public Class formReceipt

    Private Sub formReceipt_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        addTransaction()
        addCashierLog()
        formPOS.DataGridView1.Rows.Clear()
        accumulatedpayment = 0
        change = 0
        formPOS.totalamountLbl.Text = "0"
        formPOS.vatLbl.Text = "0"
        formPOS.subtotalLbl.Text = "0"
        formPOS.cashtenderedLbl.Text = "0"
        formPOS.changeLbl.Text = "0"
        totalunitprice = 0
        quantity = ""
        vatprice = 0
        newprice = 0
        postotal = 0
        postotalamount = 0
        posvat = 0
        discounted = 0
        newdiscount = 0
        seniordiscount = "NO"
        employeediscount = "NO"
        formPOS.discountLbl.Text = "0"
        formPOS.barcodeTB.Focus()
    End Sub

    Private Sub formReceipt_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try
            dbConnection()
            sql = "SELECT Transaction_ID,Customer_name, Subtotal, Date, Time FROM sales_database"
            cmd = New SqlCommand
            With cmd
                .Connection = conn
                .CommandText = sql
                .Parameters.Clear()
                .ExecuteNonQuery()
            End With
            dt = New DataTable
            da = New SqlDataAdapter
            da.SelectCommand = cmd
            da.Fill(dt)
            If dt.Rows.Count = 0 Then
                MsgBox("No results!")
            Else
                MsgBox("Showing results!")
            End If
            DataGridView1.DataSource = dt
        Catch ex As SqlException
            MsgBox(ex.Message)
        Finally
            conn.Close()
            cmd.Dispose()
        End Try
    End Sub
End Class