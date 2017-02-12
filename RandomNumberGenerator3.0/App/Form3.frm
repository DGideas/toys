VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "标准抽号"
   ClientHeight    =   5085
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   9285
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5085
   ScaleWidth      =   9285
   StartUpPosition =   2  '屏幕中心
   Begin VB.Timer Timer1 
      Left            =   6600
      Top             =   960
   End
   Begin VB.CommandButton Command1 
      Caption         =   "抽取"
      Height          =   495
      Left            =   5160
      TabIndex        =   3
      Top             =   2760
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Height          =   270
      Left            =   2400
      MaxLength       =   6
      TabIndex        =   1
      Text            =   "50"
      Top             =   2880
      Width           =   2415
   End
   Begin VB.Label Label3 
      BackColor       =   &H00000000&
      Caption         =   $"Form3.frx":0000
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9.75
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1215
      Left            =   120
      TabIndex        =   4
      Top             =   3600
      Width           =   8895
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "最大:"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1200
      TabIndex        =   2
      Top             =   2880
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Hello"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   48
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   1695
      Left            =   1920
      TabIndex        =   0
      Top             =   1080
      Width           =   5895
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Command1.Caption = "抽取" Then
 Timer1.Interval = 1
 Command1.Caption = "停止"
Else
 Timer1.Interval = 0
 Command1.Caption = "抽取"
End If
End Sub

Private Sub Timer1_Timer()
 Dim num As Long
 Dim max As Long
 max = Text1.Text
 num = Rnd * max + 1
 If num = max + 1 Then
  num = 1
 End If
 Label1.Caption = num
End Sub
