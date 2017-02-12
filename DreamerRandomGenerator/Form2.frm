VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   0  'None
   Caption         =   "Microsoft MFC 基础类应用程序"
   ClientHeight    =   5595
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9690
   LinkTopic       =   "Form2"
   ScaleHeight     =   5595
   ScaleWidth      =   9690
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin VB.Timer Timer1 
      Left            =   7800
      Top             =   2160
   End
   Begin VB.CommandButton Command3 
      Caption         =   "GO!"
      Height          =   735
      Left            =   5520
      TabIndex        =   6
      Top             =   3720
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   270
      Left            =   3600
      TabIndex        =   5
      Text            =   "50"
      Top             =   3960
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "开源与支持"
      Height          =   375
      Left            =   1560
      TabIndex        =   2
      Top             =   480
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "批量抽号(新)"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   480
      Width           =   1455
   End
   Begin VB.Label Label3 
      Caption         =   "人数(最大值):"
      Height          =   255
      Left            =   2400
      TabIndex        =   4
      Top             =   3960
      Width           =   1455
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Caption         =   ":)"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   72
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   2520
      TabIndex        =   3
      Top             =   1680
      Width           =   5175
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "中国程序员论坛"
      Height          =   255
      Left            =   7440
      TabIndex        =   1
      Top             =   1200
      Width           =   1935
   End
   Begin VB.Image Image3 
      Height          =   735
      Left            =   7440
      Picture         =   "Form2.frx":0000
      Stretch         =   -1  'True
      Top             =   480
      Width           =   1935
   End
   Begin VB.Image Image2 
      Height          =   326
      Left            =   8880
      Picture         =   "Form2.frx":776A
      Stretch         =   -1  'True
      Top             =   0
      Width           =   675
   End
   Begin VB.Image Image1 
      Height          =   5595
      Left            =   0
      Picture         =   "Form2.frx":7E34
      Stretch         =   -1  'True
      Top             =   0
      Width           =   9705
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim max1 As Long

Private Sub Command1_Click()
Form4.Show
End Sub

Private Sub Command2_Click()
Form3.Show
End Sub

Private Sub Command3_Click()
max1 = Text1.Text
If Command3.Caption = "GO!" Then
Timer1.Interval = 1
Command3.Caption = "STOP"
Else
Timer1.Interval = 0
Command3.Caption = "GO!"
End If
End Sub

Private Sub Image2_Click()
End
End Sub

Private Sub Timer1_Timer()
Dim tempnum As Long
tempnum = Rnd * max1 + 1
If tempnum = max1 + 1 Then
tempnum = 1
End If
Label1.Caption = tempnum
End Sub
