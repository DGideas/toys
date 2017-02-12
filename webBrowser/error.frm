VERSION 5.00
Begin VB.Form error 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "抱歉"
   ClientHeight    =   3090
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5370
   Icon            =   "error.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3090
   ScaleWidth      =   5370
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton Command1 
      Caption         =   "&OK"
      Height          =   495
      Left            =   2280
      TabIndex        =   3
      Top             =   2400
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   1095
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Text            =   "error.frx":212A
      Top             =   1080
      Width           =   5175
   End
   Begin VB.Label Label2 
      Caption         =   "作者:梦想者WANTWIZ"
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   2280
      Width           =   1935
   End
   Begin VB.Label Label1 
      Caption         =   "王万霖老人版浏览器:崩溃了。"
      BeginProperty Font 
         Name            =   "楷体_GB2312"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   960
      TabIndex        =   0
      Top             =   240
      Width           =   4335
   End
   Begin VB.Image Image1 
      Height          =   735
      Left            =   120
      Picture         =   "error.frx":21F0
      Stretch         =   -1  'True
      Top             =   120
      Width           =   735
   End
End
Attribute VB_Name = "error"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
End
End Sub

Private Sub Form_Load()
goonline.Enabled = False
weblab.Enabled = False
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub
