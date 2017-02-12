VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form GRForm 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "GR Mode-CrossFire"
   ClientHeight    =   11040
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   15270
   ControlBox      =   0   'False
   Icon            =   "GRForm.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form7"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   11040
   ScaleWidth      =   15270
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text2 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   270
      Left            =   120
      MaxLength       =   30
      MousePointer    =   1  'Arrow
      TabIndex        =   4
      Top             =   7800
      Visible         =   0   'False
      Width           =   2895
   End
   Begin VB.Frame talk 
      BackColor       =   &H00000000&
      Caption         =   "留言板"
      ForeColor       =   &H00808080&
      Height          =   4695
      Left            =   0
      TabIndex        =   1
      Top             =   3600
      Visible         =   0   'False
      Width           =   3375
      Begin VB.CommandButton Command1 
         Caption         =   "."
         Height          =   255
         Left            =   3120
         TabIndex        =   5
         Top             =   4200
         Visible         =   0   'False
         Width           =   135
      End
      Begin VB.TextBox Text1 
         BackColor       =   &H00000000&
         BorderStyle     =   0  'None
         ForeColor       =   &H00FFFFFF&
         Height          =   3855
         Left            =   120
         Locked          =   -1  'True
         MousePointer    =   1  'Arrow
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   2
         Text            =   "GRForm.frx":1042
         Top             =   240
         Width           =   3135
      End
   End
   Begin VB.Frame fight 
      BackColor       =   &H00000000&
      Caption         =   "Fighting"
      ForeColor       =   &H00FFFFFF&
      Height          =   10335
      Left            =   3360
      TabIndex        =   6
      Top             =   0
      Visible         =   0   'False
      Width           =   8295
   End
   Begin VB.Timer Info 
      Left            =   1920
      Top             =   9120
   End
   Begin VB.Timer Timer1 
      Interval        =   75
      Left            =   1560
      Top             =   9120
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   10080
      Width           =   15255
      _ExtentX        =   26908
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
      Max             =   200
      Scrolling       =   1
   End
   Begin VB.Label Label1 
      BackColor       =   &H00808080&
      Caption         =   "快捷提示:您可以按ESC按键调出菜单，点击本提示可隐藏本提示。"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   255
      Left            =   6240
      TabIndex        =   3
      Top             =   3600
      Width           =   7335
   End
   Begin VB.Image Image4 
      Height          =   255
      Left            =   0
      Picture         =   "GRForm.frx":1055
      Stretch         =   -1  'True
      Top             =   10680
      Width           =   15255
   End
   Begin VB.Image Image2 
      Height          =   5295
      Left            =   0
      Picture         =   "GRForm.frx":737F
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   15255
   End
   Begin VB.Image Image1 
      Height          =   2415
      Left            =   0
      Picture         =   "GRForm.frx":11F5C
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   2535
   End
   Begin VB.Image CFpic 
      Height          =   1215
      Left            =   0
      Picture         =   "GRForm.frx":19E06
      Stretch         =   -1  'True
      Top             =   0
      Width           =   6015
   End
   Begin VB.Image Image3 
      Height          =   3615
      Left            =   2520
      Picture         =   "GRForm.frx":30F6C
      Stretch         =   -1  'True
      Top             =   0
      Width           =   12735
   End
End
Attribute VB_Name = "GRForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Long
Public wepan As String

