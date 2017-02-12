VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "选择服务器"
   ClientHeight    =   7200
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   8655
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7200
   ScaleWidth      =   8655
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton Command1 
      Caption         =   "好"
      Height          =   255
      Left            =   4440
      TabIndex        =   2
      Top             =   6480
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Height          =   270
      Left            =   1680
      TabIndex        =   1
      Text            =   "192.168.1.1"
      Top             =   6480
      Width           =   2535
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "或:输入服务器IP号"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   6120
      Width           =   1815
   End
   Begin VB.Image Image1 
      Height          =   5895
      Left            =   0
      Picture         =   "Form2.frx":1042
      Stretch         =   -1  'True
      Top             =   0
      Width           =   8655
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public ipnum As String
Private Sub Command1_Click()
ipnum = Text1.Text
Unload Form4
Form6.Show
End Sub

Private Sub Image1_Click()
Unload Form4
Form3.Show
Unload Me
End Sub
