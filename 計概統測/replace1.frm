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
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   855
      Left            =   3480
      TabIndex        =   1
      Top             =   2160
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   735
      Left            =   3360
      TabIndex        =   0
      Top             =   3480
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Open App.Path & "/104.txt" For Input As #1
Open App.Path & "/104app.txt" For Output As #2

While Not EOF(1)
 Line Input #1, B
' Print a

c = Replace(B, "(A)", "',ans1:'")
D = Replace(c, "(B)", "',ans2:'")
e = Replace(D, "(C)", "',ans3:'")
f = Replace(e, "(D)", "',ans4:'")
 D = Mid(f, 1, 1)
If D = "A" Then B = Replace(f, "A", "{ans:1,que:'", 1, 1)
If D = "B" Then B = Replace(f, "B", "{ans:2,que:'", 1, 1)
If D = "C" Then B = Replace(f, "C", "{ans:3,que:'", 1, 1)
If D = "D" Then B = Replace(f, "D", "{ans:4,que:'", 1, 1)
B = B & "'},"

Print #2, B
Wend

End Sub

Private Sub Command2_Click()
D = "CJUDHECYWW"
B = Replace(D, "C", "C1", 1)
Print B
End Sub
