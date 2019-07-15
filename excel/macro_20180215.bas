Attribute VB_Name = "Module1"
Sub 行追加()
Attribute 行追加.VB_Description = "行追加"
Attribute 行追加.VB_ProcData.VB_Invoke_Func = "i\n14"
'
' 行追加 Macro
' 行追加
'
' Keyboard Shortcut: Ctrl+i
'
    Selection.Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
End Sub

Sub 選択シートコピー()
'
' 選択シートコピー Macro
' マクロ記録日 : 2011/12/27  ユーザー名 : s33606
'
' Keyboard Shortcut: Ctrl+Shift+C
'
    ActiveSheet.Copy After:=Sheets(ActiveWorkbook.Worksheets.Count)
    Range("A1").Select
End Sub

Sub セル範囲全体に罫線()
'
' セル範囲全体に罫線 Macro
' マクロ記録日 : 2011/12/28  ユーザー名 : s33606
'
' Keyboard Shortcut: Ctrl+O
'
    Selection.Borders(xlDiagonalDown).LineStyle = xlNone
    Selection.Borders(xlDiagonalUp).LineStyle = xlNone
    With Selection.Borders
        .LineStyle = xlContinuous
        .Weight = xlThin
        .ColorIndex = xlAutomatic
    End With


End Sub
Sub セル範囲全体に罫線解除()
'
' セル範囲全体に罫線 Macro
' マクロ記録日 : 2011/12/28  ユーザー名 : s33606
'
' Keyboard Shortcut: Ctrl+Shift+O
'
    With Selection.Borders
        .LineStyle = xlNone
    End With


End Sub

Sub 値貼り付け()
'
' 値貼り付け Macro
' マクロ記録日 : 2011/12/27  ユーザー名 : s33606
'
' Keyboard Shortcut: Ctrl+Shift+V
'
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
End Sub
Sub オブジェクト全選択()
'
' オブジェクト全選択 Macro
' マクロ記録日 : 2011/12/27  ユーザー名 : s33606 アクティブシート内の全オブジェクトを選択
'
' Keyboard Shortcut: Ctrl+Shift+A
'
    ActiveSheet.DrawingObjects.Select

End Sub

Sub 最背面()
'
' 最背面 Macro
' マクロ記録日 : 2012/1/4  ユーザー名 : s33606
'
' Keyboard Shortcut: Ctrl+Shift+B
'
    Selection.ShapeRange.ZOrder msoSendToBack
End Sub
Sub Module書出()
  ' 使用用途：VBAの修正差分確認用
  
  ' VBA モジュールの書き出し
  Dim Project, objxl As Object
  Dim DirName As String
  Const Path As String = "C:\tmp\"

  'Topディレクトリ作成
  If Dir(Path, vbDirectory) = "" Then
    MkDir Path
  End If
  
  For Each objxl In Application.Workbooks
    If objxl.Name = "PERSONAL.XLSB" Or objxl.Name = "B" Then
      GoTo Continue
    End If
      
    DirName = Path & Left(objxl.Name, Len(objxl.Name) - 4) & "\"
    MkDir DirName
    For Each Project In objxl.VBProject.VBComponents
      Project.Export DirName & Project.Name & ".bas"
    Next
Continue:
  Next
End Sub


Sub 行削除()
Attribute 行削除.VB_Description = "行削除"
Attribute 行削除.VB_ProcData.VB_Invoke_Func = "D\n14"
'
' 行削除 Macro
' 行削除
'

'
    Selection.Delete Shift:=xlUp
End Sub