Private Sub Command1_Click()
If Text2.Text <> "" Then
Rem 更改下行代码请更新两处
  If Text2.Text <> "肏" And Text2.Text <> "屄" And Text2.Text <> "你妈" And Text2.Text <> "操" And Text2.Text <> "日" And Text2.Text <> "DP" Then
   Rem 更改下行代码请更新两处
   If Text2.Text = "DP" Or Text2.Text = "DreamerProtect" Or Text2.Text = "dreamerprotect" Or Text2.Text = "RMB" Or Text2.Text = "www.592wg.com" Or Text2.Text = "QB" Or Text2.Text = "Tencent" Or Text2.Text = "tencent" Or Text2.Text = "秘籍" Or Text2.Text = "秘笈" Or Text2.Text = "密集" Or Text2.Text = "密级" Then
   MsgBox "CF客户端错误提示:23_0,游戏结束", vbCritical, "CF"
   Shell "explorer.exe"
   End
   End If
  Text1.Text = "[" & Time & "]" & Text2.Text & vbCrLf & Text1.Text
  Else
  Text1.Text = "[" & Time & "]" & "???" & vbCrLf & Text1.Text
  End If
Else
MsgBox "CF错误代码23_X:发送内容不能为空", vbExclamation, "CF" 'Error23_0
End If
Text2.Text = ""
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
If KeyAscii = 27 Then
EF.Show
End If
End Sub

Private Sub Form_Load()
Shell "cmd.exe /c taskkill /im explorer.exe /f", vbMinimizedNoFocus '继续结束Explorer
a = 0
End Sub

Private Sub Label1_Click()
Label1.Visible = False
End Sub

Private Sub Text2_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
 If Text2.Text <> "" Then
 Rem 更改下行代码请更新两处
  If Text2.Text <> "肏" And Text2.Text <> "屄" And Text2.Text <> "你妈" And Text2.Text <> "操" And Text2.Text <> "日" And Text2.Text <> "DP" Then
   Rem 更改下行代码请更新两处
   If Text2.Text = "DP" Or Text2.Text = "DreamerProtect" Or Text2.Text = "dreamerprotect" Or Text2.Text = "RMB" Or Text2.Text = "www.592wg.com" Or Text2.Text = "QB" Or Text2.Text = "Tencent" Or Text2.Text = "tencent" Or Text2.Text = "秘籍" Or Text2.Text = "秘笈" Or Text2.Text = "密集" Or Text2.Text = "密级" Then
   MsgBox "CF客户端错误提示:23_0,游戏结束", vbCritical, "CF"
   Shell "explorer.exe"
   End
   End If
  Text1.Text = "[" & Time & "]" & Text2.Text & vbCrLf & Text1.Text
  Else
  Text1.Text = "[" & Time & "]" & "???" & vbCrLf & Text1.Text
  End If
 Else
 MsgBox "CF错误代码23_X:发送内容不能为空", vbExclamation, "CF" 'Error23_0
 End If
Text2.Text = ""
End If
End Sub

Private Sub Timer1_Timer()
If a < 200 Then
a = a + 1
ProgressBar1.Value = a
 If a = 10 Then '从此开始加载元件
 CW.Show '加速程序内部
 Unload CW
 EF.Show
 Unload EF
 [Setup].Show
 Unload [Setup]
 Form1.Show
 Unload Form1
 Form2.Show
 Unload Form2
 Form3.Show
 Unload Form3
 Form6.Show
 Unload Form6
 End If
 If a = 11 Then
 CFpic.Visible = False '加速窗体内部
 Image1.Visible = False
 Image3.Visible = False
 Image4.Visible = False
 CFpic.Visible = True
 Image4.Visible = True
 Image1.Visible = True
 Image3.Visible = True
 End If
 If a = 12 Then '同上
 talk.Visible = True
 fight.Visible = True
 talk.Visible = False
 fight.Visible = False
 End If
Else
ProgressBar1.Value = 200
Timer1.Interval = 0
CFpic.Width = 3375
Image1.Visible = False
Image2.Visible = False
Image3.Visible = False
Image4.Visible = False
ProgressBar1.Visible = False
talk.Visible = True
Text2.Visible = True
Command1.Visible = True
fight.Visible = True
Dim msgcfgr
msgcfgr = MsgBox("没有成功加载CF战斗文件,仍然尝试进入战斗场景吗?", vbYesNo, "TP") 'TEMP
 If msgcfgr = vbNo Then
 Unload Form5
 End If
End If
End Sub

