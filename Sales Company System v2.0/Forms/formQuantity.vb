Public Class formQuantity

    Private Sub formQuantity_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        FormCasher.barcodeTB.Text = ""
        FormCasher.barcodeTB.Focus()
        FormCasher.DataGridView1.ClearSelection()
    End Sub

    Private Sub formQuantity_KeyDown(sender As Object, e As KeyEventArgs) Handles Me.KeyDown
        If e.KeyCode = Keys.Enter Then
            e.Handled = True
            loginBtn.PerformClick()
        End If
    End Sub

    Private Sub formQuantity_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        quantityTB.Focus()
        Me.KeyPreview = True
    End Sub

    Private Sub loginBtn_Click(sender As Object, e As EventArgs) Handles loginBtn.Click
        quantity = quantityTB.Text
        quantityCalculation()
    End Sub

    Private Sub quantityTB_TextChanged(sender As Object, e As EventArgs) Handles quantityTB.TextChanged
        Dim theText As String = quantityTB.Text
        Dim Letter As String
        Dim SelectionIndex As Integer = quantityTB.SelectionStart
        Dim Change As Integer

        For x As Integer = 0 To quantityTB.Text.Length - 1
            Letter = quantityTB.Text.Substring(x, 1)
            If charactersallowed.Contains(Letter) = False Then
                theText = theText.Replace(Letter, String.Empty)
                Change = 1
            End If
        Next

        quantityTB.Text = theText
        quantityTB.Select(SelectionIndex - Change, 0)
    End Sub
End Class