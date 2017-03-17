VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4890
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   6405
   LinkTopic       =   "Form1"
   ScaleHeight     =   4890
   ScaleWidth      =   6405
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command4 
      Caption         =   "second-putans"
      Height          =   1215
      Left            =   2400
      TabIndex        =   3
      Top             =   600
      Width           =   1695
   End
   Begin VB.CommandButton Command3 
      Caption         =   "fouth要檢查斷行"
      Height          =   975
      Left            =   360
      TabIndex        =   2
      Top             =   3120
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "first按下檢查斷行"
      Height          =   975
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "third"
      Height          =   1095
      Left            =   240
      TabIndex        =   0
      Top             =   1680
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim y

Private Sub Command1_Click()
y = 103
Open App.Path & "/" & y & "queans.txt" For Input As #1
Open App.Path & "/" & y & "app.txt" For Output As #2

While Not EOF(1)
 Line Input #1, b
' Print a

c = Replace(b, "(A)", "',ans1:'")
d = Replace(c, "(B)", "',ans2:'")
e = Replace(d, "(C)", "',ans3:'")
f = Replace(e, "(D)", "',ans4:'")
 d = Mid(f, 1, 1)
If d = "A" Then b = Replace(f, "A", "{ans:1,que:'", 1, 1)
If d = "B" Then b = Replace(f, "B", "{ans:2,que:'", 1, 1)
If d = "C" Then b = Replace(f, "C", "{ans:3,que:'", 1, 1)
If d = "D" Then b = Replace(f, "D", "{ans:4,que:'", 1, 1)
b = b & "'},"

Print #2, b
Wend
Close (1)
Close (2)

End Sub

Private Sub Command2_Click()
y = 103
k = 1
Open App.Path & "/" & y & ".txt" For Input As #1
Open App.Path & "/" & y & "que.txt" For Output As #2

While Not EOF(1)
 Input #1, b

 s = s & b
c = InStr(1, s, "。")
If c <> 0 Then
'Print s


's = t & s
Print #2, s
'ansk = ansk + 1
s = ""
'k = k + 1
End If

Wend
Close (1)
Close (2)
'Close (3)
End Sub

Private Sub Command3_Click()
y = 103
Open App.Path & "/" & y & "queimg.txt" For Input As #3
Line Input #3, s
Close (3)
's = "27,33,39" '圖案題號
b = Split(s, ",")
Open App.Path & "/" & y & "app.txt" For Input As #1
Open App.Path & "/" & y & "appimg.txt" For Output As #2

While Not EOF(1)
Line Input #1, a
k = k + 1
For i = 0 To UBound(b)
If k = Val(b(i)) - 25 Then
a = Replace(a, "},", ",img:'104" & b(i) & ".png'" & "},")
End If
Next
Print #2, a
Wend
Close (1)
Close (2)

End Sub

Private Sub Command4_Click()
y = 103
Open App.Path & "/" & y & "que.txt" For Input As #1
Open App.Path & "/" & y & "queans.txt" For Output As #2
Open App.Path & "/" & y & "ans.txt" For Input As #3
ansk = 26

While Not EOF(3)
Line Input #3, ansa
ans = ans & ansa
Wend
While Not EOF(1)
Line Input #1, a
t = InStr(1, ans, ansk)
b = Mid(ans, t + 4, 1)
a = b & a
Print #2, a
ansk = ansk + 1
Wend

'Print ans
End Sub
