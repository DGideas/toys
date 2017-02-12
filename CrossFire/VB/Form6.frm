VERSION 5.00
Begin VB.Form Form6 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "IP Concert"
   ClientHeight    =   1320
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4995
   ControlBox      =   0   'False
   Icon            =   "Form6.frx":0000
   LinkTopic       =   "Form6"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1320
   ScaleWidth      =   4995
   StartUpPosition =   2  '屏幕中心
   Begin VB.Timer Timer2 
      Interval        =   20000
      Left            =   4080
      Top             =   0
   End
   Begin VB.CommandButton Command2 
      Caption         =   "重试"
      Height          =   255
      Left            =   2760
      TabIndex        =   3
      Top             =   960
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Timer Timer1 
      Interval        =   10000
      Left            =   4560
      Top             =   0
   End
   Begin VB.CommandButton Command1 
      Caption         =   "取消"
      Height          =   255
      Left            =   3840
      TabIndex        =   2
      Top             =   960
      Width           =   975
   End
   Begin VB.Label zt 
      Caption         =   "请稍后..."
      Height          =   255
      Left            =   360
      TabIndex        =   1
      Top             =   600
      Width           =   3375
   End
   Begin VB.Label ip 
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2295
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ipnumber As String

Private Sub Command1_Click()
End
End Sub

Private Sub Command2_Click()
Form2.Show
Unload Me
End Sub

Private Sub Form_Load()
ipnumber = Form2.Text1.Text
ip.Caption = ipnumber
Unload Form2
End Sub

Private Sub Timer1_Timer()
MsgBox "超时提示:您可以重试", vbInformation, "超时提示"
Command2.Visible = True
Timer1.Interval = 0
End Sub

Private Sub Timer2_Timer()
MsgBox "CF客户端错误提示:15_5:连接时发生未知错误,CF退出", vbCritical, "CF&TP"
End
End Sub
