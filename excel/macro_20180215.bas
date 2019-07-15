Attribute VB_Name = "Module1"
Sub �s�ǉ�()
Attribute �s�ǉ�.VB_Description = "�s�ǉ�"
Attribute �s�ǉ�.VB_ProcData.VB_Invoke_Func = "i\n14"
'
' �s�ǉ� Macro
' �s�ǉ�
'
' Keyboard Shortcut: Ctrl+i
'
    Selection.Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
End Sub

Sub �I���V�[�g�R�s�[()
'
' �I���V�[�g�R�s�[ Macro
' �}�N���L�^�� : 2011/12/27  ���[�U�[�� : s33606
'
' Keyboard Shortcut: Ctrl+Shift+C
'
    ActiveSheet.Copy After:=Sheets(ActiveWorkbook.Worksheets.Count)
    Range("A1").Select
End Sub

Sub �Z���͈͑S�̂Ɍr��()
'
' �Z���͈͑S�̂Ɍr�� Macro
' �}�N���L�^�� : 2011/12/28  ���[�U�[�� : s33606
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
Sub �Z���͈͑S�̂Ɍr������()
'
' �Z���͈͑S�̂Ɍr�� Macro
' �}�N���L�^�� : 2011/12/28  ���[�U�[�� : s33606
'
' Keyboard Shortcut: Ctrl+Shift+O
'
    With Selection.Borders
        .LineStyle = xlNone
    End With


End Sub

Sub �l�\��t��()
'
' �l�\��t�� Macro
' �}�N���L�^�� : 2011/12/27  ���[�U�[�� : s33606
'
' Keyboard Shortcut: Ctrl+Shift+V
'
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
End Sub
Sub �I�u�W�F�N�g�S�I��()
'
' �I�u�W�F�N�g�S�I�� Macro
' �}�N���L�^�� : 2011/12/27  ���[�U�[�� : s33606 �A�N�e�B�u�V�[�g���̑S�I�u�W�F�N�g��I��
'
' Keyboard Shortcut: Ctrl+Shift+A
'
    ActiveSheet.DrawingObjects.Select

End Sub

Sub �Ŕw��()
'
' �Ŕw�� Macro
' �}�N���L�^�� : 2012/1/4  ���[�U�[�� : s33606
'
' Keyboard Shortcut: Ctrl+Shift+B
'
    Selection.ShapeRange.ZOrder msoSendToBack
End Sub
Sub Module���o()
  ' �g�p�p�r�FVBA�̏C�������m�F�p
  
  ' VBA ���W���[���̏����o��
  Dim Project, objxl As Object
  Dim DirName As String
  Const Path As String = "C:\tmp\"

  'Top�f�B���N�g���쐬
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


Sub �s�폜()
Attribute �s�폜.VB_Description = "�s�폜"
Attribute �s�폜.VB_ProcData.VB_Invoke_Func = "D\n14"
'
' �s�폜 Macro
' �s�폜
'

'
    Selection.Delete Shift:=xlUp
End Sub
