VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4860
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   6675
   LinkTopic       =   "Form1"
   ScaleHeight     =   4860
   ScaleWidth      =   6675
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   1215
      Left            =   1680
      TabIndex        =   1
      Top             =   3120
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   1095
      Left            =   1320
      TabIndex        =   0
      Top             =   1440
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Open App.Path & "/accounting.txt" For Input As #1

While Not EOF(1)
 Line Input #1, a
 t = t + 1
Wend
Close (1)
ReDim q(t, 5)
Open App.Path & "/accounting.txt" For Input As #1
k = 0
While Not EOF(1)
k = k + 1
 Line Input #1, a
 b = Split(a, ",")
 q(k, 1) = b(1)
 q(k, 2) = b(0)
Wend
ReDim numb(t) As Integer
For i = 1 To t
 numb(i) = i
Next
Min = 1: Max = t

For i = 1 To t
numb(i) = numb(Min)
 While m < 3
 Min = Min + 1
  Randomize
  x = Int(Rnd() * (Max - Min + 1)) + Min
  s = s & numb(x) & ";"
  m = m + 1
  numb(x) = numb(Min)
  
  Wend
  
  'Print s
  h = Split(s, ";")
 q(i, 3) = q(h(0), 2): q(i, 4) = q(h(1), 2): q(i, 5) = q(h(2), 2)
  For p = 1 To t
 numb(p) = p
Next
  m = 0: s = "": Min = 1
Next
Close (1)
Open App.Path & "/accountjson.txt" For Output As #1
Print #1, "["
For i = 1 To t
Randomize
ch = Int(Rnd * (5 - 2 + 1)) + 2
temp = q(i, 2)
q(i, 2) = q(i, ch)
q(i, ch) = temp
ch = ch - 1
 Print #1, "{ans:" & ch & "," & "que:'" & q(i, 1) & "',ans1:'" & q(i, 2) & "',ans2:'" & q(i, 3) & "',ans3:'" & q(i, 4) & "',ans4:'" & q(i, 5) & "'},"
Next
Print #1, "]"
Close (1)
MsgBox "ok!"
End Sub

Function rand(t)
Dim a
a = 3

Dim b(t)


End Function

Private Sub Command2_Click()
Open App.Path & "/iqc.txt" For Input As #1

While Not EOF(1)
k = k + 1
 Line Input #1, a
 b = Split(a, ",")
 s = s & "'" & b(1) & "," & b(2) & "'" & ","
Wend
Open App.Path & "/filljson.txt" For Output As #2
Print #2, s

End Sub
